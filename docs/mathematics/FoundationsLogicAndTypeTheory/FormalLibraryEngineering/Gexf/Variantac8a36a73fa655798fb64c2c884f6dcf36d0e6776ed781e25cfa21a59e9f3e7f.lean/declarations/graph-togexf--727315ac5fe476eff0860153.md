# Graph.toGexf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a4b7bb5cbaf302c5e176b3ac5cb996c81f07c71631605cdb46ad77def67bae0",
  "kind": "def",
  "lexical_name": "Graph.toGexf",
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
  "slug": "graph-togexf--727315ac5fe476eff0860153",
  "source": {
    "blob": "08f8f8ac6517360a27738ca88381642d9d49350a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gexf/Variantac8a36a73fa655798fb64c2c884f6dcf36d0e6776ed781e25cfa21a59e9f3e7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:727315ac5fe476eff08601539c7ad929ae046966019eeac8c7e7800271e7626a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gexf/Variantac8a36a73fa655798fb64c2c884f6dcf36d0e6776ed781e25cfa21a59e9f3e7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a4b7bb5cbaf302c5e176b3ac5cb996c81f07c71631605cdb46ad77def67bae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Graph.toGexf (graph : NameMap (Array Name)) (module : Name) (env : Environment) : String :=
  let sizes : NameMap Nat := getNumberOfDeclsPerFile env
  let nodes : String := graph.foldl (fun acc n _ => acc ++ nodeTemplate n module (sizes.getD n 0)) ""
  let edges : String := graph.foldl (fun acc n i => acc ++ (i.foldl (fun b j => b ++ edgeTemplate j n) "")) ""
  s!"<?xml version='1.0' encoding='utf-8'?>
    <gexf xmlns=\"http://www.gexf.net/1.2draft\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.gexf.net/1.2draft http://www.gexf.net/1.2draft/gexf.xsd\" version=\"1.2\">
      <meta>
        <creator>Lean ImportGraph</creator>
      </meta>
      <graph defaultedgetype=\"directed\" mode=\"static\" name=\"\">
        <attributes mode=\"static\" class=\"node\">
          <attribute id=\"0\" title=\"decl_count\" type=\"long\" />
          <attribute id=\"1\" title=\"in_module\" type=\"boolean\" />
        </attributes>
        <nodes>
          {nodes.trimAscii}
        </nodes>
        <edges>
          {edges.trimAscii}
        </edges>
      </graph>
    </gexf>
    "
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gexf/Variantac8a36a73fa655798fb64c2c884f6dcf36d0e6776ed781e25cfa21a59e9f3e7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gexf/Variantac8a36a73fa655798fb64c2c884f6dcf36d0e6776ed781e25cfa21a59e9f3e7f.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08f8f8ac6517360a27738ca88381642d9d49350a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
