# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerProduct.Variant78b8066354c5628311ef25eb4e053ec4def485b65e317b06a2bed6471363036a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bc1401bacb1bcb21049c46ae4531457ccfb75cf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant78b8066354c5628311ef25eb4e053ec4def485b65e317b06a2bed6471363036a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant78b8066354c5628311ef25eb4e053ec4def485b65e317b06a2bed6471363036a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant78b8066354c5628311ef25eb4e053ec4def485b65e317b06a2bed6471363036a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bc1401bacb1bcb21049c46ae4531457ccfb75cf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant78b8066354c5628311ef25eb4e053ec4def485b65e317b06a2bed6471363036a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant78b8066354c5628311ef25eb4e053ec4def485b65e317b06a2bed6471363036a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.DirichletSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Number.EulerProduct` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InfiniteEulerProductAuthority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant78b8066354c5628311ef25eb4e053ec4def485b65e317b06a2bed6471363036a.lean/declarations/infiniteeulerproductauthority--d0a8a5c4a8d986488a2f2e21.md) | 22 | `declaration-track:d0a8a5c4a8d986488a2f2e21f3954ceef360a3903e6191b9986bcd469c3aae95` |
| 2 | `theorem` | [infinite_euler_product_requires_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant78b8066354c5628311ef25eb4e053ec4def485b65e317b06a2bed6471363036a.lean/declarations/infinite-euler-product-requires-authority--d29d49183f16b53a2de8d44f.md) | 31 | `result-track:d29d49183f16b53a2de8d44f0a39695a0dfaaa9eddf06115d3a51c517ae7060a` |
| 3 | `def` | [FiniteEulerWindowProvesInfiniteEulerProduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant78b8066354c5628311ef25eb4e053ec4def485b65e317b06a2bed6471363036a.lean/declarations/finiteeulerwindowprovesinfiniteeulerproduct--2b8db4b516f3ab85c332840a.md) | 41 | `declaration-track:2b8db4b516f3ab85c332840a9f74447255822f8ecee3c1ebdc447f985c950b32` |
| 4 | `theorem` | [finite_euler_window_not_infinite_product](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant78b8066354c5628311ef25eb4e053ec4def485b65e317b06a2bed6471363036a.lean/declarations/finite-euler-window-not-infinite-product--7d5c436ce5ce4a4623aa31ec.md) | 45 | `result-track:7d5c436ce5ce4a4623aa31ec6f64a797e7d49fd57611d959d84f71cc6d1abd26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
