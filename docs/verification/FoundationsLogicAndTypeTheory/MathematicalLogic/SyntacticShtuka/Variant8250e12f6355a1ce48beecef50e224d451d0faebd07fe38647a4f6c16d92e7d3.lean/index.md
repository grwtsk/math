# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SyntacticShtuka.Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b674402f25a403ea80b06b047fceb7d01638fc28",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b674402f25a403ea80b06b047fceb7d01638fc28`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.NormalForm` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.Rewrite` — import line 2; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.Groups` — import line 3; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.LatticeGroup` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SyntacticShtukaSurface](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/syntacticshtukasurface--efb4c77c4c9bc29a64d8fc2d.md) | 21 | `declaration-track:efb4c77c4c9bc29a64d8fc2dab51351a4d866113243e5584b6fdf1d765f08b89` |
| 2 | `def` | [canonicalSyntacticShtuka](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/canonicalsyntacticshtuka--b7061ef15f070f48a0f8c96f.md) | 33 | `declaration-track:b7061ef15f070f48a0f8c96fba1dd11a6715fcd21daf7c4a2715f251256454c6` |
| 3 | `theorem` | [canonical_syntactic_shtuka_preserves_lookup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/canonical-syntactic-shtuka-preserves-lookup--567e521ff5edbaa78d482ae9.md) | 46 | `result-track:567e521ff5edbaa78d482ae9f43691afa5e926a5e6605f9cabbaeed053c17a3c` |
| 4 | `theorem` | [canonical_syntactic_shtuka_preserves_lookup_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/canonical-syntactic-shtuka-preserves-lookup-eq--9043432191d7dcc74f9285a1.md) | 53 | `result-track:9043432191d7dcc74f9285a1893589e6e157918ac01419de0c9572a421c95dbe` |
| 5 | `theorem` | [canonical_syntactic_shtuka_normalizedCarrier_eq_normalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/canonical-syntactic-shtuka-normalizedcarrier-eq-normalize--e01d30dc1717a91dc5a139ed.md) | 59 | `result-track:e01d30dc1717a91dc5a139ed93ff804f5ba80208b4a4427f6d1de7d14a3de501` |
| 6 | `theorem` | [canonical_syntactic_shtuka_rawCarrier_eq_source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/canonical-syntactic-shtuka-rawcarrier-eq-source--558d98c9ad1bd10a6af1a197.md) | 64 | `result-track:558d98c9ad1bd10a6af1a197c5cd09b696d95226efbbaaa3d3ff2e9a63a276c2` |
| 7 | `theorem` | [canonical_syntactic_shtuka_label](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/canonical-syntactic-shtuka-label--28b58ed7778d2faeefd1d012.md) | 69 | `result-track:28b58ed7778d2faeefd1d0122d1e47973179673066130e7cfdd912396fa4ba82` |
| 8 | `theorem` | [canonical_syntactic_shtuka_denies_geometric_frobenius](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/canonical-syntactic-shtuka-denies-geometric-frobenius--6bedd5cb1761ec56b095cd24.md) | 75 | `result-track:6bedd5cb1761ec56b095cd2460c0c09cbfe47c6ecd082004657b9b76a9c05469` |
| 9 | `theorem` | [canonical_syntactic_shtuka_denies_drinfeld_shtuka](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/canonical-syntactic-shtuka-denies-drinfeld-shtuka--623bec95ce191f4a08f8a57d.md) | 80 | `result-track:623bec95ce191f4a08f8a57d3fa94b1cea6fbcd2e55c75d2ca8b0a8289d4371c` |
| 10 | `theorem` | [canonical_syntactic_shtuka_denies_function_field_RH](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/canonical-syntactic-shtuka-denies-function-field-rh--4784f30469ffd39f70dd2bbb.md) | 85 | `result-track:4784f30469ffd39f70dd2bbbf539b6f50e6cbedc055217b55b728038ca77ad8e` |
| 11 | `theorem` | [canonical_syntactic_shtuka_denies_classical_RH](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/canonical-syntactic-shtuka-denies-classical-rh--1c240d40c4a655dcc04608ff.md) | 90 | `result-track:1c240d40c4a655dcc04608fff57bb3ac28de5fddffed27426abb5e84131975bc` |
| 12 | `theorem` | [canonical_syntactic_shtuka_denies_theorem_promotion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/canonical-syntactic-shtuka-denies-theorem-promotion--a3eda5a0198e023443d85e25.md) | 95 | `result-track:a3eda5a0198e023443d85e25a7b2f1c1b59d7771c484c0b38d59f84410209694` |
| 13 | `theorem` | [canonical_syntactic_shtuka_is_frobenius_shaped_not_geometric](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/canonical-syntactic-shtuka-is-frobenius-shaped-not-geometric--7dce0c555ae36b7bdd6fdc16.md) | 100 | `result-track:7dce0c555ae36b7bdd6fdc161869c955dc79990d7446ff6d55f303f0eaeaec94` |
| 14 | `theorem` | [lookup_fibration_preservation_is_not_RH_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/declarations/lookup-fibration-preservation-is-not-rh-authority--8a60d23aab84265f6de91909.md) | 108 | `result-track:8a60d23aab84265f6de9190935226ee36d6e5ca7d8a4f0398cb37a8ed22a6c47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
