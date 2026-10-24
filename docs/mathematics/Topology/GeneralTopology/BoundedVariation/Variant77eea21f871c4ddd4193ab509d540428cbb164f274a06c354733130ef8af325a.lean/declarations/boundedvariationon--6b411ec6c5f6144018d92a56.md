# BoundedVariationOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8a7f7bed296eb5212031fa7e91db72a34bd2d7e305d82d7dafd67b9910a6c4d",
  "kind": "def",
  "lexical_name": "BoundedVariationOn",
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
  "slug": "boundedvariationon--6b411ec6c5f6144018d92a56",
  "source": {
    "blob": "b6113d88eb9b6e6624402490680f712822dc8815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b411ec6c5f6144018d92a56a6daf21b32929bc38a4de2e3c26dc41fc5fe689f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8a7f7bed296eb5212031fa7e91db72a34bd2d7e305d82d7dafd67b9910a6c4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BoundedVariationOn (f : α → E) (s : Set α) :=
  eVariationOn f s ≠ ∞

/-- A function has locally bounded variation on a set `s` if, given any interval `[a, b]` with
endpoints in `s`, then the function has finite variation on `s ∩ [a, b]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6113d88eb9b6e6624402490680f712822dc8815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
