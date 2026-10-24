# comp_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8eca7f6-966d-0799-5f3f-7df70c1198b6",
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
  "slug": "comp-assoc--415e73e5fdd24d67cff1eef1",
  "source": {
    "blob": "3079cda7c5ddc4afcc2dc642adb0e9f39922c0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1228,
    "line": 1188,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:415e73e5fdd24d67cff1eef184d2a31a984a3a36c7612f05104c442af98f4d10",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8eca7f6-966d-0799-5f3f-7df70c1198b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1188–1228.

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
    simpa +unfoldPartialApp only [FormalMultilinearSeries.comp,
      ContinuousMultilinearMap.sum_apply, compAlongComposition_apply, Finset.sum_sigma',
      applyComposition, ContinuousMultilinearMap.map_sum]
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
  rw [sizeUpTo_sizeUpTo_add _ _ hi1 hj1, add_assoc]

end FormalMultilinearSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean#L1188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3079cda7c5ddc4afcc2dc642adb0e9f39922c0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
