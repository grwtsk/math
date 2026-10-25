# addDefaultTypeAnalysisLemmas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddd83fe1ee25327a919b9cfc7472c6653cb3b05160941230d561a15ca412c024",
  "kind": "def",
  "lexical_name": "addDefaultTypeAnalysisLemmas",
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
  "slug": "adddefaulttypeanalysislemmas--84611b6ca8e5ffca8d1e4cb6",
  "source": {
    "blob": "3bd163b5fdd2183e21a6d8594d3dc7bcfb13679c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84611b6ca8e5ffca8d1e4cb62fd9c4faeb180c77e9c378aaf89c3f8c576e6d6f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddd83fe1ee25327a919b9cfc7472c6653cb3b05160941230d561a15ca412c024`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def addDefaultTypeAnalysisLemmas (lemmas : SimpTheoremsArray) : PreProcessM SimpTheoremsArray := do
  let mut lemmas := lemmas

  let relevantNames := #[
    ``ne_eq,
    ``dif_eq_if,
    ``Std.Tactic.BVDecide.Normalize.BitVec.getElem_eq_getLsbD,
  ]
  for name in relevantNames do
    lemmas ← lemmas.addTheorem (.decl name) (mkConst name)

  return lemmas

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bd163b5fdd2183e21a6d8594d3dc7bcfb13679c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
