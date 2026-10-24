# sameRay_iff_inv_norm_smul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:902ff7a0-1d0c-0d8c-f4c6-053259826187",
  "kind": "theorem",
  "lexical_name": "sameRay_iff_inv_norm_smul_eq",
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
  "slug": "sameray-iff-inv-norm-smul-eq--6576b9963321315e6f6b369b",
  "source": {
    "blob": "24335fd63ebcce973c5250a20e17ac5a39866ade",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 89,
    "path": "GRWTSK/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6576b9963321315e6f6b369b3d724df191093af2f3a1e26fd4afc63b5f99c81f",
  "verification": {
    "reference": "docs/verification/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:902ff7a0-1d0c-0d8c-f4c6-053259826187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sameRay_iff_inv_norm_smul_eq : SameRay ℝ x y ↔ x = 0 ∨ y = 0 ∨ ‖x‖⁻¹ • x = ‖y‖⁻¹ • y := by
  rcases eq_or_ne x 0 with (rfl | hx); · simp [SameRay.zero_left]
  rcases eq_or_ne y 0 with (rfl | hy); · simp [SameRay.zero_right]
  simp only [sameRay_iff_inv_norm_smul_eq_of_ne hx hy, *, false_or]

/-- Two vectors of the same norm are on the same ray if and only if they are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24335fd63ebcce973c5250a20e17ac5a39866ade` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
