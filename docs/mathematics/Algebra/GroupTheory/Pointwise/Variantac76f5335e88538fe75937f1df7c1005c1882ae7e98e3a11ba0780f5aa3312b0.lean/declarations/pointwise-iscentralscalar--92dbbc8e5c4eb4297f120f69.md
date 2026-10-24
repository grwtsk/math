# pointwise_isCentralScalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd6ac36e225b41825d87ab45f6b17be701b2f35f223bb25ca631b5d198ea3302",
  "kind": "instance",
  "lexical_name": "pointwise_isCentralScalar",
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
  "slug": "pointwise-iscentralscalar--92dbbc8e5c4eb4297f120f69",
  "source": {
    "blob": "f107b1cd49f3c5a0651b5c71058acd35815ddc83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 484,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantac76f5335e88538fe75937f1df7c1005c1882ae7e98e3a11ba0780f5aa3312b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92dbbc8e5c4eb4297f120f69c225c0e254b4a6dcbf8bd40c225db3ed925453ce",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variantac76f5335e88538fe75937f1df7c1005c1882ae7e98e3a11ba0780f5aa3312b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd6ac36e225b41825d87ab45f6b17be701b2f35f223bb25ca631b5d198ea3302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pointwise_isCentralScalar [DistribMulAction αᵐᵒᵖ A] [IsCentralScalar α A] :
    IsCentralScalar α (AddSubgroup A) :=
  ⟨fun _ S => (congr_arg fun f => S.map f) <| AddMonoidHom.ext <| op_smul_eq_smul _⟩
#align add_subgroup.pointwise_central_scalar AddSubgroup.pointwise_isCentralScalar

end Monoid

section Group

variable [Group α] [DistribMulAction α A]

open Pointwise

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantac76f5335e88538fe75937f1df7c1005c1882ae7e98e3a11ba0780f5aa3312b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantac76f5335e88538fe75937f1df7c1005c1882ae7e98e3a11ba0780f5aa3312b0.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f107b1cd49f3c5a0651b5c71058acd35815ddc83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
