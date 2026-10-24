# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30b8048e86634bf4c72bfd8e70b9744903b31fd3",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30b8048e86634bf4c72bfd8e70b9744903b31fd3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Submodule` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/instance--112c9c76c65eef0a1dfffbf9.md) | 54 | `declaration-track:112c9c76c65eef0a1dfffbf9916bfa8d2db575347560bb6ab07208465f6de226` |
| 2 | `instance` | [addCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/addcommgroup--2c3caa64a47a95baacb053df.md) | 61 | `declaration-track:2c3caa64a47a95baacb053df88c53a8bf582323fff3db91e246a33d92c02efe5` |
| 3 | `instance` | [module'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/module--6989085c763eee0d3ea6865f.md) | 65 | `declaration-track:6989085c763eee0d3ea6865f8e41b94ccd06d392de0f98076c156f8f8fdebcaa` |
| 4 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/module--ccd3f510073b36895591befe.md) | 70 | `declaration-track:ccd3f510073b36895591befe6e7da660242d6db630d5a8620a34d509b722042f` |
| 5 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/iscentralscalar--86fe5b573c5b918f295cbfc3.md) | 74 | `declaration-track:86fe5b573c5b918f295cbfc3721c86e15fcb9bb816caa469e4ccf7edcba4ebbb` |
| 6 | `instance` | [inhabited](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/inhabited--171be3430aed256f36aebd16.md) | 80 | `declaration-track:171be3430aed256f36aebd16127e83b4129524af76a5d7812bafc4bd6338177b` |
| 7 | `abbrev` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/mk--aa5a21b573009cbd91ee93ff.md) | 86 | `declaration-track:aa5a21b573009cbd91ee93ff048ad0a8726a54cba814a7e07bdf52dd0e7046c5` |
| 8 | `theorem` | [is_quotient_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/is-quotient-mk--10dfe6c501b7d9885ae9f69d.md) | 90 | `result-track:10dfe6c501b7d9885ae9f69d0302d17dde3eae280ea01be87abe579b6cb8b844` |
| 9 | `def` | [lieSubmoduleInvariant](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/liesubmoduleinvariant--2b1469ec54806e9523281a24.md) | 96 | `declaration-track:2b1469ec54806e9523281a247358fcf099b9f55d321cd5c5d1b688186db8f233` |
| 10 | `def` | [actionAsEndoMap](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/actionasendomap--947c27fc3103497e6b51a617.md) | 104 | `declaration-track:947c27fc3103497e6b51a6171aa99bca63ec12669d37c2cbb2665c8e6fe07b0e` |
| 11 | `instance` | [actionAsEndoMapBracket](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/actionasendomapbracket--540aa9242fa29becad7fa7f5.md) | 113 | `declaration-track:540aa9242fa29becad7fa7f598d4058e18047718d2cfebb8a6a7d0a9eb132153` |
| 12 | `instance` | [lieQuotientLieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/liequotientlieringmodule--e18b56a4044e3345c835576d.md) | 117 | `declaration-track:e18b56a4044e3345c835576dab92a1979528a9ed5b97c9d3539f9258962607d5` |
| 13 | `instance` | [lieQuotientLieModule](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/liequotientliemodule--6e325f40d174c8925d9749ea.md) | 122 | `declaration-track:6e325f40d174c8925d9749ea07fa8fa096b35980c6bb14413255e7e09db3a9ef` |
| 14 | `instance` | [lieQuotientHasBracket](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/liequotienthasbracket--9016d9aa3c76c107e4a8f768.md) | 126 | `declaration-track:9016d9aa3c76c107e4a8f768a30442fc3612c90939e4b27bc4891765cc10cc27` |
| 15 | `theorem` | [mk_bracket](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/mk-bracket--cb42c258175e32d4c4c8d5b1.md) | 142 | `result-track:cb42c258175e32d4c4c8d5b1f9f9088c1f4a2e58255ef76665c49bbb5e7f54db` |
| 16 | `instance` | [lieQuotientLieRing](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/liequotientliering--e69b375a830b7c2081abb157.md) | 146 | `declaration-track:e69b375a830b7c2081abb157d008948385736cc2704a0cef384a2dadd3439526` |
| 17 | `instance` | [lieQuotientLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/liequotientliealgebra--33c6de17a72ce28b0ab2f7f7.md) | 177 | `declaration-track:33c6de17a72ce28b0ab2f7f76203d6dc062092692711ff75393c3c64889c9858` |
| 18 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/mk--dda9de963286d08cb1123469.md) | 190 | `declaration-track:dda9de963286d08cb11234697bc8268ef0b4aa306183d2921f33f329d0838327` |
| 19 | `theorem` | [mk_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/mk-eq-zero--e3147f53f4caf610f2aa08be.md) | 197 | `result-track:e3147f53f4caf610f2aa08be47114d16c760bd7575f45566ee561f47372f1974` |
| 20 | `theorem` | [mk_eq_zero'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/mk-eq-zero--0edbaa231f92395ee483a5e7.md) | 203 | `result-track:0edbaa231f92395ee483a5e710b5203333784132f2aaa6c17fd57e1cccdf7b7f` |
| 21 | `theorem` | [mk'_ker](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/mk-ker--a6196976713ab80d7e8adc3b.md) | 207 | `result-track:a6196976713ab80d7e8adc3bcc8b6979060de268fcb01dc6353137a83c4e7610` |
| 22 | `theorem` | [map_mk'_eq_bot_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/map-mk-eq-bot-le--f904b5464d1124f46d65f3b0.md) | 211 | `result-track:f904b5464d1124f46d65f3b0288db5ddae77c0eb1f5f09dc544cd14c69f54b2b` |
| 23 | `theorem` | [lieModuleHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/liemodulehom-ext--bbc69930ec2b7e14fde48357.md) | 220 | `result-track:bbc69930ec2b7e14fde483570ac131be233fe26ba4088aae37b7c67823f7f8ec` |
| 24 | `def` | [quotKerEquivRange](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/declarations/quotkerequivrange--4ddcf936822e8316530d4509.md) | 238 | `declaration-track:4ddcf936822e8316530d45093a70bc1fb1e7578ff40d60cf7aec803868aa1eff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
