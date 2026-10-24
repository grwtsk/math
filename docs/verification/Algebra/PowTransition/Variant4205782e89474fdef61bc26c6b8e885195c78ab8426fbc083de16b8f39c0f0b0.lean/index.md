# Verification target: GRWTSK.Algebra.PowTransition.Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b102a61d06714039051207d7bc3d1d97ba3833d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/index.md) · [Full source](../../../../mathematics/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b102a61d06714039051207d7bc3d1d97ba3833d`.

Source path: `GRWTSK/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Operations` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ideal.Quotient.factor_ker](../../../../mathematics/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/declarations/ideal-quotient-factor-ker--0df0358f30d4898830441429.md) | 47 | `result-track:0df0358f30d4898830441429bb5625ef32855327c9204f5b3bc8b564d2cf46e1` |
| 2 | `lemma` | [Ideal.map_mk_comap_factor](../../../../mathematics/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/declarations/ideal-map-mk-comap-factor--7ec9aa31a3e7e2a807390044.md) | 58 | `result-track:7ec9aa31a3e7e2a80739004438e6809f9a752789bd328513d45c8dbc5a1d27f9` |
| 3 | `theorem` | [mapQ_eq_factor](../../../../mathematics/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/declarations/mapq-eq-factor--375cdb5591e9a3401933ceab.md) | 78 | `result-track:375cdb5591e9a3401933ceaba1ec6d4cd6eb61dbf4ce8f14a82aef7824c9221f` |
| 4 | `lemma` | [pow_smul_top_le](../../../../mathematics/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/declarations/pow-smul-top-le--14d3b2fff8e3e5c6879cb6e5.md) | 85 | `result-track:14d3b2fff8e3e5c6879cb6e5fae6099ac90fa5117f086696378ee533039b5176` |
| 5 | `abbrev` | [factorPow](../../../../mathematics/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/declarations/factorpow--6a46d7c96385e8065d21c14a.md) | 96 | `declaration-track:6a46d7c96385e8065d21c14a9c74523eba6a4e9472df5a454c9ff7b6467d566f` |
| 6 | `abbrev` | [factorPowSucc](../../../../mathematics/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/declarations/factorpowsucc--394cee70824d1e16a6716531.md) | 101 | `declaration-track:394cee70824d1e16a67165312bdc6abc36a7afd7c14b3c4126c63f832c566bae` |
| 7 | `abbrev` | [factorPow](../../../../mathematics/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/declarations/factorpow--5a5040915931d4426e98f24f.md) | 122 | `declaration-track:5a5040915931d4426e98f24f0efae8c095f74615e48e0a3a79d12a7b59b49d7b` |
| 8 | `abbrev` | [factorPowSucc](../../../../mathematics/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/declarations/factorpowsucc--549f27ff5bc0f876f20f7d6b.md) | 126 | `declaration-track:549f27ff5bc0f876f20f7d6bc6fb6215fa06e1f765e1f3c809b9e1649b080538` |
| 9 | `lemma` | [Ideal.map_mk_comap_factorPow](../../../../mathematics/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/declarations/ideal-map-mk-comap-factorpow--0a8c3e70cd123f8246bb54a1.md) | 135 | `result-track:0a8c3e70cd123f8246bb54a13b6efed5d3b813d1c53f88be2d5a9989bed4bbd1` |
| 10 | `lemma` | [factorPowSucc.isUnit_of_isUnit_image](../../../../mathematics/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/declarations/factorpowsucc-isunit-of-isunit-image--4da699a5cbe430bafb3f5706.md) | 141 | `result-track:4da699a5cbe430bafb3f5706c04d52568750768052a7e0c78fc0ddd5ed1c6bba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
