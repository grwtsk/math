# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67e134dffd7ea3fa74cbbf6db37a4c8a67597dce",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67e134dffd7ea3fa74cbbf6db37a4c8a67597dce`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ordinaryMomentRow](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/declarations/ordinarymomentrow--a9b8ebdc60ec8ad7bbde2d06.md) | 48 | `declaration-track:a9b8ebdc60ec8ad7bbde2d069eb321637ee725ddf0a538a93af4be8ccfe54989` |
| 2 | `def` | [reciprocalMomentRow](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/declarations/reciprocalmomentrow--d49a9b4eb94a4b490eb9ff07.md) | 54 | `declaration-track:d49a9b4eb94a4b490eb9ff073102227021ea45abcf587de1aeda58915488c2c6` |
| 3 | `theorem` | [ordinaryMomentRow_cofactor_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/declarations/ordinarymomentrow-cofactor-line--ae9dc3ed93077b7bba2ce89f.md) | 61 | `result-track:ae9dc3ed93077b7bba2ce89f7f1d649071a049fab430951da191eb09011f4df7` |
| 4 | `theorem` | [reciprocalMomentRow_cofactor_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/declarations/reciprocalmomentrow-cofactor-line--1fc454d35b7ba25a352f3172.md) | 73 | `result-track:1fc454d35b7ba25a352f31720584da56d1ca3de7a1b75cb96180f3a40bf9d130` |
| 5 | `theorem` | [coefficient_line_of_two_moments](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/declarations/coefficient-line-of-two-moments--8bc4a1d570f7425cb2e9abfe.md) | 86 | `result-track:8bc4a1d570f7425cb2e9abfe239e71cdb82ae4c2254089bd394d952669e1f292` |
| 6 | `theorem` | [momentRows_zero_iff_cofactor_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/declarations/momentrows-zero-iff-cofactor-line--64e2d829d44c303dba554f00.md) | 140 | `result-track:64e2d829d44c303dba554f0049cf5d4e97baf507937aaa5ec5dfde2448dbb34e` |
| 7 | `def` | [actualThreeTentFunction](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/declarations/actualthreetentfunction--fe870819b46cada9ca019667.md) | 155 | `declaration-track:fe870819b46cada9ca0196678237ded8da4cf9ad11b7e3dd7b4575d6f8e4569e` |
| 8 | `theorem` | [actualThreeTentFunction_corrected](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/declarations/actualthreetentfunction-corrected--bd538f0c5c864e691af3c3da.md) | 162 | `result-track:bd538f0c5c864e691af3c3daffe61e0b04702667c2227b1e6a12cb7489965479` |
| 9 | `theorem` | [actualThreeTentFunction_ordinaryMoment_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/declarations/actualthreetentfunction-ordinarymoment-eq--7035f595ff995871ca89a01e.md) | 169 | `result-track:7035f595ff995871ca89a01e544bd6a8d850103960f04714b7fa8e984cdb69c5` |
| 10 | `theorem` | [actualThreeTentFunction_reciprocalMoment_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/declarations/actualthreetentfunction-reciprocalmoment-eq--46544601d4c039c6dfffc2b4.md) | 190 | `result-track:46544601d4c039c6dfffc2b42563815a891bc13edb982a68e67b131a0eea1ae7` |
| 11 | `theorem` | [physicalTwoMoments_iff_cofactor_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/declarations/physicaltwomoments-iff-cofactor-line--05d4447c1ea452ae31e71d13.md) | 213 | `result-track:05d4447c1ea452ae31e71d135ea644be38b307a5db1e19abde9d29c4eaba74ab` |
| 12 | `theorem` | [twoMomentVectors_share_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/declarations/twomomentvectors-share-line--5ea2bfe16388df0f44c97075.md) | 236 | `result-track:5ea2bfe16388df0f44c970750f68075663e783bc04146bb6decc05581e4c4e93` |
| 13 | `theorem` | [corrected_generator_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/declarations/corrected-generator-nonzero--350cf7b3d25d47b96e9f1932.md) | 249 | `result-track:350cf7b3d25d47b96e9f1932d1a513f012b4d719eb08a9240620848644e39ebb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
