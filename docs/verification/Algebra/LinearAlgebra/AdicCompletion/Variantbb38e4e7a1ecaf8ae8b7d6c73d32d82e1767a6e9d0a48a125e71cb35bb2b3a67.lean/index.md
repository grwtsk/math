# Verification target: GRWTSK.Algebra.LinearAlgebra.AdicCompletion.Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "402a28d81e26d0b2f627bfb14a151487ee0e7648",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `402a28d81e26d0b2f627bfb14a151487ee0e7648`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.JacobsonIdeal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsHausdorff](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/ishausdorff--96eec984631719d6ee5bb35d.md) | 48 | `declaration-track:96eec984631719d6ee5bb35d92cfb7891e1fe0e6bb22e90b1b0acdd0e81b75dd` |
| 2 | `class` | [IsPrecomplete](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/isprecomplete--35f127735d99a46925ea91d0.md) | 53 | `declaration-track:35f127735d99a46925ea91d04b1bd9f012faf9b3684bdd62f408da052d0045ec` |
| 3 | `class` | [IsAdicComplete](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/isadiccomplete--5910075dca38461beff7567d.md) | 59 | `declaration-track:5910075dca38461beff7567d123b331dbc1d7361eeb38bbb3daf89b7bb6be537` |
| 4 | `theorem` | [IsHausdorff.haus](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/ishausdorff-haus--0491c858884222d9f2a2c8df.md) | 64 | `result-track:0491c858884222d9f2a2c8df042e362ae3c445cdf0bef2737cf2c03b69c357d6` |
| 5 | `theorem` | [isHausdorff_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/ishausdorff-iff--c967dd5a5c7f965ae26a010b.md) | 69 | `result-track:c967dd5a5c7f965ae26a010b69e9366b96e46d0e3b8d3c3efec43a634622a5f5` |
| 6 | `theorem` | [IsPrecomplete.prec](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/isprecomplete-prec--4a897bf91ad8630e9dda6ed0.md) | 74 | `result-track:4a897bf91ad8630e9dda6ed010c0768fbf7ff38b360df0833d81dfe112c47294` |
| 7 | `theorem` | [isPrecomplete_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/isprecomplete-iff--659b3c450188d8c807958b50.md) | 80 | `result-track:659b3c450188d8c807958b50cde0922dde2050712ce34480f9dfc35ed70ad3b8` |
| 8 | `def` | [Hausdorffification](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/hausdorffification--2829b0c20077e12fcbe8d84f.md) | 92 | `declaration-track:2829b0c20077e12fcbe8d84f84296bd434ceffb1887abf7e19b02cd39aafff85` |
| 9 | `def` | [adicCompletion](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/adiccompletion--af5632b955fa61789626598b.md) | 99 | `declaration-track:af5632b955fa61789626598bf935d882649917fbfdbf29862035d915fc03b484` |
| 10 | `instance` | [bot](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/bot--b3b5a817e03af8ba2b49bf14.md) | 112 | `declaration-track:b3b5a817e03af8ba2b49bf1426356cce866ff8b68e183f56bbd13071fd349cc7` |
| 11 | `theorem` | [subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/subsingleton--e6cf4c1647c8630de25583f7.md) | 118 | `result-track:e6cf4c1647c8630de25583f785542ddb22db80957b829b9c8915c9881e673659` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/instance--8343ac63ac589ec6a4781800.md) | 126 | `declaration-track:8343ac63ac589ec6a47818005c823fdf518532c35d25f3f479e9636efed4a0ac` |
| 13 | `theorem` | [iInf_pow_smul](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/iinf-pow-smul--ba4a44cfd468cb3429e72ce5.md) | 132 | `result-track:ba4a44cfd468cb3429e72ce51b713047c93c64a4d602efa31dced198df0168e5` |
| 14 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/of--c2f161daddd00a71520e69eb.md) | 142 | `declaration-track:c2f161daddd00a71520e69eb4ec74548e6b60bdb203387ffc8876df34c38a966` |
| 15 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/induction-on--81be9c31002d4d4ce9ef4966.md) | 149 | `result-track:81be9c31002d4d4ce9ef4966b986f517fe2aad3aa7985311aed07dcca6dc0fec` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/instance--d10ec3f5ec4c86299130f194.md) | 156 | `declaration-track:d10ec3f5ec4c86299130f194fbb8aed87d95ae2f2f3fe088233c84d3d57d8fb2` |
| 17 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/lift--cce81598cf448d36df1bfc98.md) | 168 | `declaration-track:cce81598cf448d36df1bfc98ef577d8bd1b80e3dfec18663b890e153a784a33d` |
| 18 | `theorem` | [lift_of](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/lift-of--d5338706162ba4f60b18b496.md) | 175 | `result-track:d5338706162ba4f60b18b496d4c1d0e9db57b05c246aadc7eed4316d90873c43` |
| 19 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/lift-comp-of--b1a36170d1bcb5abfeb2bff3.md) | 179 | `result-track:b1a36170d1bcb5abfeb2bff372955fa5f64ea288874868f4502b0c30c165d9c9` |
| 20 | `theorem` | [lift_eq](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/lift-eq--72b593d2390f3331e95a783c.md) | 184 | `result-track:72b593d2390f3331e95a783cc55e57a7d5a71e82b683d9aa4ddb2318028fa31b` |
| 21 | `instance` | [bot](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/bot--be041a96a58a8650df31738a.md) | 193 | `declaration-track:be041a96a58a8650df31738a93d5987163ad71b7e776c4c9626fa3ccf92ba964` |
| 22 | `instance` | [top](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/top--e88f3b949d619c118143adc2.md) | 202 | `declaration-track:e88f3b949d619c118143adc2eef28f0088eca0d3a6376e600709f11761b1c496` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/instance--aca6b4f977cfdb057a7e45b0.md) | 209 | `declaration-track:aca6b4f977cfdb057a7e45b0fa871cabd005e4b3e054bf5218a7082a310c790d` |
| 24 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/of--0e240d900a250491e11f6cfe.md) | 218 | `declaration-track:0e240d900a250491e11f6cfe184a2511e52e0fbdd833e55a81d7f5d4e9ece96c` |
| 25 | `theorem` | [of_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/of-apply--2f36fc20a2184e417e75cee7.md) | 226 | `result-track:2f36fc20a2184e417e75cee717c71c4877b1f4a13881c586529f93e5fb2f9943` |
| 26 | `def` | [eval](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/eval--a8e29b93fe19c1908a006fe8.md) | 231 | `declaration-track:a8e29b93fe19c1908a006fe836ab176e0fef5fb72b065a4daa206a159853e7b0` |
| 27 | `theorem` | [coe_eval](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/coe-eval--f84a6516613c63b31fa25cfd.md) | 238 | `result-track:f84a6516613c63b31fa25cfdb122ada8ce805c76c3f59ad145d11f9d09306896` |
| 28 | `theorem` | [eval_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/eval-apply--d2ae203ece946f50b1e7919d.md) | 243 | `result-track:d2ae203ece946f50b1e7919dd892705d10d2dd2df684d7ac7f20e34b85b2b24d` |
| 29 | `theorem` | [eval_of](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/eval-of--cf3d7d1b9803d108e098e346.md) | 248 | `result-track:cf3d7d1b9803d108e098e346f0f7d00cd9ac9fed8d4590c32f667c9a981541cd` |
| 30 | `theorem` | [eval_comp_of](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/eval-comp-of--0e54ebd52d6bf1bde36f116b.md) | 253 | `result-track:0e54ebd52d6bf1bde36f116bd3ec6a2b051815f0e6901c83162d80c97a935b34` |
| 31 | `theorem` | [range_eval](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/range-eval--1afd80b185cfa7589c6039f9.md) | 258 | `result-track:1afd80b185cfa7589c6039f9f087796804a1daf9aa378a7a58e77664669d8ef3` |
| 32 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/ext--a8099bb6aa2453c0284e042c.md) | 265 | `result-track:a8099bb6aa2453c0284e042c774a88289b99d8f25e381ee194b39ca4307a0de7` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/instance--435d3e896135c34c2eb2e69d.md) | 271 | `declaration-track:435d3e896135c34c2eb2e69dcd0f1bfef2201ae8ebf76b6cced6f5154835e126` |
| 34 | `instance` | [bot](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/bot--8a868df7ac758ee5f485b79e.md) | 281 | `declaration-track:8a868df7ac758ee5f485b79eab93eab10618dfa491bb7c076efe558e8c62d6fb` |
| 35 | `theorem` | [subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/subsingleton--8a48b0fcd5c3e42929fad618.md) | 284 | `result-track:8a48b0fcd5c3e42929fad618d6636709d5b5d038d284b31b0d728d6c8286c083` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/instance--5159c1849a397d6b1be5f44b.md) | 288 | `declaration-track:5159c1849a397d6b1be5f44bcb51fcb182cc0b140c7d962da8587290f3ffc94a` |
| 37 | `theorem` | [le_jacobson_bot](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/declarations/le-jacobson-bot--3f7ecbc1df8284c3023204c1.md) | 295 | `result-track:3f7ecbc1df8284c3023204c10266d4b8e6d68fbeaa580a40e298f019d0656b7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
