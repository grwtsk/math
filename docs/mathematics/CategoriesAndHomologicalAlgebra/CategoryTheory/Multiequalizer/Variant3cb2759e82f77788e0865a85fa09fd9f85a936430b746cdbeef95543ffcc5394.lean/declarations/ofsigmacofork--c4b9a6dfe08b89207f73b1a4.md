# ofSigmaCofork_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1064bcb7-7548-bc50-a2a7-25eb308065de",
  "kind": "theorem",
  "lexical_name": "ofSigmaCofork_π",
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
  "slug": "ofsigmacofork--c4b9a6dfe08b89207f73b1a4",
  "source": {
    "blob": "d45c557b49c2b30ad1d455900acf9eacfa974d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 968,
    "line": 962,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant3cb2759e82f77788e0865a85fa09fd9f85a936430b746cdbeef95543ffcc5394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4b9a6dfe08b89207f73b1a45cfdb99fa0ff8ee08d7d0cbe08359da2874ffbeb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant3cb2759e82f77788e0865a85fa09fd9f85a936430b746cdbeef95543ffcc5394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1064bcb7-7548-bc50-a2a7-25eb308065de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 962–968.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofSigmaCofork_π
    (a : Cofork (I.fstSigmaMapOfIsColimit d hc) (I.sndSigmaMapOfIsColimit d hc)) (i) :
    (ofSigmaCofork a).π i = d.inj i ≫ a.π :=
  rfl

/-- Constructor for isomorphisms between multicoforks. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant3cb2759e82f77788e0865a85fa09fd9f85a936430b746cdbeef95543ffcc5394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant3cb2759e82f77788e0865a85fa09fd9f85a936430b746cdbeef95543ffcc5394.lean#L962).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d45c557b49c2b30ad1d455900acf9eacfa974d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
