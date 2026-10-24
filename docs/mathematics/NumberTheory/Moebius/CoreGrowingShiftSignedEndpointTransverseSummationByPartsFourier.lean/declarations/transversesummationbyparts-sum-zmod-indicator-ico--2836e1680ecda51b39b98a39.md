# transverseSummationByParts_sum_zmod_indicator_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72db303e-b55d-4660-6f94-8a5a0226a74f",
  "kind": "theorem",
  "lexical_name": "transverseSummationByParts_sum_zmod_indicator_Ico",
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
  "slug": "transversesummationbyparts-sum-zmod-indicator-ico--2836e1680ecda51b39b98a39",
  "source": {
    "blob": "a89c5fd2b49b2b114202b08aa1062daff31b5944",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 150,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2836e1680ecda51b39b98a394063450b256184e52bb0bd63731d037cc047b44f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72db303e-b55d-4660-6f94-8a5a0226a74f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem transverseSummationByParts_sum_zmod_indicator_Ico
    {Q : ℕ} [NeZero Q]
    (L U : ℕ)
    (hUQ : U ≤ Q)
    (F : ℕ → ℂ) :
    (∑ x : ZMod Q,
      if L ≤ x.val ∧ x.val < U then F x.val else 0) =
      ∑ n ∈ Finset.Ico L U, F n := by
  classical
  rw [transverseSummationByParts_sum_zmod_eq_sum_fin]
  let S : Finset (Fin Q) :=
    (Finset.univ : Finset (Fin Q)).filter fun x =>
      L ≤ x.val ∧ x.val < U
  calc
    (∑ x : Fin Q,
      if L ≤ x.val ∧ x.val < U then F x.val else 0) =
        ∑ x ∈ S, F x.val := by
          unfold S
          rw [Finset.sum_filter]
    _ = ∑ n ∈ Finset.Ico L U, F n := by
      symm
      apply Finset.sum_bij
        (fun n hn =>
          (⟨n, lt_of_lt_of_le (Finset.mem_Ico.mp hn).2 hUQ⟩ : Fin Q))
      · intro n hn
        simp [S, Finset.mem_Ico.mp hn]
      · intro n _hn m _hm hnm
        exact congrArg Fin.val hnm
      · intro x hx
        have hxmem : L ≤ x.val ∧ x.val < U := by
          simpa [S] using hx
        refine ⟨x.val, by simpa using hxmem, ?_⟩
        apply Fin.ext
        rfl
      · intro n _hn
        rfl

/-- Exact finite summation by parts for a character-weighted affine reciprocal
first difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89c5fd2b49b2b114202b08aa1062daff31b5944` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
