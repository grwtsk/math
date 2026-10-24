# SemiconjBy.function_semiconj_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:393aa1a8-8e68-0413-9b57-19e5fab0bbe3",
  "kind": "theorem",
  "lexical_name": "SemiconjBy.function_semiconj_mul_left",
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
  "slug": "semiconjby-function-semiconj-mul-left--99294e10a15e8d20ce141bba",
  "source": {
    "blob": "c88c0f675dc390fe0dbc16c31555a77c59956647",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 235,
    "path": "GRWTSK/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99294e10a15e8d20ce141bba48f092ef2240ae0fdb203e573de311920696f87b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:393aa1a8-8e68-0413-9b57-19e5fab0bbe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SemiconjBy.function_semiconj_mul_left (h : SemiconjBy a b c) :
    Function.Semiconj (a * ·) (b * ·) (c * ·) := fun j => by
  dsimp only; rw [← mul_assoc, h.eq, mul_assoc]
#align semiconj_by.function_semiconj_mul_left SemiconjBy.function_semiconj_mul_left
#align add_semiconj_by.function_semiconj_add_left AddSemiconjBy.function_semiconj_add_left

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c88c0f675dc390fe0dbc16c31555a77c59956647` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
