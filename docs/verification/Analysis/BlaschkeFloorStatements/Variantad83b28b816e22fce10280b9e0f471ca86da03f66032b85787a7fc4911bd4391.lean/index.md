# Verification target: GRWTSK.Analysis.BlaschkeFloorStatements.Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "933171cd926edab02b1ba71257ecaa78e2e3be5f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/index.md) · [Full source](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `933171cd926edab02b1ba71257ecaa78e2e3be5f`.

Source path: `GRWTSK/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Norm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blaschkeAtOne](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/declarations/blaschkeatone--806ef9527f61c1ca2b17c708.md) | 17 | `declaration-track:806ef9527f61c1ca2b17c708ad641c3cae8db94a92403081c8e8e5becb2d4605` |
| 2 | `theorem` | [reference_denominator_ne_zero](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/declarations/reference-denominator-ne-zero--b75d4a55e6eadca18ed7099e.md) | 20 | `result-track:b75d4a55e6eadca18ed7099e145fb34f4787d914ba40d482ffb2c3e14cff7d19` |
| 3 | `theorem` | [reference_denominator_normSq](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/declarations/reference-denominator-normsq--0de95227dfb68006ca04106f.md) | 28 | `result-track:0de95227dfb68006ca04106f051253d37c615f7a2eef69fc2052f15c1f97ee0a` |
| 4 | `theorem` | [blaschke_deficit](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/declarations/blaschke-deficit--dc472388d96a0d07455b3f95.md) | 35 | `result-track:dc472388d96a0d07455b3f95bdb36bedfc59f98e64e02381b20ae8699a0f63e5` |
| 5 | `theorem` | [factor_deficit_lower](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/declarations/factor-deficit-lower--244c5c9deb45f19f9b1fd2dd.md) | 47 | `result-track:244c5c9deb45f19f9b1fd2dd6c316dac421f874c5101100cc82557ba0c8c5423` |
| 6 | `theorem` | [blaschke_floor_pos](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/declarations/blaschke-floor-pos--57498e298711633da85be298.md) | 55 | `result-track:57498e298711633da85be2980e070a6b2b657e59b26df4cf326b4890abc53a0c` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/declarations/example--25711ee737659e91f48c8851.md) | 66 | `declaration-track:25711ee737659e91f48c88514ff8f6ba2a30e008e79675ca972613e0deff6623` |
| 8 | `example` | [(anonymous)](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/declarations/example--545b7b07a0ca20d8210ec873.md) | 68 | `declaration-track:545b7b07a0ca20d8210ec873f0b1bf8b3178bcd6606cd8d329fb6bfc1684eb0f` |
| 9 | `example` | [(anonymous)](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/declarations/example--fe6b151d84e075e5fa6fbed2.md) | 72 | `declaration-track:fe6b151d84e075e5fa6fbed2a073ecfe599f3506b9618aea3eca3dde8e58229a` |
| 10 | `example` | [(anonymous)](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/declarations/example--20d71d3018a8f547671cfc65.md) | 76 | `declaration-track:20d71d3018a8f547671cfc65e923e2e4b5dddd6e931ac9cc68db7dcffe579aed` |
| 11 | `example` | [(anonymous)](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/declarations/example--bc3959ce7a1976fbb1002da3.md) | 80 | `declaration-track:bc3959ce7a1976fbb1002da398feb22a8112e4ca56549074cbbc1c4d008aa9d8` |
| 12 | `example` | [(anonymous)](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391.lean/declarations/example--a40cf093cf59080e55a3963c.md) | 84 | `declaration-track:a40cf093cf59080e55a3963ce05fd60ffaa14683b7940a342ad8c04ba4fc40ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
