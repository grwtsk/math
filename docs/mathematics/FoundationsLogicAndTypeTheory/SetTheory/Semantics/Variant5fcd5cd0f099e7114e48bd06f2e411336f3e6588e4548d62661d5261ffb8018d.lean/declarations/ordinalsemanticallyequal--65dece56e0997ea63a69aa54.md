# OrdinalSemanticallyEqual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec0f64829095b46df01e8024a86f52c38a41b315c26dc4788bbd02ea13b60bf7",
  "kind": "def",
  "lexical_name": "OrdinalSemanticallyEqual",
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
  "slug": "ordinalsemanticallyequal--65dece56e0997ea63a69aa54",
  "source": {
    "blob": "f55afc27b6ecb20292b9ae4b0eea5598d608b190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant5fcd5cd0f099e7114e48bd06f2e411336f3e6588e4548d62661d5261ffb8018d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65dece56e0997ea63a69aa54928f8c0983274ccc3b4077545be5714328a99455",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant5fcd5cd0f099e7114e48bd06f2e411336f3e6588e4548d62661d5261ffb8018d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec0f64829095b46df01e8024a86f52c38a41b315c26dc4788bbd02ea13b60bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OrdinalSemanticallyEqual
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    (left right : OrdinalTally) : Prop :=
  profile.denotes left = profile.denotes right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant5fcd5cd0f099e7114e48bd06f2e411336f3e6588e4548d62661d5261ffb8018d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variant5fcd5cd0f099e7114e48bd06f2e411336f3e6588e4548d62661d5261ffb8018d.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f55afc27b6ecb20292b9ae4b0eea5598d608b190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
