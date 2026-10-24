# coe_lift_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5259705-182e-e9e8-a4b1-ac77f5316849",
  "kind": "theorem",
  "lexical_name": "coe_lift_symm_apply",
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
  "slug": "coe-lift-symm-apply--3923477afa639908ec643354",
  "source": {
    "blob": "b36a2be106fff3fa61157d2e93c06948b0ac5309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 157,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3923477afa639908ec643354d093baad6f3ec4a4c663f33679541f38e13e764c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5259705-182e-e9e8-a4b1-ac77f5316849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem coe_lift_symm_apply (F : A[ε] →ₐ[R] B) :
    (lift.symm F).val = (F.comp (inlAlgHom _ _ _), F ε) := rfl

#adaptation_note /-- https://github.com/leanprover/lean4/pull/5338
The new unused variable linter flags `{fe : (A →ₐ[R] B) × B // _}`. -/
set_option linter.unusedVariables false in
/-- When applied to `inl`, `DualNumber.lift` applies the map `f : A →ₐ[R] B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b36a2be106fff3fa61157d2e93c06948b0ac5309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
