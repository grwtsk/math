# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Derivative.Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95f57610f230af05853cbb5628b0234444ddcab5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95f57610f230af05853cbb5628b0234444ddcab5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivative--501bf26d92b1e9e9630fad81.md) | 57 | `declaration-track:501bf26d92b1e9e9630fad81f805c6742fd445a042d95ece5a7a420a2a401960` |
| 2 | `theorem` | [derivative_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivative-c--4e115b254487d74f43f0ce55.md) | 63 | `result-track:4e115b254487d74f43f0ce553c4383c3ef9c728d8c7066c3069a9a5745aec7e3` |
| 3 | `theorem` | [derivative_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivative-one--14f47a206a079e4fae88ac2f.md) | 65 | `result-track:14f47a206a079e4fae88ac2ff0bedb20674083c3d581b6ba2282cf5184d3763e` |
| 4 | `theorem` | [coeff_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/coeff-derivative--20abbf17db0a1622e8bd6270.md) | 67 | `result-track:20abbf17db0a1622e8bd62701fac5ec7027569c2b428def64d2e9df417042bff` |
| 5 | `theorem` | [coeff_iterate_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/coeff-iterate-derivative--07f725ba6db600d6e36f6b0a.md) | 73 | `result-track:07f725ba6db600d6e36f6b0a7843a7a5870e5edbe7dcefc10d08fbb1cf3436df` |
| 6 | `theorem` | [constantCoeff_iterate_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/constantcoeff-iterate-derivative--49236817856f2aa813307121.md) | 84 | `result-track:49236817856f2aa8133071218ebac8ad04900da0018b379f1d41642288137a63` |
| 7 | `theorem` | [derivative_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivative-coe--7f158175a46be8a6b5819b29.md) | 88 | `result-track:7f158175a46be8a6b5819b29f8786f3784d7eb6aa46f7bd314d2ec41f075ca31` |
| 8 | `theorem` | [derivative_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivative-x--c815b3f13dcd0759744ba3ef.md) | 92 | `result-track:c815b3f13dcd0759744ba3ef42ccb85dfc90882ac10f7389858472e8d71ea0ae` |
| 9 | `theorem` | [trunc_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/trunc-derivative--8ff2ed6b09beeeca07034ce5.md) | 97 | `result-track:8ff2ed6b09beeeca07034ce5745305ec0995e8e78ddc838bfc5c15a0eccb8db9` |
| 10 | `theorem` | [trunc_derivative'](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/trunc-derivative--fb465c37c9fb14f6e543b571.md) | 107 | `result-track:fb465c37c9fb14f6e543b57119a832f05a0a2bf9dc47470d76710a02f6a95eb5` |
| 11 | `theorem` | [derivative_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivative-pow--d7a46a00b41b8a92e7e33804.md) | 112 | `result-track:d7a46a00b41b8a92e7e338044f3bb1fddc51971fe3deab3fcc0e3e1ffefc9396` |
| 12 | `theorem` | [derivative.ext](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivative-ext--1ff3b75ad202e662180c4337.md) | 119 | `result-track:1ff3b75ad202e662180c43372273d5104c7fe608711ac72854d549cad5bd153a` |
| 13 | `theorem` | [derivative_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivative-inv--bcc1c76c4bea5e17542ac186.md) | 124 | `result-track:bcc1c76c4bea5e17542ac186941170fa41528e7d3b63e1f65fa1e77ddccb3ca6` |
| 14 | `theorem` | [derivative_invOf](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivative-invof--805989d130a610107e43101c.md) | 129 | `result-track:805989d130a610107e43101c445a278270c9f0aba358ee4e18002c334bd5f8f2` |
| 15 | `theorem` | [derivative_inv'](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivative-inv--584803ff196a6fcf28f1b4e5.md) | 138 | `result-track:584803ff196a6fcf28f1b4e540f0e69307c3f6016d00167b19b47383ac5aba7c` |
| 16 | `theorem` | [derivative_subst_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivative-subst-coe--0c1bb07a729f22270e836346.md) | 142 | `result-track:0c1bb07a729f22270e836346224655febf9914615612893e481bf4c9dcd0fca6` |
| 17 | `theorem` | [derivative_subst](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivative-subst--c9ccbea665131734fd1f4a2c.md) | 147 | `result-track:c9ccbea665131734fd1f4a2c50d4d96a0876100e245bce2603681075fce39fad` |
| 18 | `def` | [derivativeFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivativefun--f2b5da6219467279326d71f0.md) | 173 | `declaration-track:f2b5da6219467279326d71f026e69e89ec9ce8ab6bf2105a8f7b8ff56f916ddb` |
| 19 | `theorem` | [derivativeFun_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivativefun-add--831861ccb434e4fa647cd420.md) | 177 | `result-track:831861ccb434e4fa647cd4203c2584743bf3c79ce3bcf4576527c2876d48e949` |
| 20 | `theorem` | [derivativeFun_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivativefun-mul--3b0d9c0c4b0ca475559d9938.md) | 183 | `result-track:3b0d9c0c4b0ca475559d9938b763c52bd97486d4ee8c30e16c643657f3a76336` |
| 21 | `theorem` | [derivativeFun_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivativefun-one--90ea057766eb28a17c80e983.md) | 189 | `result-track:90ea057766eb28a17c80e98329f8cf7a25a763036e89fda96947fa552b7fae74` |
| 22 | `theorem` | [derivativeFun_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/declarations/derivativefun-smul--a79c1ca8dcba03f085317b0c.md) | 194 | `result-track:a79c1ca8dcba03f085317b0c13d12f4d80e09e3a1520dac5a69c2b8179571efc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
