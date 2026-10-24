# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.InvariantExtension.Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56b1de76a32de538ae4778dcd352aa8dbb4c65f2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56b1de76a32de538ae4778dcd352aa8dbb4c65f2`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Ultra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Unbundled.FiniteExtension` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [algNormOfAlgEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean/declarations/algnormofalgequiv--e14b0ea4325e0353e4ff140b.md) | 52 | `declaration-track:e14b0ea4325e0353e4ff140ba090caf4a05a45edea6f0946f10ff0919f52d45a` |
| 2 | `theorem` | [algNormOfAlgEquiv_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean/declarations/algnormofalgequiv-apply--199bfad0817305222bf487a8.md) | 63 | `result-track:199bfad0817305222bf487a8b994f54780ab888725d4c3344f2cda82b71b07fb` |
| 3 | `theorem` | [isPowMul_algNormOfAlgEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean/declarations/ispowmul-algnormofalgequiv--08de6578bf8c4757d118ffb2.md) | 69 | `result-track:08de6578bf8c4757d118ffb2e4be3afa64cce9366f5a02104d448c9583d90854` |
| 4 | `theorem` | [isNonarchimedean_algNormOfAlgEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean/declarations/isnonarchimedean-algnormofalgequiv--baf41bafdddda0a75f3f0a7f.md) | 77 | `result-track:baf41bafdddda0a75f3f0a7f60cc5c4c494f782ae66dd9a23dd51f9f5a71435c` |
| 5 | `theorem` | [algNormOfAlgEquiv_extends](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean/declarations/algnormofalgequiv-extends--4b8854276c9c827617ba8f80.md) | 85 | `result-track:4b8854276c9c827617ba8f80c9d6948df2256a1c9e86f243ce322c23a69da331` |
| 6 | `def` | [invariantExtension](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean/declarations/invariantextension--61af95f2358050609469c6a4.md) | 99 | `declaration-track:61af95f2358050609469c6a4c3a78edd289e78f33d8890cc0714b3c307457125` |
| 7 | `theorem` | [invariantExtension_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean/declarations/invariantextension-apply--3d3fcf111433bd12bc33efd6.md) | 120 | `result-track:3d3fcf111433bd12bc33efd645441abf4e1fe7231a241523b4532874f0b1cf38` |
| 8 | `theorem` | [isPowMul_invariantExtension](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean/declarations/ispowmul-invariantextension--025d4e84405ab8b51817a4b5.md) | 125 | `result-track:025d4e84405ab8b51817a4b5f9302fe585223cfeb9f67308e7706d9f3e503994` |
| 9 | `theorem` | [isNonarchimedean_invariantExtension](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean/declarations/isnonarchimedean-invariantextension--22284b5aad4699fd041da14e.md) | 133 | `result-track:22284b5aad4699fd041da14e7de4bc2e464493cbfb4d72c9c49027fde0947ea5` |
| 10 | `theorem` | [invariantExtension_extends](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variant70ffee1fa35be892c806200dad836c63b38cb84e66ba2828c747f324cd5db41a.lean/declarations/invariantextension-extends--1de037f41d566be501f7261a.md) | 140 | `result-track:1de037f41d566be501f7261a7b9c93ce0f5c1fb5cc723e9549eae26cda430141` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
