# Verification target: GRWTSK.Algebra.LinearAlgebra.Prod.Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad1367a755eb1b0ff9309a7a521f5d3ebc204d8d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad1367a755eb1b0ff9309a7a521f5d3ebc204d8d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/prod--0f73df51cb88822d930ddc7b.md) | 54 | `declaration-track:0f73df51cb88822d930ddc7bcef0cf8ad87ae3386735d5ba080cf87ad1c9bfde` |
| 2 | `def` | [IsometryEquiv.prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/isometryequiv-prod--bb5aa575c14ede06da01c712.md) | 61 | `declaration-track:bb5aa575c14ede06da01c7126e8d312ba3692816f95975c9996249711d3ccc9a` |
| 3 | `theorem` | [Equivalent.prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/equivalent-prod--0dbf2118aff003907906879b.md) | 70 | `result-track:0dbf2118aff003907906879b9b3598eb213c0b3575207f9e923cf6e2a8f35b0d` |
| 4 | `theorem` | [anisotropic_of_prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/anisotropic-of-prod--d41bed8bd28386e08c738470.md) | 77 | `result-track:d41bed8bd28386e08c738470e88706b817fbc07a1a6c7a31052c53ad4e250dbe` |
| 5 | `theorem` | [nonneg_prod_iff](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/nonneg-prod-iff--0b55d78f4fcfaa509769919d.md) | 90 | `result-track:0b55d78f4fcfaa509769919dfa238d63ad6e35027e90430db7c51109985b6983` |
| 6 | `theorem` | [posDef_prod_iff](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/posdef-prod-iff--09cb48eed0b13cfdabe05da7.md) | 102 | `result-track:09cb48eed0b13cfdabe05da758838b929734fd4c78ff6f4c1ec5b7d60720a949` |
| 7 | `theorem` | [PosDef.prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/posdef-prod--3144ae88aa5349cdceabd23a.md) | 116 | `result-track:3144ae88aa5349cdceabd23a04b17d9af60e9af82bdcf034a2f2efa927ca6919` |
| 8 | `def` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/pi--dc95f2b467bc113aced67d17.md) | 124 | `declaration-track:dc95f2b467bc113aced67d17069499dca9cbb1561b1eedfb18b8746b8b031f1c` |
| 9 | `theorem` | [pi_apply](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/pi-apply--6b8d2f0ef2540069a05e9666.md) | 129 | `result-track:6b8d2f0ef2540069a05e9666e958bdc464332627cce179867687b8de54a42d28` |
| 10 | `def` | [IsometryEquiv.pi](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/isometryequiv-pi--26b73158101dbec9abae75ef.md) | 137 | `declaration-track:26b73158101dbec9abae75ef206ab3bd1bda09834cfb3776e6fc162946f279fb` |
| 11 | `theorem` | [Equivalent.pi](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/equivalent-pi--c615e1ded24de4e52bbafc05.md) | 146 | `result-track:c615e1ded24de4e52bbafc058aa4e1407301457612494c2ef9d9fbf2dec89cfd` |
| 12 | `theorem` | [anisotropic_of_pi](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/anisotropic-of-pi--b7a08d7a3027171197706b10.md) | 153 | `result-track:b7a08d7a3027171197706b10d064b10b8a739a94eaf657ca14366c4123aebff8` |
| 13 | `theorem` | [nonneg_pi_iff](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/nonneg-pi-iff--be9da9aa9f9d0ac13f3ba115.md) | 168 | `result-track:be9da9aa9f9d0ac13f3ba115faed9841de29732c45294323e6b255a6fce22762` |
| 14 | `theorem` | [posDef_pi_iff](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/declarations/posdef-pi-iff--1f9b9d5b65d1f119e9c86c1f.md) | 182 | `result-track:1f9b9d5b65d1f119e9c86c1f9bfd542c491a0aa59eb7e8f7d7e464c8051d3537` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
