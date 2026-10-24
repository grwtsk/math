# isPullbackEquivIsLimitKernelFork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ad4da5273e61dcfa18e102063a5f77fac21790b054c87415a7741558590ffe2",
  "kind": "def",
  "lexical_name": "isPullbackEquivIsLimitKernelFork",
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
  "slug": "ispullbackequivislimitkernelfork--231097922b91092d42a9f04d",
  "source": {
    "blob": "427c27766f72d9e48888f5e4b226a6bb5cf8e3f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:231097922b91092d42a9f04dd5661a11063f45b0cf261eab406dcd8e5727efcb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ad4da5273e61dcfa18e102063a5f77fac21790b054c87415a7741558590ffe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isPullbackEquivIsLimitKernelFork :
    sq.IsPullback ≃ IsLimit sq.kernelFork :=
  Equiv.trans
    { toFun := fun h ↦ h.isLimit
      invFun := fun h ↦ IsPullback.mk _ h
      left_inv := fun _ ↦ rfl
      right_inv := fun _ ↦ Subsingleton.elim _ _ }
    sq.commSq.isLimitEquivIsLimitKernelFork

variable {sq} in
/-- The limit kernel fork attached to a pullback square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `427c27766f72d9e48888f5e4b226a6bb5cf8e3f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
