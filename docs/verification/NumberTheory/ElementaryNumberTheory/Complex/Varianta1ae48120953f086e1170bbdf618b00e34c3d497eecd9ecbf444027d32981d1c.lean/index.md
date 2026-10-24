# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Complex.Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "469c452efa25d516cd95fe23b366b517022b13ae",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `469c452efa25d516cd95fe23b366b517022b13ae`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isPrimitiveRoot_exp_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/isprimitiveroot-exp-of-coprime--5ea3abf377581e2150698f9b.md) | 31 | `result-track:5ea3abf377581e2150698f9ba836315b81030adb1d774015d3fabb9ce46ffe96` |
| 2 | `theorem` | [isPrimitiveRoot_exp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/isprimitiveroot-exp--18a4a1eba30fff4cc250efc2.md) | 50 | `result-track:18a4a1eba30fff4cc250efc2d525b944f4e247d11da8f87dc68db2ce13130cba` |
| 3 | `theorem` | [isPrimitiveRoot_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/isprimitiveroot-iff--ebf574409c6552bd87f2f8d1.md) | 54 | `result-track:ebf574409c6552bd87f2f8d1da207a661046ab05ed0e6ad8979e3bb633c5d66c` |
| 4 | `theorem` | [mem_rootsOfUnity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/mem-rootsofunity--fff9699fe2711eb325937d9b.md) | 70 | `result-track:fff9699fe2711eb325937d9b14abe7429d309b0f7a3eaca43f9f6f2cec6c9772` |
| 5 | `theorem` | [card_rootsOfUnity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/card-rootsofunity--ca9ce893978f2faec21fad30.md) | 87 | `result-track:ca9ce893978f2faec21fad3039897a203b5da18a2985443344d38fb073c39b72` |
| 6 | `theorem` | [card_primitiveRoots](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/card-primitiveroots--50297ad035d5fdd043b415fd.md) | 90 | `result-track:50297ad035d5fdd043b415fd4c1e2f90ff0baac4ec9fa3bfece6e05fc5501f37` |
| 7 | `theorem` | [IsPrimitiveRoot.norm'_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/isprimitiveroot-norm-eq-one--3b12972ec21cd10ec29c3792.md) | 97 | `result-track:3b12972ec21cd10ec29c379289e4a4ff086fb3b6afdd348253590c7f0748c71a` |
| 8 | `theorem` | [IsPrimitiveRoot.nnnorm_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/isprimitiveroot-nnnorm-eq-one--a128c2a87acdb62197d02462.md) | 101 | `result-track:a128c2a87acdb62197d0246259198c6a582c4b2a7d74573e6044b89450b06a5d` |
| 9 | `theorem` | [IsPrimitiveRoot.arg_ext](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/isprimitiveroot-arg-ext--8d0938d19b6bf945724a468f.md) | 105 | `result-track:8d0938d19b6bf945724a468fdccf582ecb742c59015ae1a8545baf77fc00674a` |
| 10 | `theorem` | [IsPrimitiveRoot.arg_eq_zero_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/isprimitiveroot-arg-eq-zero-iff--25cd55e5826412048a4b3a2c.md) | 109 | `result-track:25cd55e5826412048a4b3a2c418d2b8e9b60e254870787566ff6ca167a9567b7` |
| 11 | `theorem` | [IsPrimitiveRoot.arg_eq_pi_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/isprimitiveroot-arg-eq-pi-iff--fbd244c0a26ce1a87f7ff763.md) | 114 | `result-track:fbd244c0a26ce1a87f7ff763ed9e0c54f38a1f50f44e6a1afadc66c4962b3727` |
| 12 | `theorem` | [IsPrimitiveRoot.arg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/isprimitiveroot-arg--3c72c37350efa154f99a0779.md) | 121 | `result-track:3c72c37350efa154f99a0779dfec928ccf2c44a428b8eeee4d403628025fb0ac` |
| 13 | `lemma` | [Complex.norm_eq_one_of_mem_rootsOfUnity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/complex-norm-eq-one-of-mem-rootsofunity--cf4e944fe91fb235a2a2370b.md) | 166 | `result-track:cf4e944fe91fb235a2a2370b3b157a90160ca98c885f5a97482552551d3bb329` |
| 14 | `theorem` | [Complex.conj_rootsOfUnity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Varianta1ae48120953f086e1170bbdf618b00e34c3d497eecd9ecbf444027d32981d1c.lean/declarations/complex-conj-rootsofunity--6873c7c54bb08836577faa02.md) | 174 | `result-track:6873c7c54bb08836577faa02212f1a2b0e07f2123ed4d2a1726cf5a941426cbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
