# comp_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "539448fec4e14ce543b9f5e5d56e773329b4f6d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:793e0d10-5fa9-fcfe-b155-dcfa8cd478e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3474277e-5d02-00ec-4d72-5bfa634c6b26",
  "kind": "theorem",
  "lexical_name": "comp_assoc",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "comp-assoc--997686db17b38bf5becd69c2",
  "source": {
    "blob": "539448fec4e14ce543b9f5e5d56e773329b4f6d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1288,
    "line": 1248,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:997686db17b38bf5becd69c2bb87173dfe7a3bb18ca86f1c067410ffae166bd4",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3474277e-5d02-00ec-4d72-5bfa634c6b26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1248–1288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_assoc (r : FormalMultilinearSeries 𝕜 G H) (q : FormalMultilinearSeries 𝕜 F G)
    (p : FormalMultilinearSeries 𝕜 E F) : (r.comp q).comp p = r.comp (q.comp p) := by
  ext n v
  /- First, rewrite the two compositions appearing in the theorem as two sums over complicated
    sigma types, as in the description of the proof above. -/
  let f : (Σ a : Composition n, Composition a.length) → H := fun c =>
    r c.2.length (applyComposition q c.2 (applyComposition p c.1 v))
  let g : (Σ c : Composition n, ∀ i : Fin c.length, Composition (c.blocksFun i)) → H := fun c =>
    r c.1.length fun i : Fin c.1.length =>
      q (c.2 i).length (applyComposition p (c.2 i) (v ∘ c.1.embedding i))
  suffices ∑ c, f c = ∑ c, g c by
    simpa +unfoldPartialApp only [FormalMultilinearSeries.comp, sum_apply,
      compAlongComposition_apply, Finset.sum_sigma', applyComposition,
      ContinuousMultilinearMap.map_sum]
  /- Now, we use `Composition.sigmaEquivSigmaPi n` to change
    variables in the second sum, and check that we get exactly the same sums. -/
  rw [← (sigmaEquivSigmaPi n).sum_comp]
  /- To check that we have the same terms, we should check that we apply the same component of
    `r`, and the same component of `q`, and the same component of `p`, to the same coordinate of
    `v`. This is true by definition, but at each step one needs to convince Lean that the types
    one considers are the same, using a suitable congruence lemma to avoid dependent type issues.
    This dance has to be done three times, one for `r`, one for `q` and one for `p`. -/
  apply Finset.sum_congr rfl
  rintro ⟨a, b⟩ _
  dsimp [sigmaEquivSigmaPi]
  -- check that the `r` components are the same. Based on `Composition.length_gather`
  apply r.congr (Composition.length_gather a b).symm
  intro i hi1 hi2
  -- check that the `q` components are the same. Based on `length_sigmaCompositionAux`
  apply q.congr (length_sigmaCompositionAux a b _).symm
  intro j hj1 hj2
  -- check that the `p` components are the same. Based on `blocksFun_sigmaCompositionAux`
  apply p.congr (blocksFun_sigmaCompositionAux a b _ _).symm
  intro k hk1 hk2
  -- finally, check that the coordinates of `v` one is using are the same. Based on
  -- `sizeUpTo_sizeUpTo_add`.
  refine congr_arg v (Fin.ext ?_)
  dsimp [Composition.embedding]
  rw [← add_assoc, ← sizeUpTo_sizeUpTo_add _ _ hi1 hj1]

end FormalMultilinearSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean#L1248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `539448fec4e14ce543b9f5e5d56e773329b4f6d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
