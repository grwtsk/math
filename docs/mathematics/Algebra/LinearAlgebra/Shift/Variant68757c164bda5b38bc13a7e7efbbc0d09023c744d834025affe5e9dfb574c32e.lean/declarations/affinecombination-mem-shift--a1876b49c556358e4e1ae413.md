# affineCombination_mem_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6879616f-c34a-63a0-0753-dfdc388ab8a1",
  "kind": "theorem",
  "lexical_name": "affineCombination_mem_shift",
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
  "slug": "affinecombination-mem-shift--a1876b49c556358e4e1ae413",
  "source": {
    "blob": "631de5e102c49fb2f5e6a80323906c2318aab9c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 121,
    "path": "GRWTSK/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1876b49c556358e4e1ae4139934a53802d4de97db21632ee163a9ad1edc8ebd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6879616f-c34a-63a0-0753-dfdc388ab8a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineCombination_mem_shift {ι : Type*} [Fintype ι] [Nontrivial ι]
    (p : ι → P) (i : ι) {w : ι → k} (hw : ∑ i, w i = 1) :
    affineCombination k univ p w ∈ (affineSpan k <| p '' {i}ᶜ).shift (p i) (1 - w i) := by
  cases subsingleton_or_nontrivial k
  · suffices (affineSpan k <| p '' {i}ᶜ) = ⊤ by simp [this]
    have : Subsingleton P := (AddTorsor.subsingleton_iff V P).mp <| Module.subsingleton k V
    simp
  classical
  obtain ⟨j, hj⟩ := exists_ne i
  rw [shift_eq ⟨p j, mem_affineSpan k <| Set.mem_image_of_mem _ hj⟩]
  suffices ∃ q ∈ affineSpan k (p '' {i}ᶜ), w i • (p i -ᵥ p j) +ᵥ q = affineCombination k univ p w by
    simpa
  refine ⟨-(w i • (p i -ᵥ p j)) +ᵥ affineCombination k univ p w, ?_, by simp⟩
  rw [← affineCombination_piSingle k _ p (mem_univ i),
    ← affineCombination_piSingle k _ p (mem_univ j), affineCombination_vsub, ← map_smul, ← map_neg,
    weightedVSub_vadd_affineCombination]
  refine affineCombination_mem_affineSpan_image ?_ (fun i' _ hi ↦ by aesop) _
  simp [sum_add_distrib, ← mul_sum, hw]

/-- The iff version of `affineCombination_mem_shift` for affine independent points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `631de5e102c49fb2f5e6a80323906c2318aab9c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
