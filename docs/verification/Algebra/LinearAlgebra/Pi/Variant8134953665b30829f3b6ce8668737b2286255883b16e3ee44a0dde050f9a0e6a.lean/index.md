# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b619ae8e21ecc6cb4e3b626bf303eeb0668e2627",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b619ae8e21ecc6cb4e3b626bf303eeb0668e2627`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp.LSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearEquiv.finsuppUnique](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a.lean/declarations/linearequiv-finsuppunique--058ddedf3a8a88bf4db9b2b5.md) | 41 | `declaration-track:058ddedf3a8a88bf4db9b2b5e1c6d79d588316bb8894b91021e0f5850de97984` |
| 2 | `theorem` | [LinearEquiv.finsuppUnique_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a.lean/declarations/linearequiv-finsuppunique-apply--f0b37a09e3e6199adc007fc2.md) | 49 | `result-track:f0b37a09e3e6199adc007fc293550d389f7f8e4a11bcf10688910f5c9fe49b49` |
| 3 | `theorem` | [LinearEquiv.finsuppUnique_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a.lean/declarations/linearequiv-finsuppunique-symm-apply--d17dfe99e66fa23f493a9845.md) | 56 | `result-track:d17dfe99e66fa23f493a9845686f68b7fc5b65a4950707ba49b6150635b807fe` |
| 4 | `def` | [lcoeFun](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a.lean/declarations/lcoefun--92ee2cf549d6c79b45ae1c24.md) | 72 | `declaration-track:92ee2cf549d6c79b45ae1c24eea4bda8f1f15f7d02ace46a490296274af7db6d` |
| 5 | `def` | [splittingOfFunOnFintypeSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a.lean/declarations/splittingoffunonfintypesurjective--2cd6e38a0edb33861bae94c5.md) | 96 | `declaration-track:2cd6e38a0edb33861bae94c561b3dc27266e7b3c7d995a30390e215aacb1bb4f` |
| 6 | `theorem` | [splittingOfFunOnFintypeSurjective_splits](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a.lean/declarations/splittingoffunonfintypesurjective-splits--c6f6b504132524663c2a2a9a.md) | 101 | `result-track:c6f6b504132524663c2a2a9ab3858e94bf7c6361130dbc5bf4293da655a6f108` |
| 7 | `theorem` | [leftInverse_splittingOfFunOnFintypeSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a.lean/declarations/leftinverse-splittingoffunonfintypesurjective--2ac8b1b61238ad344b3222e3.md) | 110 | `result-track:2ac8b1b61238ad344b3222e3628555347f69ba96560af69f056bf0609a659426` |
| 8 | `theorem` | [splittingOfFunOnFintypeSurjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8134953665b30829f3b6ce8668737b2286255883b16e3ee44a0dde050f9a0e6a.lean/declarations/splittingoffunonfintypesurjective-injective--52631645c61f9dafaf27f6f6.md) | 114 | `result-track:52631645c61f9dafaf27f6f62fd2a4f6e2a0879ef473bebcab16e2cf58245bfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
