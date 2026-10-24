# mulLeft₃_eq_mulRight₃_iff_associative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:690a3d1e-8461-4595-b64b-a56d97b0e168",
  "kind": "theorem",
  "lexical_name": "mulLeft₃_eq_mulRight₃_iff_associative",
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
  "slug": "mulleft-eq-mulright-iff-associative--c6213c3fc97b4ceebe64fb42",
  "source": {
    "blob": "f6ddcfafaeca1155e49c79eebe9c474d8a7e5de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6213c3fc97b4ceebe64fb4203dfd4d7d781d43d8932c57fa15792b494f7f045",
  "verification": {
    "reference": "docs/verification/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:690a3d1e-8461-4595-b64b-a56d97b0e168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulLeft₃_eq_mulRight₃_iff_associative :
    mulLeft₃ (R := R) = mulRight₃ ↔ Std.Associative (fun (x y : R) ↦ x * y) where
  mp h := ⟨fun x y z ↦ by rw [← mulLeft₃_apply, ← mulRight₃_apply, h]⟩
  mpr h := by ext x y z; simp [Std.Associative.assoc]

end NonUnitalNonAssocSemiring

section NonUnitalSemiring
variable [NonUnitalSemiring R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6ddcfafaeca1155e49c79eebe9c474d8a7e5de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
