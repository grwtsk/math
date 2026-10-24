# BinaryCompressionRecursion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d0ba54724a6d263e7099b555f8dfbafa3353f1d6935a0006166c6834f86e8e2",
  "kind": "structure",
  "lexical_name": "BinaryCompressionRecursion",
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
  "slug": "binarycompressionrecursion--77e70aeab6d2b1fad7a20760",
  "source": {
    "blob": "9575b86d5952a066aff20bf5671b36f3e0e3e455",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryCompressionRecursion/Variantdcba74a4bfd1fbfcbaa92eb6334cfccd0c9cd7f89afb968a0e57d52c6cee75ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77e70aeab6d2b1fad7a207602290b576064a14fcba65eba5ccce40f7e4485fc8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryCompressionRecursion/Variantdcba74a4bfd1fbfcbaa92eb6334cfccd0c9cd7f89afb968a0e57d52c6cee75ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d0ba54724a6d263e7099b555f8dfbafa3353f1d6935a0006166c6834f86e8e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BinaryCompressionRecursion where
  program : RecursiveObstructionProgram
  matrixInstance : BinaryMatrixInstance
  matrixState : program.State
  optimalRuleset : CompressionRuleset
  smoothStream : program.State → Prop
  glitchedStream : program.State → Prop
  missingFrameRequiresBacktracking :
    ∀ S, glitchedStream S → RequiresBacktracking S
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryCompressionRecursion/Variantdcba74a4bfd1fbfcbaa92eb6334cfccd0c9cd7f89afb968a0e57d52c6cee75ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryCompressionRecursion/Variantdcba74a4bfd1fbfcbaa92eb6334cfccd0c9cd7f89afb968a0e57d52c6cee75ee.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9575b86d5952a066aff20bf5671b36f3e0e3e455` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
