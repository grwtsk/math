# PreEnvelGroupRel'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a81c30e43c2bed09602d707818dfd7372b71018ada3eb033845edfa839da8dcb",
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
  "slug": "preenvelgrouprel--551a42db5b461609ab3f1fe1",
  "source": {
    "blob": "e18199575dd30a54e1624941f724a86b161fba2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 535,
    "path": "GRWTSK/Algebra/GroupTheory/Quandle/Variant2c7a3783e2e77b19c7a9595468c15c0a390d5c11d95962b03fc2120a062c5fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:551a42db5b461609ab3f1fe1d9c1ecf4c78585cb6437baeaa7529bce59d723a9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quandle/Variant2c7a3783e2e77b19c7a9595468c15c0a390d5c11d95962b03fc2120a062c5fa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a81c30e43c2bed09602d707818dfd7372b71018ada3eb033845edfa839da8dcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–550.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quandle/Variant2c7a3783e2e77b19c7a9595468c15c0a390d5c11d95962b03fc2120a062c5fa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quandle/Variant2c7a3783e2e77b19c7a9595468c15c0a390d5c11d95962b03fc2120a062c5fa3.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e18199575dd30a54e1624941f724a86b161fba2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
