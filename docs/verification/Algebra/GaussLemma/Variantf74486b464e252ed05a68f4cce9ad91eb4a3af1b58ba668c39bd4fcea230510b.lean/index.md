# Verification target: GRWTSK.Algebra.GaussLemma.Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b24164d7651df3b235a6975d83a95c5ba669f34d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b24164d7651df3b235a6975d83a95c5ba669f34d`.

Source path: `GRWTSK/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.SplittingField.Construction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegrallyClosed` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integralClosure.mem_lifts_of_monic_of_dvd_map](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/integralclosure-mem-lifts-of-monic-of-dvd-map--2745842f06558b0f129438c9.md) | 54 | `result-track:2745842f06558b0f129438c9bd4ea4a42884a9648362f7f5d216136e81692fcf` |
| 2 | `theorem` | [IsIntegrallyClosed.eq_map_mul_C_of_dvd](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/isintegrallyclosed-eq-map-mul-c-of-dvd--3cea7a54808ff0d06527b6d1.md) | 77 | `result-track:3cea7a54808ff0d06527b6d166b9d27e40e09924f3babb2a0cce3ac8f2eca4d9` |
| 3 | `theorem` | [IsPrimitive.isUnit_iff_isUnit_map_of_injective](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/isprimitive-isunit-iff-isunit-map-of-injective--025e254209759d91d4442e07.md) | 116 | `result-track:025e254209759d91d4442e072c7b8fb0c19fcd211e41affee6388e07b8565850` |
| 4 | `theorem` | [IsPrimitive.irreducible_of_irreducible_map_of_injective](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/isprimitive-irreducible-of-irreducible-map-of-injective--cec77f90c56fd6579143fc6a.md) | 125 | `result-track:cec77f90c56fd6579143fc6a4f9671f58338c254645464432b8259746d80e1f0` |
| 5 | `theorem` | [IsPrimitive.isUnit_iff_isUnit_map](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/isprimitive-isunit-iff-isunit-map--f7a6ea515e86998dead94298.md) | 140 | `result-track:f7a6ea515e86998dead9429867ffc6a39206fcd93d88ea2ff8929cd9777bdc57` |
| 6 | `theorem` | [Monic.irreducible_iff_irreducible_map_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/monic-irreducible-iff-irreducible-map-fraction-map--a850b9b6e2431e3aa16a2dcb.md) | 153 | `result-track:a850b9b6e2431e3aa16a2dcb725a899056590b082c8c7b26ca86a8ef5c54106f` |
| 7 | `theorem` | [isIntegrallyClosed_iff'](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/isintegrallyclosed-iff--0093512ef1251a42b02a32f8.md) | 190 | `result-track:0093512ef1251a42b02a32f82ee1b531562ff477641119951038630994708fcb` |
| 8 | `theorem` | [Monic.dvd_of_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/monic-dvd-of-fraction-map-dvd-fraction-map--0d6366cd34f8d45312d013ab.md) | 205 | `result-track:0d6366cd34f8d45312d013ab444805d673247a8db19f73f6c83a77c7629bf978` |
| 9 | `theorem` | [Monic.dvd_iff_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/monic-dvd-iff-fraction-map-dvd-fraction-map--8bf6f707c7377219ffb43914.md) | 216 | `result-track:8bf6f707c7377219ffb4391459ba648165d353e42f63729330586cfee7baa828` |
| 10 | `theorem` | [isUnit_or_eq_zero_of_isUnit_integerNormalization_primPart](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/isunit-or-eq-zero-of-isunit-integernormalization-primpart--7bb92551388fda75ead68248.md) | 230 | `result-track:7bb92551388fda75ead682485f3c0ad289bfc88cf64a55775f4d5d09a95ea483` |
| 11 | `theorem` | [IsPrimitive.irreducible_iff_irreducible_map_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/isprimitive-irreducible-iff-irreducible-map-fraction-map--af211b5d4783ba077d4b6167.md) | 250 | `result-track:af211b5d4783ba077d4b6167b9f4993bbe8c9cf914938b0708f230d63e6da504` |
| 12 | `theorem` | [IsPrimitive.dvd_of_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/isprimitive-dvd-of-fraction-map-dvd-fraction-map--f96beb57b71129f7e069c83c.md) | 292 | `result-track:f96beb57b71129f7e069c83c86d7a9f27a7fcf9034fc5ce0e4c172cce2cebec5` |
| 13 | `theorem` | [IsPrimitive.dvd_iff_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/isprimitive-dvd-iff-fraction-map-dvd-fraction-map--861b8f02b279808a810d2b00.md) | 317 | `result-track:861b8f02b279808a810d2b00e9aba4f71692f1c1abbb9040fa9ffa2620e061d6` |
| 14 | `theorem` | [IsPrimitive.Int.irreducible_iff_irreducible_map_cast](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/isprimitive-int-irreducible-iff-irreducible-map-cast--3f60a1919e84ecb265d833e5.md) | 329 | `result-track:3f60a1919e84ecb265d833e58da2a7b81167da819a4ea428bdf0cbe0fa3e0737` |
| 15 | `theorem` | [IsPrimitive.Int.dvd_iff_map_cast_dvd_map_cast](../../../../mathematics/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/declarations/isprimitive-int-dvd-iff-map-cast-dvd-map-cast--705e57e39c97904a343d30c5.md) | 334 | `result-track:705e57e39c97904a343d30c529a9f992354c668fc8c991d3e68c59292fe88cb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
