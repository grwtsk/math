# Verification target: GRWTSK.Algebra.IsIntegrallyClosed.Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e834dfcf4a8161c2c8739ea75d1380c7e852d421",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e834dfcf4a8161c2c8739ea75d1380c7e852d421`.

Source path: `GRWTSK/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdjoinRoot` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.GaussLemma` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIntegrallyClosed_eq_field_fractions](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/isintegrallyclosed-eq-field-fractions--653a6887dae1d49049b2efbd.md) | 53 | `result-track:653a6887dae1d49049b2efbd38e1afd5c70ce311736373faa0ebe24570e3b9db` |
| 2 | `theorem` | [isIntegrallyClosed_eq_field_fractions'](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/isintegrallyclosed-eq-field-fractions--ec83075f4196b90651ac10b6.md) | 63 | `result-track:ec83075f4196b90651ac10b6bd5c9afcb01da85de13d90cf4dc87707d2285281` |
| 3 | `theorem` | [isIntegrallyClosed_dvd](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/isintegrallyclosed-dvd--6bd8978d8a15e0258c341bb2.md) | 76 | `result-track:6bd8978d8a15e0258c341bb23c99780f8dbbbc215547128d0229508a7bb9379f` |
| 4 | `theorem` | [isIntegrallyClosed_dvd_iff](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/isintegrallyclosed-dvd-iff--adde0acee2cf9a53e0522eac.md) | 95 | `result-track:adde0acee2cf9a53e0522eac645cc53342f356570bf556524e196f526266469f` |
| 5 | `theorem` | [ker_eval](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/ker-eval--8ef1ea1cef7feba1fccc34fe.md) | 102 | `result-track:8ef1ea1cef7feba1fccc34fe0110efb89621141b4eebfab12df4c2029765471c` |
| 6 | `theorem` | [IsIntegrallyClosed.degree_le_of_ne_zero](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/isintegrallyclosed-degree-le-of-ne-zero--edd4c09036bc916173e35fb1.md) | 112 | `result-track:edd4c09036bc916173e35fb1c81f815ae968e8079e083d6c2749e312e7ba7ed8` |
| 7 | `theorem` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.IsIntegrallyClosed.minpoly.unique](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant74852b3f7d--7e5c08354f62e5015bc234c8.md) | 122 | `result-track:7e5c08354f62e5015bc234c8d6135060fd70e9a915b50ac6512cb793fd6bcc5c` |
| 8 | `theorem` | [prime_of_isIntegrallyClosed](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/prime-of-isintegrallyclosed--ed0d34926bf05520a38edcf7.md) | 134 | `result-track:ed0d34926bf05520a38edcf7c483d4d5a98eaa60db8a24dc88b4d9663265ef23` |
| 9 | `theorem` | [ToAdjoin.injective](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/toadjoin-injective--f719f6eaceb6d7f481916d30.md) | 149 | `result-track:f719f6eaceb6d7f481916d30d331f8fd50820bf7e9e9bc29d6789afa46487f5d` |
| 10 | `def` | [equivAdjoin](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/equivadjoin--bc928eddec2e030e2357c0ab.md) | 157 | `declaration-track:bc928eddec2e030e2357c0abb317b6fff6f4f843ee03638e3ea4b91318720fb1` |
| 11 | `def` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.Algebra.adjoin.powerBasis'](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant74852b3f7d--b53e56d147446c515269bd75.md) | 163 | `declaration-track:b53e56d147446c515269bd75e6d960e2b192530ce2a2eddec825e881d620028d` |
| 12 | `theorem` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.Algebra.adjoin.powerBasis'_dim](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant74852b3f7d--1f8e89097f7112a917a4f194.md) | 168 | `result-track:1f8e89097f7112a917a4f19469ba5558ee3fb70dcb48d827c86b682d26b388d0` |
| 13 | `theorem` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.Algebra.adjoin.powerBasis'_gen](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant74852b3f7d--ce803b4fda49346c2be3db0e.md) | 172 | `result-track:ce803b4fda49346c2be3db0e49bd9f9de9e62c46461560ed5bc1805b5f8bc7c2` |
| 14 | `def` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.PowerBasis.ofGenMemAdjoin'](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant74852b3f7d--7fbe56cbc08fe0fc5ff1b66c.md) | 178 | `declaration-track:7fbe56cbc08fe0fc5ff1b66c9fe0ab466eb3170abaf618784c4cde449645522f` |
| 15 | `theorem` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.PowerBasis.ofGenMemAdjoin'_dim](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant74852b3f7d--f119b95e5e8ebe0585a2d577.md) | 185 | `result-track:f119b95e5e8ebe0585a2d577db8cb2a17a0bc8296c6220e1cf0284f0ba495e9e` |
| 16 | `theorem` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.PowerBasis.ofGenMemAdjoin'_gen](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant74852b3f7d--b8d1a35ecc47311ea652a410.md) | 190 | `result-track:b8d1a35ecc47311ea652a4104f416ff431d425cb7c41b1efb3603d0f6031d2ff` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/instance--d1241dc4bd48851a4d816c39.md) | 204 | `declaration-track:d1241dc4bd48851a4d816c396f673fd0d72da5275be4b85adf7c62d1431f1dc7` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/instance--eee7f8a9faee0ac759dd4318.md) | 205 | `declaration-track:eee7f8a9faee0ac759dd431831bfc031f8f56189849af0af2d791e6c28794f5b` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/instance--55ddb3ee356c9bd8413c0ba0.md) | 206 | `declaration-track:55ddb3ee356c9bd8413c0ba008fe91f79ed9764c0e212d62679c11102e88d389` |
| 20 | `theorem` | [ofSubring](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/declarations/ofsubring--219e3b9d7bbe8b7ad5f405ae.md) | 211 | `result-track:219e3b9d7bbe8b7ad5f405aeba31b83e0ce07f720c367486b2f1c95c5ce56331` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
