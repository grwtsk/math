# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ad94f2a37664eaec118e8b7876a200c8550626f707f2b843e5a85ecf8a02dae",
  "kind": "def",
  "lexical_name": "main",
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
  "slug": "main--150d6af23ebf3db685a65cac",
  "source": {
    "blob": "2c3abfb7f8437e4ddcd7eca0fc1c80a5f753791c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 6,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante7e476a2053492fd5b01cddff2b298f52ea267fdebbc24741aa7a2dcd96d36ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:150d6af23ebf3db685a65cacb120811e5acb5445ec3852366f447c2074d2be3d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante7e476a2053492fd5b01cddff2b298f52ea267fdebbc24741aa7a2dcd96d36ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ad94f2a37664eaec118e8b7876a200c8550626f707f2b843e5a85ecf8a02dae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def main : IO Unit := do
  IO.println s!"{theoryIdentifier} {theoryVersion}"
  IO.println s!"{cpccTheoryIdentifier} {cpccTheoryVersion}"
  IO.println s!"{nsrdTheoryIdentifier} {nsrdTheoryVersion}"
  IO.println s!"{interpreterExactnessTheoryIdentifier} {interpreterExactnessTheoryVersion}"
  IO.println s!"{globalReflectionTheoryIdentifier} {globalReflectionTheoryVersion}"
  IO.println s!"{repositoryProbeCoverageProfile} {repositoryProbeCoverageTheoryVersion}"
  IO.println "CORD-THEORY-1 Lean formalization loaded."
  IO.println "CPCC-CST-2 bounded coordination formalization loaded."
  IO.println "CORD-NSRD-1 neural-symbolic reflective construction loaded."
  IO.println "CORD-INTERPRETER-EXACTNESS-1@0.2.0 causal reification exactness formalization loaded."
  IO.println "CORD-GLOBAL-REFLECTION-1@0.3.0-rc.3 finite formalization loaded."
  IO.println "CORD-ONTOLOGY-REPOSITORY-PROBE-COVERAGE-1@1.0.0 finite coverage formalization loaded."
  IO.println "Unbounded or self-authorizing reflection claimed: false"
  IO.println "OI-4 claimed: false"
  IO.println "OI-5 claimed: false"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante7e476a2053492fd5b01cddff2b298f52ea267fdebbc24741aa7a2dcd96d36ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante7e476a2053492fd5b01cddff2b298f52ea267fdebbc24741aa7a2dcd96d36ea.lean#L6).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c3abfb7f8437e4ddcd7eca0fc1c80a5f753791c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
