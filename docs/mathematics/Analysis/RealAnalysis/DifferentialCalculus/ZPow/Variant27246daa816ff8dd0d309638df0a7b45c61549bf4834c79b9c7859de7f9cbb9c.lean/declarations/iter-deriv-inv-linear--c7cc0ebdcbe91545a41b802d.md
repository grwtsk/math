# iter_deriv_inv_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2ef23c541dc79e6e3849b41d61d51664106792b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:469429f5-3016-1aee-e072-b9b8e5fbadad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f082acb-33e8-b40e-8bb9-e18563732a43",
  "kind": "theorem",
  "lexical_name": "iter_deriv_inv_linear",
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
  "slug": "iter-deriv-inv-linear--c7cc0ebdcbe91545a41b802d",
  "source": {
    "blob": "f2ef23c541dc79e6e3849b41d61d51664106792b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7cc0ebdcbe91545a41b802d0841096b1a6ea7ca0e915c51ce88ba49f6aa1931",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f082acb-33e8-b40e-8bb9-e18563732a43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iter_deriv_inv_linear (k : ℕ) (c d : 𝕜) :
    deriv^[k] (fun x ↦ (c * x + d)⁻¹) =
    (fun x : 𝕜 ↦ (-1) ^ k * k ! * c ^ k * (c * x + d) ^ (-1 - k : ℤ)) := by
  induction k with
  | zero => simp
  | succ k ihk =>
    rw [factorial_succ, add_comm k 1, iterate_add_apply, ihk]
    ext z
    simp only [Int.reduceNeg, iterate_one, deriv_const_mul_field', cast_add, cast_one]
    by_cases hd : c = 0
    · simp [hd]
    · have := deriv_comp_add_const (fun x ↦ (c * x) ^ (-1 - k : ℤ)) (d / c) z
      have h0 : (fun x ↦ (c * (x + d / c)) ^ (-1 - (k : ℤ))) =
        (fun x ↦ (c * x + d) ^ (-1 - (k : ℤ))) := by
        ext y
        field_simp
      rw [h0, deriv_comp_mul_left c (fun x ↦ (x) ^ (-1 - k : ℤ)) (z + d / c)] at this
      simp [this]
      field_simp
      ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2ef23c541dc79e6e3849b41d61d51664106792b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
