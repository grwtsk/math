# Verification target: GRWTSK.Analysis.ThetaJacobiUnitary.Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d94945c95a1b5961b1032f6beef3839008a1b38",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/index.md) · [Full source](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d94945c95a1b5961b1032f6beef3839008a1b38`.

Source path: `GRWTSK/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ThetaPolynomialGraphCore` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.GramSchmidtOrtho` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.l2Space` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_power_sum_ae](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/finite-power-sum-ae--a3adceb4b58b603baf29ef68.md) | 27 | `result-track:a3adceb4b58b603baf29ef68cf08363084b082bb6f133b2b63c9d02213f03965` |
| 2 | `theorem` | [real_polynomial_eq_zero_of_ae](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/real-polynomial-eq-zero-of-ae--0d05049448fe50ecb911e0b5.md) | 48 | `result-track:0d05049448fe50ecb911e0b5c939043100a2bae2f0a3e0ee5b9899af970ecaa4` |
| 3 | `theorem` | [powers_linearIndependent](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/powers-linearindependent--937618c0c25aa39453de9757.md) | 63 | `result-track:937618c0c25aa39453de97576f0a5994efd37698df0a6218f6a96844ba9fb41c` |
| 4 | `def` | [orthogonalPolynomial](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/orthogonalpolynomial--c2412b3ac5709f7f09249913.md) | 91 | `declaration-track:c2412b3ac5709f7f0924991374f15c84bb78fe0272ce3bfb7b5966170847816a` |
| 5 | `theorem` | [orthogonalPolynomial_orthonormal](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/orthogonalpolynomial-orthonormal--03133296827459d448eb8651.md) | 95 | `result-track:03133296827459d448eb86510952ac605b5f2d73941f4b5614fc278ff6202d81` |
| 6 | `theorem` | [orthogonalPolynomial_span](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/orthogonalpolynomial-span--fce8301694472a560c4d8fff.md) | 100 | `result-track:fce8301694472a560c4d8fff5433ad2b785ec3dc0173fbda6db7ec8c4e6b2875` |
| 7 | `def` | [polynomialHilbertBasis](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/polynomialhilbertbasis--6564392868291e0344bdcce9.md) | 107 | `declaration-track:6564392868291e0344bdcce97332e93448c4e1a99655c3d89933b33c08270c22` |
| 8 | `theorem` | [polynomialHilbertBasis_apply](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/polynomialhilbertbasis-apply--674881661cb32afd79404bfb.md) | 114 | `result-track:674881661cb32afd79404bfb58a5fd54b3ad66ee602a9e28b3d1cf6509ed0068` |
| 9 | `def` | [pointedUnitary](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/pointedunitary--0c9748131fc759229685a1c2.md) | 119 | `declaration-track:0c9748131fc759229685a1c2c5510d635b0f0cb1240ab56dda46113a80486fc3` |
| 10 | `theorem` | [pointedUnitary_single](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/pointedunitary-single--e9a60ce169a60bc585c47352.md) | 124 | `result-track:e9a60ce169a60bc585c47352c8e9f7dd96b30be0bec36bedc279f090d0fdcf4c` |
| 11 | `theorem` | [orthogonalPolynomial_zero](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/orthogonalpolynomial-zero--8c7aadbfa2a899822aae2189.md) | 129 | `result-track:8c7aadbfa2a899822aae2189ed3d568459b381f87489b671004e9a0edf718ae5` |
| 12 | `theorem` | [pointedUnitary_zero](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/pointedunitary-zero--8ff4054cc888fc9f2c7ac129.md) | 140 | `result-track:8ff4054cc888fc9f2c7ac129ee001240084971526c9f8af4a9124c83be46b117` |
| 13 | `theorem` | [pointedUnitary_rawPoint](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/pointedunitary-rawpoint--ece5db75ae33a22839932b17.md) | 145 | `result-track:ece5db75ae33a22839932b1728038124a6a7046003e749b86a1f7b2c6d243fa8` |
| 14 | `def` | [jacobiDomain](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/jacobidomain--798f1deb799cb02c08b712fc.md) | 151 | `declaration-track:798f1deb799cb02c08b712fcce9a7330daaa73361203699b3722b5bdccb37f3e` |
| 15 | `theorem` | [mem_jacobiDomain_iff](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/mem-jacobidomain-iff--f30d64fb2aebed096bf37f2a.md) | 155 | `result-track:f30d64fb2aebed096bf37f2afdee6f67e3ee297bfefd6af3e3183062e3f7598f` |
| 16 | `def` | [domainUnitary](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/domainunitary--e7c6a4e0984ccd60b9821df4.md) | 160 | `declaration-track:e7c6a4e0984ccd60b9821df476647101ebafff7ad116ca33fdb30c9528c1eb2d` |
| 17 | `def` | [jacobiOperator](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/jacobioperator--84f9db6cf9e777b8341af0ae.md) | 165 | `declaration-track:84f9db6cf9e777b8341af0aec72709b643cf5166168dadfb87dcbb2f2c8851f9` |
| 18 | `theorem` | [pointedUnitary_jacobiOperator](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/pointedunitary-jacobioperator--59859000b47d9c18f34d016b.md) | 172 | `result-track:59859000b47d9c18f34d016bab381e2e291f941479114324a242d418a3778cb7` |
| 19 | `theorem` | [jacobiDomain_dense](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/jacobidomain-dense--eebebf665cc068e673b1ceb3.md) | 178 | `result-track:eebebf665cc068e673b1ceb3f44946400f130de649fdb48969f9646cf115619f` |
| 20 | `theorem` | [jacobiOperator_symmetric](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/jacobioperator-symmetric--039b8f36f0010de33b1a8ae3.md) | 186 | `result-track:039b8f36f0010de33b1a8ae3fc5bb757f72e61728773ffed0f34f53cf71c8b41` |
| 21 | `theorem` | [jacobiOperator_isSelfAdjoint](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/jacobioperator-isselfadjoint--2bc5ddeee8dcd36fde56cb58.md) | 204 | `result-track:2bc5ddeee8dcd36fde56cb58a761a2c08ad2de5e883ca1bc1a80276f82b5de04` |
| 22 | `theorem` | [jacobiOperator_isClosed](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/jacobioperator-isclosed--e5796559ce160de4b184af9c.md) | 238 | `result-track:e5796559ce160de4b184af9c4ee6618a737d2a0750589a2fd7ce464fe12de43e` |
| 23 | `def` | [jacobiPowerVector](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/jacobipowervector--78a39e0b5f3f68a6a75672e1.md) | 242 | `declaration-track:78a39e0b5f3f68a6a75672e16e5f500bb342e9586cad8bbf8e1ead76fa02c1c9` |
| 24 | `theorem` | [jacobiPowerVector_zero](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/jacobipowervector-zero--9413b897f60e82086c931cf5.md) | 246 | `result-track:9413b897f60e82086c931cf5cc092638ae932da90135f20299472e3d62ff498a` |
| 25 | `theorem` | [jacobiPowerVector_mem_domain](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/jacobipowervector-mem-domain--b53c2a36fb1d31ceae6b29de.md) | 255 | `result-track:b53c2a36fb1d31ceae6b29de40368cd9af40dab418c86e051bc6e01b222ca0c7` |
| 26 | `def` | [jacobiPowerDomainVector](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/jacobipowerdomainvector--6dc64a0b1df83e04f125a908.md) | 263 | `declaration-track:6dc64a0b1df83e04f125a90839a476cde7002a74de3884362dd4af43e489688c` |
| 27 | `theorem` | [jacobiOperator_powerVector](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/jacobioperator-powervector--96eb2fcdfa4db40badb0c2ec.md) | 267 | `result-track:96eb2fcdfa4db40badb0c2ec0a3b3cfa10b0edbc6995c736b162f9664dca47b4` |
| 28 | `theorem` | [rawPoint_power_inner](../../../../mathematics/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/declarations/rawpoint-power-inner--e639ae167a46410690b943d9.md) | 279 | `result-track:e639ae167a46410690b943d9774f77619843e730d9abf802a0e759985b2ef5c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
