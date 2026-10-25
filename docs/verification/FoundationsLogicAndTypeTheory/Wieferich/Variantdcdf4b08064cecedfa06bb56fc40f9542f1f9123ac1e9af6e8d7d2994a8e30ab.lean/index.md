# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Wieferich.Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e5b5c6ff27700a46f3118b991dd5da55f20b143",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e5b5c6ff27700a46f3118b991dd5da55f20b143`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Totient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 13; external provider; requires a separately pinned dependency.
- `PrimeCert.Interval` — import line 14; external provider; requires a separately pinned dependency.
- `PrimeCert.PowMod` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Wieferich](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/wieferich--221a0a95971e313846ba2ec9.md) | 31 | `declaration-track:221a0a95971e313846ba2ec9a669e8d282033bb7caf21a42687ae0e8f1c9e645` |
| 2 | `def` | [Mirimanoff](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/mirimanoff--507a087d833819c53db8f7dd.md) | 34 | `declaration-track:507a087d833819c53db8f7dd5cf84ac7907ef56023cd3ff3bf7877e45c5153c1` |
| 3 | `def` | [wieferichKR](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/wieferichkr--7b1c98d15dda039bdcad45d2.md) | 37 | `declaration-track:7b1c98d15dda039bdcad45d264af8966b757e3b7851a53ccfbbcd801685a40c9` |
| 4 | `def` | [mirimanoffKR](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/mirimanoffkr--0d6340c0ed5248060d35ce30.md) | 40 | `declaration-track:0d6340c0ed5248060d35ce306c83f744cd0789bc9bd9e3c2410881a4a6d03480` |
| 5 | `theorem` | [wieferichKR_eq_true_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/wieferichkr-eq-true-iff--c6ec70e0b76e7acafb5a3b03.md) | 43 | `result-track:c6ec70e0b76e7acafb5a3b03f76d76d902a3c7022ec84059be6fb43d8978167f` |
| 6 | `theorem` | [wieferichKR_eq_false_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/wieferichkr-eq-false-iff--3d4082c6472b31953fcb717f.md) | 48 | `result-track:3d4082c6472b31953fcb717fdc016ce58cf05025f6b7733262817a4bb20c2a47` |
| 7 | `theorem` | [mirimanoffKR_eq_true_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/mirimanoffkr-eq-true-iff--7f0171c78df6671309fe202c.md) | 52 | `result-track:7f0171c78df6671309fe202c39c8dc3a9a147cfc47ff9f2e797e46b833c5d3ef` |
| 8 | `theorem` | [mirimanoffKR_eq_false_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/mirimanoffkr-eq-false-iff--f6ef0e972681e4329c27dc4d.md) | 57 | `result-track:f6ef0e972681e4329c27dc4dcb835da006dd55e93966a5bb34591364f1afb831` |
| 9 | `theorem` | [wieferich_mirimanoff₁](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/wieferich-mirimanoff--2fa52186f2c8093a370bd80a.md) | 69 | `result-track:2fa52186f2c8093a370bd80a4e38ee965fd736e587c2d551e42cd9eefbafc2d9` |
| 10 | `theorem` | [wieferich₅](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/wieferich--8f0a6e72bc9a8027a6e59874.md) | 76 | `result-track:8f0a6e72bc9a8027a6e59874001bef6a56d8bbff343e6ff4a559a44ac794a1d8` |
| 11 | `theorem` | [Nat.Prime.mod_6](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/nat-prime-mod-6--e81beb2ba899987c8cca33d5.md) | 79 | `result-track:e81beb2ba899987c8cca33d534a8847ae189b9037acaf6ae3194b5bf2c03592e` |
| 12 | `theorem` | [wieferich_mirimanoff](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/wieferich-mirimanoff--bf0dca6a29c700de20175498.md) | 97 | `result-track:bf0dca6a29c700de20175498284908ecc62b8abe1d6e93096ef8da7ea5dd8f6b` |
| 13 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.Wieferich.Variant33077ab5c0fe5e1854637f10360fb15212e3ef450f7decb6d2863a1446711e69.pow_eq_one_of_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/root-grwtsk-foundationslogicandtypetheory-wieferich-variant33077ab5c0fe5--89b6de62092d3d0b63e60cc4.md) | 108 | `result-track:89b6de62092d3d0b63e60cc4d5006d177691dcf5c7d5246a9c8786d9e8742ca7` |
| 14 | `theorem` | [miller_rabin_squarefree](../../../../mathematics/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/declarations/miller-rabin-squarefree--6fe089e25d17cb92d1b3bd95.md) | 113 | `result-track:6fe089e25d17cb92d1b3bd95a249c586cc6c4e62954e0741778b72ccd507bbdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
