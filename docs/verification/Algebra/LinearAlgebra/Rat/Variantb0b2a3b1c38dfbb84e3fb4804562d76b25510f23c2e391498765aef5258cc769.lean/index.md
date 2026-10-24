# Verification target: GRWTSK.Algebra.LinearAlgebra.Rat.Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cf5556e9c02bae1f6e14da81db9028f7fe55398",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cf5556e9c02bae1f6e14da81db9028f7fe55398`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.Discriminant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Eisenstein.IsIntegral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/macro-rules--4d5c03dc5986553b21b72460.md) | 41 | `declaration-track:4d5c03dc5986553b21b72460f0e3a93e0a07e0e2710c3091f2778f8e513ea07f` |
| 2 | `theorem` | [discr_prime_pow_ne_two'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/discr-prime-pow-ne-two--01c86c14847a3b185eda6a0f.md) | 46 | `result-track:01c86c14847a3b185eda6a0f35a97c2da1f8369b6a5af3188442b0959a9ea99c` |
| 3 | `theorem` | [discr_odd_prime'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/discr-odd-prime--a82bfd8609999a18fccca26c.md) | 54 | `result-track:a82bfd8609999a18fccca26c00ff519447c75a519e6ec76da2861f277b70897c` |
| 4 | `theorem` | [discr_prime_pow'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/discr-prime-pow--5bb93f97439696797a6486ea.md) | 63 | `result-track:5bb93f97439696797a6486eadc83fe4117f84704dc05e9ff07e006950eb31e48` |
| 5 | `theorem` | [discr_prime_pow_eq_unit_mul_pow'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/discr-prime-pow-eq-unit-mul-pow--67e88a7e56971df4d40e55d2.md) | 73 | `result-track:67e88a7e56971df4d40e55d2c59451d7e1c33289e1c00a6a0532bcd031da73f2` |
| 6 | `theorem` | [isIntegralClosure_adjoin_singleton_of_prime_pow](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/isintegralclosure-adjoin-singleton-of-prime-pow--e07b0d40113b7018313a775b.md) | 82 | `result-track:e07b0d40113b7018313a775bbe748647cd201bf081593def59295b2ba6a023e4` |
| 7 | `theorem` | [isIntegralClosure_adjoin_singleton_of_prime](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/isintegralclosure-adjoin-singleton-of-prime--d390a66f02d58ef72c59cc95.md) | 131 | `result-track:d390a66f02d58ef72c59cc95f8da2978df75adcdd6cb6a3f561ac73590634e17` |
| 8 | `theorem` | [cyclotomicRing_isIntegralClosure_of_prime_pow](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/cyclotomicring-isintegralclosure-of-prime-pow--d34b4ceaac8d5a954e4fb575.md) | 139 | `result-track:d34b4ceaac8d5a954e4fb5752cd63221441950ba37d570667eee9d1bd94c4c8b` |
| 9 | `theorem` | [cyclotomicRing_isIntegralClosure_of_prime](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/cyclotomicring-isintegralclosure-of-prime--478c54e5432606af89faf638.md) | 154 | `result-track:478c54e5432606af89faf638ac120211625497be5c5505b539f6011b921c62c0` |
| 10 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.DiscrPrimePowNeTwoPrime.Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.IsPrimitiveRoot.adjoinEquivRingOfIntegers](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/root-grwtsk-algebra-linearalgebra-discrprimepownetwoprime-variant70d534d--2033e1131e3674af6750b724.md) | 171 | `declaration-track:2033e1131e3674af6750b724b2ccec2e25735f762c6e70711ef85e54627ba928` |
| 11 | `instance` | [IsCyclotomicExtension.ringOfIntegers](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/iscyclotomicextension-ringofintegers--04d7aefac4583d730b4531ae.md) | 179 | `declaration-track:04d7aefac4583d730b4531ae86ca0d3835b4c773c9b4ba8df544174a965cfa3f` |
| 12 | `def` | [integralPowerBasis](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/integralpowerbasis--ece00c518424ff1fc7174720.md) | 187 | `declaration-track:ece00c518424ff1fc71747208fc5c48b2a0a7cea6532583b33282f9674a36ca1` |
| 13 | `theorem` | [integralPowerBasis_gen](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/integralpowerbasis-gen--362a5c28ec5f2b5851dffe5a.md) | 194 | `result-track:362a5c28ec5f2b5851dffe5a7fde6e5c907ea7b0787c1a990424e5e429d17044` |
| 14 | `theorem` | [integralPowerBasis_dim](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/integralpowerbasis-dim--88ca301bd9b3acb34d6200df.md) | 204 | `result-track:88ca301bd9b3acb34d6200dfcc70c4e37ce6841f8a66b84e90f756aa0ee60f84` |
| 15 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.DiscrPrimePowNeTwoPrime.Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.IsPrimitiveRoot.adjoinEquivRingOfIntegers'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/root-grwtsk-algebra-linearalgebra-discrprimepownetwoprime-variant70d534d--6ff9eaddec2d878cadf0dc8b.md) | 212 | `declaration-track:6ff9eaddec2d878cadf0dc8b20a54fe2e4db8a335c9877944e8a63da899f2c76` |
| 16 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.DiscrPrimePowNeTwoPrime.Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.IsCyclotomicExtension.ring_of_integers'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/root-grwtsk-algebra-linearalgebra-discrprimepownetwoprime-variant70d534d--4e88faad12ade46fdec6f66f.md) | 219 | `declaration-track:4e88faad12ade46fdec6f66f62cd12205ff95f5fc4b36392439c879499da8c25` |
| 17 | `def` | [integralPowerBasis'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/integralpowerbasis--15d7b5b7edd2f254b85221a1.md) | 227 | `declaration-track:15d7b5b7edd2f254b85221a124471cd0d10f92582c9964b8979890e9654af537` |
| 18 | `theorem` | [integralPowerBasis'_gen](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/integralpowerbasis-gen--60642b1ae1f92a679717fdbd.md) | 233 | `result-track:60642b1ae1f92a679717fdbdd7768ecbd48bb3450bc7e6bbd6e304d0a797b960` |
| 19 | `theorem` | [power_basis_int'_dim](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/power-basis-int-dim--51975af0bd381d2ada591fad.md) | 239 | `result-track:51975af0bd381d2ada591fadb5f37c0557212ba1e4b4bfef8a218234389a8250` |
| 20 | `def` | [subOneIntegralPowerBasis](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/suboneintegralpowerbasis--2658d71dc71c74ea3526ac54.md) | 247 | `declaration-track:2658d71dc71c74ea3526ac54c9e3522626731fa20c4f2badc4214cee0f911e12` |
| 21 | `theorem` | [subOneIntegralPowerBasis_gen](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/suboneintegralpowerbasis-gen--ff657dbb46fed6bf6cbd8094.md) | 263 | `result-track:ff657dbb46fed6bf6cbd8094ca2511429b2eead8b18993979a2f5bd70fc0af3e` |
| 22 | `def` | [subOneIntegralPowerBasis'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/suboneintegralpowerbasis--16bfb00d1b2e2d8d357769dc.md) | 272 | `declaration-track:16bfb00d1b2e2d8d357769dc30969de41b1fe283ae1513602a95df607466b0b3` |
| 23 | `theorem` | [subOneIntegralPowerBasis'_gen](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/declarations/suboneintegralpowerbasis-gen--64ad9176735bfdceb96b877b.md) | 278 | `result-track:64ad9176735bfdceb96b877b844b9d01fb18443fda2ea4f259fcc7fdb771c53b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
