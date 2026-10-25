# moduloThreeRustFixture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4b80ac87f4a883e458352f90d59e6729f04f6ae7e3ec4a1bbf37bfa11031e1c",
  "kind": "def",
  "lexical_name": "moduloThreeRustFixture",
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
  "slug": "modulothreerustfixture--021f770e27b452583da625ae",
  "source": {
    "blob": "76a0ddece0c93ce1373d1ebc624fe40f22e0e73b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 631,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variantd5c54aa91a71a641a9d4d8b447374c023ebf2c58cb5cc7d913054196bcf89c4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:021f770e27b452583da625aee95dfa43a3032de410aefac50f987ef941b2ec87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variantd5c54aa91a71a641a9d4d8b447374c023ebf2c58cb5cc7d913054196bcf89c4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4b80ac87f4a883e458352f90d59e6729f04f6ae7e3ec4a1bbf37bfa11031e1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def moduloThreeRustFixture : String := String.join [
  "// Generated reducer conformance fixture.\n",
  "pub const FORMAT_VERSION: u64 = 1u64;\n",
  "pub const INPUT_LENGTH: usize = 1usize;\n",
  "pub const OUTPUT_LENGTH: usize = 1usize;\n",
  "\n",
  "pub fn check_version_and_shape(version: u64, input_length: usize, output_length: usize) -> bool {\n",
  "    version == FORMAT_VERSION && input_length == INPUT_LENGTH && output_length == OUTPUT_LENGTH\n",
  "}\n\n",
  "pub fn reduce(input: u64) -> u64 {\n",
  "    input % 3u64\n",
  "}\n\n",
  "pub fn phase(sequence: u64) -> u64 {\n",
  "    sequence % 3u64\n",
  "}\n\n",
  "pub fn local_step(input: u64, shared_sequence: u64) -> (u64, u64) {\n",
  "    (reduce(input), phase(shared_sequence))\n",
  "}\n\n",
  "fn main() {\n",
  "    assert!(check_version_and_shape(FORMAT_VERSION, INPUT_LENGTH, OUTPUT_LENGTH));\n",
  "    assert_eq!(reduce(0u64), 0u64);\n",
  "    assert_eq!(reduce(1u64), 1u64);\n",
  "    assert_eq!(reduce(2u64), 2u64);\n",
  "    assert_eq!(reduce(3u64), 0u64);\n",
  "    assert_eq!(reduce(8u64), 2u64);\n",
  "}\n"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variantd5c54aa91a71a641a9d4d8b447374c023ebf2c58cb5cc7d913054196bcf89c4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variantd5c54aa91a71a641a9d4d8b447374c023ebf2c58cb5cc7d913054196bcf89c4c.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76a0ddece0c93ce1373d1ebc624fe40f22e0e73b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
