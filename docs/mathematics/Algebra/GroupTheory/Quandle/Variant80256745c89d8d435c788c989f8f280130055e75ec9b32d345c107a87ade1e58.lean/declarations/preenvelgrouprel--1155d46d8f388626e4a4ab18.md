# PreEnvelGroupRel'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:555fa2552ce70f2e0acbb8309e9874e49dce8b45eb332c83f07b26030f7c19c5",
  "kind": "inductive",
  "lexical_name": "PreEnvelGroupRel'",
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
  "slug": "preenvelgrouprel--1155d46d8f388626e4a4ab18",
  "source": {
    "blob": "96d6e9b9f713f8c25c760bc914f4163ea7e250d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 527,
    "path": "GRWTSK/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1155d46d8f388626e4a4ab18ad4f231007c27d5243640f9e8b9db4d0dab0d222",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:555fa2552ce70f2e0acbb8309e9874e49dce8b45eb332c83f07b26030f7c19c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive PreEnvelGroupRel' (R : Type u) [Rack R] : PreEnvelGroup R → PreEnvelGroup R → Type u
  | refl {a : PreEnvelGroup R} : PreEnvelGroupRel' R a a
  | symm {a b : PreEnvelGroup R} (hab : PreEnvelGroupRel' R a b) : PreEnvelGroupRel' R b a
  | trans {a b c : PreEnvelGroup R} (hab : PreEnvelGroupRel' R a b)
    (hbc : PreEnvelGroupRel' R b c) : PreEnvelGroupRel' R a c
  | congr_mul {a b a' b' : PreEnvelGroup R} (ha : PreEnvelGroupRel' R a a')
    (hb : PreEnvelGroupRel' R b b') : PreEnvelGroupRel' R (mul a b) (mul a' b')
  | congr_inv {a a' : PreEnvelGroup R} (ha : PreEnvelGroupRel' R a a') :
    PreEnvelGroupRel' R (inv a) (inv a')
  | assoc (a b c : PreEnvelGroup R) : PreEnvelGroupRel' R (mul (mul a b) c) (mul a (mul b c))
  | one_mul (a : PreEnvelGroup R) : PreEnvelGroupRel' R (mul unit a) a
  | mul_one (a : PreEnvelGroup R) : PreEnvelGroupRel' R (mul a unit) a
  | inv_mul_cancel (a : PreEnvelGroup R) : PreEnvelGroupRel' R (mul (inv a) a) unit
  | act_incl (x y : R) :
    PreEnvelGroupRel' R (mul (mul (incl x) (incl y)) (inv (incl x))) (incl (x ◃ y))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d6e9b9f713f8c25c760bc914f4163ea7e250d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
