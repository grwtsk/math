# Verification target: GRWTSK.Algebra.LinearAlgebra.Prod.Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b57da388bf8929289dd5dec14df51fce5996d44f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b57da388bf8929289dd5dec14df51fce5996d44f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/prod--015fbdb6a194fced7ae4e908.md) | 62 | `declaration-track:015fbdb6a194fced7ae4e9080ed5f99f117fd803d35c4f2c95d60aca7a18e77d` |
| 2 | `def` | [IsometryEquiv.prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/isometryequiv-prod--6d98e802aae66b8b9ce2acb6.md) | 69 | `declaration-track:6d98e802aae66b8b9ce2acb6db5a3207887b09aaf27b438ce574cab0d88c45d8` |
| 3 | `theorem` | [Equivalent.prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/equivalent-prod--42cc53ee9dd932eb936be10c.md) | 78 | `result-track:42cc53ee9dd932eb936be10c6caeb2287e2dc73be7c855030733b77ce27c251b` |
| 4 | `theorem` | [anisotropic_of_prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/anisotropic-of-prod--05e9d7e7bdbccb1aec274002.md) | 85 | `result-track:05e9d7e7bdbccb1aec2740023dacd723c8dfbf568cdb5b89208515c720d8fb05` |
| 5 | `theorem` | [nonneg_prod_iff](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/nonneg-prod-iff--2773b2bb84781f91d1cd56cb.md) | 98 | `result-track:2773b2bb84781f91d1cd56cb1b019c607a8ecb585bda8b4c3d757ca56fbcba23` |
| 6 | `theorem` | [posDef_prod_iff](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/posdef-prod-iff--e9392291ae1317577e6daf21.md) | 110 | `result-track:e9392291ae1317577e6daf215bb86a147300de25f28a86f583f7c8d2bf0d3ea9` |
| 7 | `theorem` | [PosDef.prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/posdef-prod--b5dc177be4c2158893602c63.md) | 124 | `result-track:b5dc177be4c2158893602c63288b0cbacb75514d43e0194d7d9f49135b6c4851` |
| 8 | `def` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/pi--8ff365c006db5a46661c25d7.md) | 132 | `declaration-track:8ff365c006db5a46661c25d719883772bd161ffb9c3b0e7ab9f5ac5f0a384431` |
| 9 | `theorem` | [pi_apply](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/pi-apply--9f94b40cb5a7ea02ab875ccf.md) | 137 | `result-track:9f94b40cb5a7ea02ab875ccf2c3dd3fbd8763b9977c31e05279a05212cbc867c` |
| 10 | `def` | [IsometryEquiv.pi](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/isometryequiv-pi--713a1d0c473af139fab7ef86.md) | 145 | `declaration-track:713a1d0c473af139fab7ef866c57399880c946ec51f2eeaafcedf9339b111300` |
| 11 | `theorem` | [Equivalent.pi](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/equivalent-pi--a2190d9c9db259304fcb9fcf.md) | 154 | `result-track:a2190d9c9db259304fcb9fcf2480fc690ccefdcabc55c13995ee6a2f2de3351f` |
| 12 | `theorem` | [anisotropic_of_pi](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/anisotropic-of-pi--209fe8f125e73d753a8a654d.md) | 161 | `result-track:209fe8f125e73d753a8a654ddb5761cab216442a1ff5d1395618756572dff540` |
| 13 | `theorem` | [nonneg_pi_iff](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/nonneg-pi-iff--d4091be082b1f5294396c9c2.md) | 176 | `result-track:d4091be082b1f5294396c9c273a5b881f769229ecfb2196fb180b4d1e59a9bdb` |
| 14 | `theorem` | [posDef_pi_iff](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/declarations/posdef-pi-iff--d045ac2663fc3c38b77acffd.md) | 190 | `result-track:d045ac2663fc3c38b77acffddcadaf51666e2bb46d15613b134b3602412deae0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
