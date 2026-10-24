# theta_indices_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8d3b342297ea702f9a4d9c7fe6561b03255e815",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:558cd3f0-2ef3-b2b8-25fa-7ced89004518",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20d257a0-ef95-e846-1c10-ad0492afbdd1",
  "kind": "theorem",
  "lexical_name": "theta_indices_iff",
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
  "slug": "theta-indices-iff--0a9e395d0151cab6ffc24d6c",
  "source": {
    "blob": "a8d3b342297ea702f9a4d9c7fe6561b03255e815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 155,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a9e395d0151cab6ffc24d6c98294c953a239faa35d6e692688ea9c76f43a261",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20d257a0-ef95-e846-1c10-ad0492afbdd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_indices_iff (A : ℝ) (q k l : ℕ) (hq : 1 ≤ q) :
    (k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊ ∧
      l ∈ (Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
        (fun l : ℕ ↦ ((q * k * l : ℕ) : ℝ) < Real.exp (2 * A))) ↔
      1 ≤ k ∧ 1 ≤ l ∧ ((q * k * l : ℕ) : ℝ) < Real.exp (2 * A) := by
  constructor
  · rintro ⟨hk, hl⟩
    exact ⟨(mem_Icc.mp hk).1, (mem_Icc.mp (mem_filter.mp hl).1).1,
      (mem_filter.mp hl).2⟩
  · rintro ⟨hk, hl, hcut⟩
    have hprod : q * k * l ≤ ⌊Real.exp (2 * A)⌋₊ :=
      (Nat.le_floor_iff (Real.exp_pos _).le).mpr hcut.le
    have hqk : 0 < q * k := Nat.mul_pos (by omega) (by omega)
    have hkprod : k ≤ q * k * l :=
      (Nat.le_mul_of_pos_left _ (by omega : 0 < q)).trans
        (Nat.le_mul_of_pos_right _ (by omega : 0 < l))
    have hlprod : l ≤ q * k * l := Nat.le_mul_of_pos_left _ hqk
    exact ⟨mem_Icc.mpr ⟨hk, hkprod.trans hprod⟩,
      mem_filter.mpr ⟨mem_Icc.mpr ⟨hl, hlprod.trans hprod⟩, hcut⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d3b342297ea702f9a4d9c7fe6561b03255e815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
