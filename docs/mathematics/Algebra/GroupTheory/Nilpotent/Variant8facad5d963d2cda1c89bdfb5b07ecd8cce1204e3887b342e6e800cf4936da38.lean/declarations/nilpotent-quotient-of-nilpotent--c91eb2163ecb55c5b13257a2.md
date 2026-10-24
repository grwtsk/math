# nilpotent_quotient_of_nilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be445487208c3d945c507266f6cecd237988ec47dc832cc9d27c4ca24789e4ee",
  "kind": "instance",
  "lexical_name": "nilpotent_quotient_of_nilpotent",
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
  "slug": "nilpotent-quotient-of-nilpotent--c91eb2163ecb55c5b13257a2",
  "source": {
    "blob": "5fa00367eb3bad43d0c638d420316f801679775a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 819,
    "line": 813,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c91eb2163ecb55c5b13257a246980f67a03a38b1f753ae0a3266e44c13f37ce5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be445487208c3d945c507266f6cecd237988ec47dc832cc9d27c4ca24789e4ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 813–819.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nilpotent_quotient_of_nilpotent (H : Subgroup G) [H.Normal] [_h : IsNilpotent G] :
    IsNilpotent (G ⧸ H) :=
  nilpotent_of_surjective (QuotientGroup.mk' H) QuotientGroup.mk_surjective

/-- The nilpotency class of a quotient of `G` is less or equal the nilpotency class of `G`. -/
@[to_additive /-- The nilpotency class of a quotient of `G` is less or equal the nilpotency class
of `G`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean#L813).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa00367eb3bad43d0c638d420316f801679775a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
