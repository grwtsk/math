# subscript.parenthesizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08d1255f5828214a1c1f6ddd7951b2b4578f295733e0ff0ea66450daab835347",
  "kind": "def",
  "lexical_name": "subscript.parenthesizer",
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
  "slug": "subscript-parenthesizer--753a7c0e035927cec19a4f1f",
  "source": {
    "blob": "dff7155caf8ce49bc615073aa197eeddbabe3256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 294,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variantc65ec2d5526ea7a2e83ded6c917f808a1ef3297c50880d767c79c8c1523ff684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:753a7c0e035927cec19a4f1f66b995e33581d9d60cd721ca8a87c0c7ab2b46aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variantc65ec2d5526ea7a2e83ded6c917f808a1ef3297c50880d767c79c8c1523ff684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08d1255f5828214a1c1f6ddd7951b2b4578f295733e0ff0ea66450daab835347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subscript.parenthesizer := Superscript.scriptParser.parenthesizer ``subscript
/-- Formatter for the subscript parser. -/
@[combinator_formatter subscript]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variantc65ec2d5526ea7a2e83ded6c917f808a1ef3297c50880d767c79c8c1523ff684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variantc65ec2d5526ea7a2e83ded6c917f808a1ef3297c50880d767c79c8c1523ff684.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dff7155caf8ce49bc615073aa197eeddbabe3256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
