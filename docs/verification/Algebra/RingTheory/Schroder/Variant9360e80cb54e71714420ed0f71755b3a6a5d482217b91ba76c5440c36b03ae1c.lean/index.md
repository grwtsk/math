# Verification target: GRWTSK.Algebra.RingTheory.Schroder.Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b9bdee3f049bdabaffca113ead0d155febaf060",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b9bdee3f049bdabaffca113ead0d155febaf060`.

Source path: `GRWTSK/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [largeSchroderSeries](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/declarations/largeschroderseries--949c3479805ba3b26c221b1b.md) | 45 | `declaration-track:949c3479805ba3b26c221b1bfa6dfbc0a6d461bed2239ba2392351cff12d90f2` |
| 2 | `lemma` | [coeff_largeSchroderSeries](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/declarations/coeff-largeschroderseries--73edcf89264d4b9772aaa939.md) | 49 | `result-track:73edcf89264d4b9772aaa93947119d2f06f40de746521d6c39987dbd2c03039e` |
| 3 | `lemma` | [constantCoeff_largeSchroderSeries](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/declarations/constantcoeff-largeschroderseries--45ec9f17643dfc2219724511.md) | 54 | `result-track:45ec9f17643dfc22197245114a7432da1ab9f39bcbdff04b39c97c2a6f231c16` |
| 4 | `lemma` | [coeff_X_mul_largeSchroderSeries](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/declarations/coeff-x-mul-largeschroderseries--759d81a5bb80a506a3db3f53.md) | 59 | `result-track:759d81a5bb80a506a3db3f53679bbfa94db1891234288217dcf429d386fcdab9` |
| 5 | `lemma` | [coeff_X_mul_largeSchroderSeriesSeries_sq](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/declarations/coeff-x-mul-largeschroderseriesseries-sq--6d7d6dc0708c3b92ce5e0934.md) | 69 | `result-track:6d7d6dc0708c3b92ce5e0934c8af38ad6f91d07cc10e24b92428e6c18e169c1d` |
| 6 | `theorem` | [largeSchroderSeries_eq_one_add_X_mul_largeSchroderSeries_add_X_mul_largeSchroderSeries_sq](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/declarations/largeschroderseries-eq-one-add-x-mul-largeschroderseries-add-x-mul-large--a5b2cf58c0645de36bb43bad.md) | 102 | `result-track:a5b2cf58c0645de36bb43bad72c8fcb27784d77ee20ccd70b45bba6809e7c07e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
