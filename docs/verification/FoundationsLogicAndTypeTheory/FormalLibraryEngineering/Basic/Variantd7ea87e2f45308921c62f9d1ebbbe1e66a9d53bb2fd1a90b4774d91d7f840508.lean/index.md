# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ea0998e525ff0017113a26c0a85b3d306545b35",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ea0998e525ff0017113a26c0a85b3d306545b35`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.RArray` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatInstTesters` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Offset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Expr.applyPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/expr-applyperm--1b3343012fddc55700ab1478.md) | 18 | `declaration-track:1b3343012fddc55700ab14785dd856359c94f09e0e6382212f2420c785239af5` |
| 2 | `def` | [ExprCnstr.applyPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/exprcnstr-applyperm--52cadcaf420cbf8482e579c3.md) | 29 | `declaration-track:52cadcaf420cbf8482e579c3d479518b10fbf69c829c60e4b48592f43df07acd` |
| 3 | `abbrev` | [LinearExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/linearexpr--ba1edac2f20b12c6c45fe3a4.md) | 40 | `declaration-track:ba1edac2f20b12c6c45fe3a4413be20161c1d0d6e5b9035e0d0e68ab9deff0c6` |
| 4 | `abbrev` | [LinearCnstr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/linearcnstr--be82ab040e637ae7283e12d8.md) | 41 | `declaration-track:be82ab040e637ae7283e12d8777d8541bc5f04cbc693bccbb7c634ad00f625a5` |
| 5 | `abbrev` | [PolyExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/polyexpr--a18c2ca94c849b67739aad90.md) | 42 | `declaration-track:a18c2ca94c849b67739aad901511daaab185bb90a4d8e432be8915d752061ee2` |
| 6 | `def` | [LinearExpr.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/linearexpr-toexpr--bb1d10d04f242c5306719ac1.md) | 44 | `declaration-track:bb1d10d04f242c5306719ac1860e1af50d1ebb0b45561b436df7181dcf934cbe` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/instance--00b601057a9c05bdba23db46.md) | 53 | `declaration-track:00b601057a9c05bdba23db46e5d039d74b9a376a5545db648ddf1fa07b1bdd6e` |
| 8 | `def` | [LinearCnstr.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/linearcnstr-toexpr--dcc051c1df585339711f76fb.md) | 57 | `declaration-track:dcc051c1df585339711f76fbb1e8a0238888a3e80b39b3829d1d37a6371af15a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/instance--fc3d8187056bc0645adf01c0.md) | 60 | `declaration-track:fc3d8187056bc0645adf01c056a2fe8260bdef530a56f3c3f68a473193342996` |
| 10 | `def` | [LinearExpr.toArith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/linearexpr-toarith--d3c04b2706feafc6f3afa1a0.md) | 65 | `declaration-track:d3c04b2706feafc6f3afa1a039fe683de036a86ff5055ade347a6762d3df38f6` |
| 11 | `def` | [LinearCnstr.toArith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/linearcnstr-toarith--888c8d8368bde0e6604a02e8.md) | 73 | `declaration-track:888c8d8368bde0e6604a02e88321698ea2c4edc57b0f4d26801fd36550ed1ad5` |
| 12 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/state--d432d875121fb7dfd77a8942.md) | 81 | `declaration-track:d432d875121fb7dfd77a89424c598013bd0065ff5cf0863c3090896156cef1be` |
| 13 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/m--1657fd85b2cc33245324b568.md) | 85 | `declaration-track:1657fd85b2cc33245324b568335e87471b74149f8718399a56531d8081e33c95` |
| 14 | `def` | [addAsVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/addasvar--f78723de9901a8d67e04b17e.md) | 89 | `declaration-track:f78723de9901a8d67e04b17ebf7e0c43a24f2cff8a8045e7bb69bac9d8789c40` |
| 15 | `def` | [toLinearExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/tolinearexpr--d052acef06d32bfff9cb81f3.md) | 98 | `declaration-track:d052acef06d32bfff9cb81f3810c5fcf411415b41c69772c1784e01bacde270e` |
| 16 | `def` | [toLinearCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/tolinearcnstr--4865663cbb9bc7f84ac4867a.md) | 138 | `declaration-track:4865663cbb9bc7f84ac4867ae8822600f2d100c65bb4cf413746e59ee51592fb` |
| 17 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/run--1e7ea7683c152eb55410d1ea.md) | 161 | `declaration-track:1e7ea7683c152eb55410d1ea7b6535723a55c96c7093d33a2ba8a22dc62ef1ce` |
| 18 | `def` | [toLinearExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/tolinearexpr--98c60e38bbe1e30bb1a5a12c.md) | 167 | `declaration-track:98c60e38bbe1e30bb1a5a12ca425a89468056a624027603564841ba0aa9c7a0b` |
| 19 | `def` | [toLinearCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/tolinearcnstr--c178813ae78176d9260d2e3b.md) | 176 | `declaration-track:c178813ae78176d9260d2e3bee96795791e096ace316bf05d2d71685d27d3024` |
| 20 | `def` | [toContextExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/declarations/tocontextexpr--89766c684690ec86e4a1068e.md) | 186 | `declaration-track:89766c684690ec86e4a1068eda6eafe9a3e39b029be8c7f1e76c63f5ca8c1402` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
