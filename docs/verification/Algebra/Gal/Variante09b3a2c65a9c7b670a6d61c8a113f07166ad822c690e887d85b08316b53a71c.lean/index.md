# Verification target: GRWTSK.Algebra.Gal.Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c1af87f1241ae94d0347e8bce693da6b1876169",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c1af87f1241ae94d0347e8bce693da6b1876169`.

Source path: `GRWTSK/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PolynomialGaloisGroup` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [autToPow_injective](../../../../mathematics/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean/declarations/auttopow-injective--8e3f015fab1c28d9625bc924.md) | 55 | `result-track:8e3f015fab1c28d9625bc924bfe0e263d84f98240516e8ed168cd410d9486d0f` |
| 2 | `def` | [Aut.commGroup](../../../../mathematics/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean/declarations/aut-commgroup--38b84177152f429b787ce9a8.md) | 93 | `declaration-track:38b84177152f429b787ce9a832710baae8def79e6900830d6ea318047b92cbcc` |
| 3 | `def` | [autEquivPow](../../../../mathematics/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean/declarations/autequivpow--1a97ce368b3f8eeae9333fc2.md) | 103 | `declaration-track:1a97ce368b3f8eeae9333fc25fb8dbf4f4526c200602b9e70e5fc2486606835a` |
| 4 | `def` | [fromZetaAut](../../../../mathematics/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean/declarations/fromzetaaut--1c0d8378527afbf836982b7d.md) | 148 | `declaration-track:1c0d8378527afbf836982b7d43065c08695f429fa399451390e213e6022bb7a9` |
| 5 | `theorem` | [fromZetaAut_spec](../../../../mathematics/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean/declarations/fromzetaaut-spec--1616e4ac2468a8e39c71164a.md) | 155 | `result-track:1616e4ac2468a8e39c71164a7a51dda02eeea2ef579e74c6a9ad24a3c12d58a1` |
| 6 | `def` | [galCyclotomicEquivUnitsZMod](../../../../mathematics/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean/declarations/galcyclotomicequivunitszmod--27642ec93156d5e85b42cf82.md) | 176 | `declaration-track:27642ec93156d5e85b42cf8277a94f8ee8f75a725b808c43c1a49909fb12a31a` |
| 7 | `def` | [galXPowEquivUnitsZMod](../../../../mathematics/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean/declarations/galxpowequivunitszmod--ff193704a4f74370068b776c.md) | 185 | `declaration-track:ff193704a4f74370068b776cebce3dd90ac14a50637436f8be54d560ff05c484` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
