# Verification target: GRWTSK.Algebra.Basic.Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31569c86e27a2ec5620c6b225c5a5b275acedfd9",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31569c86e27a2ec5620c6b225c5a5b275acedfd9`.

Source path: `GRWTSK/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.QuotientGroup.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_eq_one_iff](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/zero-eq-one-iff--9f2bb2da28da6d668c2a7a6f.md) | 49 | `result-track:9f2bb2da28da6d668c2a7a6f1955550309694d7e2a3984250c869ac4ec298bee` |
| 2 | `theorem` | [zero_ne_one_iff](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/zero-ne-one-iff--645528d32ed3dd72d00797dc.md) | 52 | `result-track:645528d32ed3dd72d00797dcdf08316a0dc3db46e7bbb4f94fb3a0f005615405` |
| 3 | `theorem` | [nontrivial](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/nontrivial--73aed550d5c4beec709149a5.md) | 55 | `result-track:73aed550d5c4beec709149a5bccdf72dccf8ad61a37f6e5d7eebf88b311a3d62` |
| 4 | `theorem` | [subsingleton_iff](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/subsingleton-iff--c57f791f0454e990a47f8a58.md) | 58 | `result-track:c57f791f0454e990a47f8a583b5397171300cc68a8eb34c67648fb8c31927619` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/instance--29b20cf18ae93f1b5bb796f2.md) | 62 | `declaration-track:29b20cf18ae93f1b5bb796f2bbf6f9357e0ae151d5a81d6192bb3b39fc7e8fd9` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/instance--487564bd6717e73eb8c5c4a7.md) | 68 | `declaration-track:487564bd6717e73eb8c5c4a778bbb902e9590d864c966d4540ef88ef3b5ea428` |
| 7 | `instance` | [smulCommClass](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/smulcommclass--2cf7fe704ba4f0c2091b9900.md) | 72 | `declaration-track:2cf7fe704ba4f0c2091b990026e17213e55f8ebf0f38002ddc6a3d16e33cbabf` |
| 8 | `instance` | [smulCommClass'](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/smulcommclass--c57ef85e498eb632af1c7c59.md) | 76 | `declaration-track:c57ef85e498eb632af1c7c599f57c14eba9d7be17b6c7a36dffb7690b065da5c` |
| 9 | `theorem` | [eq_zero_iff_dvd](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/eq-zero-iff-dvd--bc0da56dd4a86e6d5fced64f.md) | 80 | `result-track:bc0da56dd4a86e6d5fced64f31c1b0080435a303a65e37484f843bd7206ffad4` |
| 10 | `lemma` | [mk_singleton_self](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/mk-singleton-self--e2aceadb55e864b26fda4494.md) | 85 | `result-track:e2aceadb55e864b26fda449431d87ee73c07393fa1894bbe1284eedd3acac6a0` |
| 11 | `instance` | [noZeroDivisors](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/nozerodivisors--4424443524123e3fed6b841a.md) | 90 | `declaration-track:4424443524123e3fed6b841a84b0dc24326305ca9240a48fb1468dc3aace3657` |
| 12 | `instance` | [isDomain](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/isdomain--abcf41b2928b9717cbe8c911.md) | 95 | `declaration-track:abcf41b2928b9717cbe8c911c753b85f46e125dbf08c3e699785f9d65429c879` |
| 13 | `theorem` | [isDomain_iff_prime](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/isdomain-iff-prime--0ae1aba14fefa644c8dcbbc9.md) | 99 | `result-track:0ae1aba14fefa644c8dcbbc972e5643e88c4f47cd996f58fc4eac104daa160a9` |
| 14 | `theorem` | [exists_inv](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/exists-inv--78d06d995e32edead0a6b2f2.md) | 108 | `result-track:78d06d995e32edead0a6b2f2cbb9cec45a26509b460ab9c466afd8ed4b76e81a` |
| 15 | `abbrev` | [groupWithZero](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/groupwithzero--c41d08fc38b9744c9d1629ef.md) | 123 | `declaration-track:c41d08fc38b9744c9d1629ef1c42d786239f8b7b4fc3ef4afb2d04d33faf1e54` |
| 16 | `abbrev` | [divisionRing](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/divisionring--d824a7c554737afe1aaf874c.md) | 136 | `declaration-track:d824a7c554737afe1aaf874c219dfa0f493ce18e2cbf4172bbccc03cd6f929d7` |
| 17 | `abbrev` | [field](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/field--c1b4291a9879ffa915fd6e37.md) | 149 | `declaration-track:c1b4291a9879ffa915fd6e37926ee7de7c16ea7aa013287eb0d4a4aeac16a602` |
| 18 | `theorem` | [maximal_of_isField](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/maximal-of-isfield--5ae4548278be9bf80da8e587.md) | 155 | `result-track:5ae4548278be9bf80da8e587991995589f80cb85125e640e9ba36c650d9faacd` |
| 19 | `theorem` | [maximal_ideal_iff_isField_quotient](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/maximal-ideal-iff-isfield-quotient--33869cf5a2a2bacd6a7362c2.md) | 168 | `result-track:33869cf5a2a2bacd6a7362c2e58cdcd4f4e8b6724a6646e7d111efceaf86b251` |
| 20 | `instance` | [modulePi](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/modulepi--a33f0d4e34bb7844921067a3.md) | 182 | `declaration-track:a33f0d4e34bb7844921067a30c2450e5895461003523d61470e2eddbf9ef302a` |
| 21 | `def` | [piQuotEquiv](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/piquotequiv--1aa95fb129f51fa7d4df00da.md) | 198 | `declaration-track:1aa95fb129f51fa7d4df00daf56cc73bdc5ba54f173a81a98e898d040a6d8215` |
| 22 | `theorem` | [map_pi](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/map-pi--21f1d229339c1549ebfd4437.md) | 211 | `result-track:21f1d229339c1549ebfd44377240eeb20c93aa8f337bdd7e38461cd048414f3c` |
| 23 | `lemma` | [univ_eq_iUnion_image_add](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/univ-eq-iunion-image-add--56ddccf557c564822af1ace0.md) | 223 | `result-track:56ddccf557c564822af1ace0f39a6344e4cc01d31f3282bf3a54e6d1d10c10b1` |
| 24 | `lemma` | [_root_.GRWTSK.Algebra.ZeroEqOneIff.Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.Finite.of_finite_quot_finite_ideal](../../../../mathematics/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/declarations/root-grwtsk-algebra-zeroeqoneiff-variant867ab04791b8dc2de9088194698e0a89--beec9f89ce0152d2224afe98.md) | 227 | `result-track:beec9f89ce0152d2224afe98440196d58382b4169fd4096be85ab44a62226452` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
