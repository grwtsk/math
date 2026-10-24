# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Balance.Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b2b2ca767a64a372cbb26c89a50ba49dafeca9d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b2b2ca767a64a372cbb26c89a50ba49dafeca9d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Expect` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [balance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean/declarations/balance--af7d7371f2a007974f25d3c9.md) | 29 | `declaration-track:af7d7371f2a007974f25d3c9e9c860e347a63795c9ca98a2c55d77c071d3dfd7` |
| 2 | `lemma` | [balance_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean/declarations/balance-apply--0d81e6679c1f7b8802bf4c42.md) | 31 | `result-track:0d81e6679c1f7b8802bf4c42cd685a33c0b7b5e6f52573ab720c61d6b6a9be74` |
| 3 | `lemma` | [balance_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean/declarations/balance-zero--0653aa5438a40f7e6cefe0a1.md) | 33 | `result-track:0653aa5438a40f7e6cefe0a14ce01d05475b6f8997cd2356c2009ab40eab2d81` |
| 4 | `lemma` | [balance_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean/declarations/balance-add--47add77d5e44bb493dc2a541.md) | 35 | `result-track:47add77d5e44bb493dc2a5416fe5d402782560516ec7e47944d53b4534d70ffd` |
| 5 | `lemma` | [balance_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean/declarations/balance-sub--d8baf7be2a419d1ef1b6f254.md) | 38 | `result-track:d8baf7be2a419d1ef1b6f2548e3ad3ad70719f848258f821c68ae375e4ab6ced` |
| 6 | `lemma` | [balance_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean/declarations/balance-neg--0e9538481beb37037428f9e1.md) | 41 | `result-track:0e9538481beb37037428f9e1fb228d38daf90d99592b68718d8e727e750e4ef2` |
| 7 | `lemma` | [sum_balance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean/declarations/sum-balance--a852795d1d6d3afd2a19bc81.md) | 44 | `result-track:a852795d1d6d3afd2a19bc81c0614880fcc14adeb6f67bd842bc28147e93dd15` |
| 8 | `lemma` | [expect_balance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean/declarations/expect-balance--99f477f6eda640c176258d0e.md) | 47 | `result-track:99f477f6eda640c176258d0e62475f4ead0db6ffeb472e34256640bcff899c59` |
| 9 | `lemma` | [balance_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean/declarations/balance-idem--5ebefc8a7ae50b168d62aca1.md) | 49 | `result-track:5ebefc8a7ae50b168d62aca1324f5c413e0f6e90d2bee4c450fbff21f103f8aa` |
| 10 | `lemma` | [map_balance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847.lean/declarations/map-balance--7a3767bcf5002837b0e11e2d.md) | 52 | `result-track:7a3767bcf5002837b0e11e2df903ac14876282dbf00cff51b4b63c42d627c52c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
