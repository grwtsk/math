# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e597dfcb8c47af2674e4caf5119c7e83d8b831dfb72a8de462029f6a76f35179",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e432d1403e7b3a37f586ece1",
  "source": {
    "blob": "91145b33bac56ca001c6fc503e7ce15ec44b959d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 105,
    "path": "GRWTSK/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e432d1403e7b3a37f586ece138db9dae158cbb6ced3022cc0fd803264b0343d6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e597dfcb8c47af2674e4caf5119c7e83d8b831dfb72a8de462029f6a76f35179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 75) normedGroup [NormedGroup E] {S : Type*} [SetLike S E] [SubgroupClass S E]
    (s : S) : NormedGroup s :=
  NormedGroup.induced _ _ (SubgroupClass.subtype s) Subtype.coe_injective

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91145b33bac56ca001c6fc503e7ce15ec44b959d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
