# quadratic_eq_zero_iff_discrim_eq_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f5f6389-26d8-e36e-e297-8e4598c9925e",
  "kind": "theorem",
  "lexical_name": "quadratic_eq_zero_iff_discrim_eq_sq",
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
  "slug": "quadratic-eq-zero-iff-discrim-eq-sq--8c003a141b37f231c2056226",
  "source": {
    "blob": "68e9c94b5f1dabb8d55e20bc9c075213debe675c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c003a141b37f231c20562268f5c0c40b14ff77f1081a4f8c5c32658f2b166b0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f5f6389-26d8-e36e-e297-8e4598c9925e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_eq_zero_iff_discrim_eq_sq [NeZero (2 : R)] [NoZeroDivisors R]
    (ha : a ≠ 0) (x : R) :
    a * x * x + b * x + c = 0 ↔ discrim a b c = (2 * a * x + b) ^ 2 := by
  refine ⟨discrim_eq_sq_of_quadratic_eq_zero, fun h ↦ ?_⟩
  rw [discrim] at h
  have ha : 2 * 2 * a ≠ 0 := mul_ne_zero (mul_ne_zero (NeZero.ne _) (NeZero.ne _)) ha
  apply mul_left_cancel₀ ha
  linear_combination -h
#align quadratic_eq_zero_iff_discrim_eq_sq quadratic_eq_zero_iff_discrim_eq_sq

/-- A quadratic has no root if its discriminant has no square root. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68e9c94b5f1dabb8d55e20bc9c075213debe675c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
