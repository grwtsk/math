# normal_subgroupOf_centralizer_normalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c06fe6757cac823656eca619362cd4e73e1ef02fe0cdff619c94cffa676ca749",
  "kind": "instance",
  "lexical_name": "normal_subgroupOf_centralizer_normalizer",
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
  "slug": "normal-subgroupof-centralizer-normalizer--51db9e1da4807b88e3fa4896",
  "source": {
    "blob": "411d987150b183b689816683ea0f30f7bf6baa71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 176,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variante27fe13be20e4aea562043b1c6671256fd25c53641095aae7eff84c45a64c5c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51db9e1da4807b88e3fa489699cd0f91b4b752dd13b03a15a506e604b63d6820",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variante27fe13be20e4aea562043b1c6671256fd25c53641095aae7eff84c45a64c5c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c06fe6757cac823656eca619362cd4e73e1ef02fe0cdff619c94cffa676ca749`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance normal_subgroupOf_centralizer_normalizer (s : Set G) :
    (centralizer s |>.subgroupOf <| normalizer s).Normal := by
  refine (Subgroup.normal_subgroupOf_iff <| centralizer_le_normalizer s).mpr fun c n hc hn ↦ ?_
  refine mem_centralizer_iff_commutator_eq_one'.mpr fun g hg ↦ ?_
  suffices n * (c * (n⁻¹ * g * n) * c⁻¹ * n⁻¹ * g⁻¹) = 1 by simpa [commutatorElement_def, mul_assoc]
  simp [← hc _ <| mem_set_normalizer_iff''.mp hn g |>.mp hg]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variante27fe13be20e4aea562043b1c6671256fd25c53641095aae7eff84c45a64c5c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variante27fe13be20e4aea562043b1c6671256fd25c53641095aae7eff84c45a64c5c3.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `411d987150b183b689816683ea0f30f7bf6baa71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
