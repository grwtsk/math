# Verification target: GRWTSK.Algebra.Algebraize.Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9a9d7dafe02aa8c97a272d50d38d2cbdcd5378a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9a9d7dafe02aa8c97a272d50d38d2cbdcd5378a`.

Source path: `GRWTSK/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Algebraize` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra.testProperty1](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/algebra-testproperty1--d8da5722bb4b574daca56eb0.md) | 17 | `declaration-track:d8da5722bb4b574daca56eb0e1aa61648d7f3059a6e36deeed2e93bcafca61f3` |
| 2 | `def` | [RingHom.testProperty1](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/ringhom-testproperty1--628dd8f94aafeb755c081889.md) | 23 | `declaration-track:628dd8f94aafeb755c081889a77a1662cceee606de738151b0426cf683605cad` |
| 3 | `class` | [Module.testProperty2](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/module-testproperty2--0ec4a0a02f94fc7580a92f39.md) | 28 | `declaration-track:0ec4a0a02f94fc7580a92f3933e14b2e8507aefee910eab3456a3631a2a46459` |
| 4 | `def` | [RingHom.testProperty2](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/ringhom-testproperty2--964a2671044eee2a364bb1b7.md) | 34 | `declaration-track:964a2671044eee2a364bb1b7bc661f16aae5e0302679755997b6e04069d01136` |
| 5 | `class` | [Algebra.testProperty3](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/algebra-testproperty3--232b3f156eb00ac437c87fe2.md) | 41 | `declaration-track:232b3f156eb00ac437c87fe2c3e8cf2ddee1ae3f330f111a6911353bea01440f` |
| 6 | `def` | [RingHom.testProperty3](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/ringhom-testproperty3--544334e22eff44fe4866bc3b.md) | 48 | `declaration-track:544334e22eff44fe4866bc3b99f4487bcad7c1422e81e9be517328461731b173` |
| 7 | `class` | [Algebra.testProperty4](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/algebra-testproperty4--ed945a90abf6ba629cfea116.md) | 54 | `declaration-track:ed945a90abf6ba629cfea1160818b1488707456a2d201cf1787da5b1a5264743` |
| 8 | `def` | [RingHom.testProperty4](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/ringhom-testproperty4--bebfe7fa3852afd9e15710df.md) | 61 | `declaration-track:bebfe7fa3852afd9e15710df399d2dc4f0ac59917b49f58a2ee3491cd0d8fd81` |
| 9 | `lemma` | [testProperty4.toAlgebra](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/testproperty4-toalgebra--aaade70b3c8217d458c65f2f.md) | 64 | `result-track:aaade70b3c8217d458c65f2fbc2cde690ed87369beef1018622a7e1be01f5201` |
| 10 | `example` | [(anonymous)](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/example--f494d3f8ffa03b24d45e2f08.md) | 76 | `declaration-track:f494d3f8ffa03b24d45e2f08f75e5b116e71ef4873262182c63a80e61d1d1413` |
| 11 | `example` | [(anonymous)](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/example--685dc01ab24c297a9b5585ea.md) | 84 | `declaration-track:685dc01ab24c297a9b5585ea0724cc2f040aced6bfe36d554958b6584c5d97f9` |
| 12 | `example` | [(anonymous)](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/example--2d826bfe94c9899b3cae8a50.md) | 93 | `declaration-track:2d826bfe94c9899b3cae8a50cc6188c8f11f30f2941523bd849c4b7acc2f56f9` |
| 13 | `example` | [(anonymous)](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/example--999a321c584173fbf6d10733.md) | 102 | `declaration-track:999a321c584173fbf6d10733e06037eb0189c21430e23d3a7fb5c892566160b0` |
| 14 | `example` | [(anonymous)](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/example--31d24aef08a180ef92f82fef.md) | 110 | `declaration-track:31d24aef08a180ef92f82fef83a06319fc81f4a256d958373467716ff2e708a6` |
| 15 | `example` | [(anonymous)](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/example--2af412f026e76b705e0f7deb.md) | 115 | `declaration-track:2af412f026e76b705e0f7debd1a94a1d5a9fd8441b56f22562c5a24b2ebf6bee` |
| 16 | `example` | [(anonymous)](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/example--837b822a020aec13603394b0.md) | 120 | `declaration-track:837b822a020aec13603394b0520d76967594f83e046ff1cd7f4c47017f899053` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/example--921981ef18730dbeb4f3bdc3.md) | 125 | `declaration-track:921981ef18730dbeb4f3bdc3bb3d8ceee2e555bfbfb0c327612460da9b63e843` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/declarations/example--68d3dacecd6de49a14ba698b.md) | 132 | `declaration-track:68d3dacecd6de49a14ba698bbdaf615de08a5478ef479baf47ce0e06b7c0b431` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
