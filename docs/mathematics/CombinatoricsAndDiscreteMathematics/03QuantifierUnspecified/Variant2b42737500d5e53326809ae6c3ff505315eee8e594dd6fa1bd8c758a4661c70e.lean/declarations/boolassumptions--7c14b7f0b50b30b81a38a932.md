# boolAssumptions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca37fbfb604269dede83d442b855c395376cad57d2d09e9a4e679dc54d1e3d4f",
  "kind": "def",
  "lexical_name": "boolAssumptions",
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
  "slug": "boolassumptions--7c14b7f0b50b30b81a38a932",
  "source": {
    "blob": "f7d02113c73489df9688ad8de682af822d5d3e55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/03QuantifierUnspecified/Variant2b42737500d5e53326809ae6c3ff505315eee8e594dd6fa1bd8c758a4661c70e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c14b7f0b50b30b81a38a9327d1fc1bf835b258017b80b4aafee736f2c4b6c2c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/03QuantifierUnspecified/Variant2b42737500d5e53326809ae6c3ff505315eee8e594dd6fa1bd8c758a4661c70e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca37fbfb604269dede83d442b855c395376cad57d2d09e9a4e679dc54d1e3d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boolAssumptions := AssumptionSet.empty boolTheory (version "bool-assumptions")
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/03QuantifierUnspecified/Variant2b42737500d5e53326809ae6c3ff505315eee8e594dd6fa1bd8c758a4661c70e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/03QuantifierUnspecified/Variant2b42737500d5e53326809ae6c3ff505315eee8e594dd6fa1bd8c758a4661c70e.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7d02113c73489df9688ad8de682af822d5d3e55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
