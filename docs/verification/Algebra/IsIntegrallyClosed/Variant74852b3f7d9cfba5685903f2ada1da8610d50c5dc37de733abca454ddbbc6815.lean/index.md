# Verification target: GRWTSK.Algebra.IsIntegrallyClosed.Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b12d96d013c3aed709bfdaafb53899ac630b578",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b12d96d013c3aed709bfdaafb53899ac630b578`.

Source path: `GRWTSK/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdjoinRoot` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.GaussLemma` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIntegrallyClosed_eq_field_fractions](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/isintegrallyclosed-eq-field-fractions--e3aa5d20210c5cb07484b014.md) | 45 | `result-track:e3aa5d20210c5cb07484b01445c5ae338f3ba0eaa4ad605c80857c61b2e52452` |
| 2 | `theorem` | [isIntegrallyClosed_eq_field_fractions'](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/isintegrallyclosed-eq-field-fractions--4a6ebf7865ecbcb7126bbadf.md) | 55 | `result-track:4a6ebf7865ecbcb7126bbadfe7a601cf97e037e55d81f3f1cf9000df8ee7e653` |
| 3 | `theorem` | [isIntegrallyClosed_dvd](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/isintegrallyclosed-dvd--e664def5588290ef49291e17.md) | 68 | `result-track:e664def5588290ef49291e17c27db84e252f2b5971427b799c41f3c599f385bc` |
| 4 | `theorem` | [isIntegrallyClosed_dvd_iff](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/isintegrallyclosed-dvd-iff--b06fcbef8641478deed1f1c7.md) | 87 | `result-track:b06fcbef8641478deed1f1c7ef19cc0670cbfacc94139c5f3b2a2d3add0377a2` |
| 5 | `theorem` | [ker_eval](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/ker-eval--fd08e50513572e00595b30ea.md) | 94 | `result-track:fd08e50513572e00595b30ea267a0d51ab63b14401c6e5267b676b112e4f95f4` |
| 6 | `theorem` | [IsIntegrallyClosed.degree_le_of_ne_zero](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/isintegrallyclosed-degree-le-of-ne-zero--04d75dee56d4ebc94b649dab.md) | 104 | `result-track:04d75dee56d4ebc94b649dab14ff9989da51181edcec0242e546c766c93632f8` |
| 7 | `theorem` | [_root_.IsIntegrallyClosed.minpoly.unique](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/root-isintegrallyclosed-minpoly-unique--411692837349c2611ecafcaa.md) | 114 | `result-track:411692837349c2611ecafcaa40e255a1b33bc17b1758ea107cd3c9c8432c5722` |
| 8 | `theorem` | [prime_of_isIntegrallyClosed](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/prime-of-isintegrallyclosed--a465e8f032e53fb72a75fa8d.md) | 126 | `result-track:a465e8f032e53fb72a75fa8d8e0e0338cdb060260009c51dbf1f66523f1a74e1` |
| 9 | `theorem` | [ToAdjoin.injective](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/toadjoin-injective--1dbb5675e3287c8214e35833.md) | 141 | `result-track:1dbb5675e3287c8214e35833a919fa2898b38d0025dbf68ac2acb44d8dcf93c2` |
| 10 | `def` | [equivAdjoin](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/equivadjoin--01a0ba97c12015f12c84a90b.md) | 149 | `declaration-track:01a0ba97c12015f12c84a90b3cf00fb0cd01b34244da531c973fce9aa88e957a` |
| 11 | `def` | [_root_.Algebra.adjoin.powerBasis'](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/root-algebra-adjoin-powerbasis--0f6aebff75e91bcf2ed32d71.md) | 155 | `declaration-track:0f6aebff75e91bcf2ed32d71fe6dcd613a5825e41b82f24e32b63bb85b0a29e3` |
| 12 | `theorem` | [_root_.Algebra.adjoin.powerBasis'_dim](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/root-algebra-adjoin-powerbasis-dim--243014c69b7fc0f705d88f16.md) | 160 | `result-track:243014c69b7fc0f705d88f16a0a4aea26c572abe2971ac391ed411978e865e4d` |
| 13 | `theorem` | [_root_.Algebra.adjoin.powerBasis'_gen](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/root-algebra-adjoin-powerbasis-gen--fa5ab0580ca4127357275a35.md) | 164 | `result-track:fa5ab0580ca4127357275a35e691ade6648b55f2feb8f2e791248fe106d99b0b` |
| 14 | `def` | [_root_.PowerBasis.ofGenMemAdjoin'](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/root-powerbasis-ofgenmemadjoin--b0d466799c369d6a541b5b1e.md) | 170 | `declaration-track:b0d466799c369d6a541b5b1e100a6629d4ae3d8716fbfcee652af5c8b65b36a0` |
| 15 | `theorem` | [_root_.PowerBasis.ofGenMemAdjoin'_dim](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/root-powerbasis-ofgenmemadjoin-dim--f678f0090ce9bf8e0dbe160c.md) | 177 | `result-track:f678f0090ce9bf8e0dbe160c25a224cfd02fff968e4d3bbee2dbfdf45d70142d` |
| 16 | `theorem` | [_root_.PowerBasis.ofGenMemAdjoin'_gen](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/root-powerbasis-ofgenmemadjoin-gen--42f929bfdfb4a75de7a1424c.md) | 182 | `result-track:42f929bfdfb4a75de7a1424c9c43ba3ecf50f13bf748c1e6c61f7c7f4ba132f0` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/instance--5bac6c1fe3622a5c55ec9d71.md) | 196 | `declaration-track:5bac6c1fe3622a5c55ec9d71e4fd8b95fc3b71e20f957f538b92117a4f3b9bce` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/instance--498289bd177eb6e496ad7586.md) | 197 | `declaration-track:498289bd177eb6e496ad75866c684eb1ff53abff49288e08877f8fd7e18f8f00` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/instance--b630b6f6a0640dd5a116d572.md) | 198 | `declaration-track:b630b6f6a0640dd5a116d572feb6ff65510d9bbbc69352b5436b54d29e582a85` |
| 20 | `theorem` | [ofSubring](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.lean/declarations/ofsubring--8fc940b9f59dc957a43d2464.md) | 203 | `result-track:8fc940b9f59dc957a43d24640afa3c9692751f4a1f0aab5f8348d0622a4f09c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
