# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variant38a3278d314b732bda0257603e195c7bd6a0ea7bd3328d38574bbfadd1ffcc20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b013b3717519a336bbda317a3cf28364c7e57ef",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant38a3278d314b732bda0257603e195c7bd6a0ea7bd3328d38574bbfadd1ffcc20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variant38a3278d314b732bda0257603e195c7bd6a0ea7bd3328d38574bbfadd1ffcc20.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variant38a3278d314b732bda0257603e195c7bd6a0ea7bd3328d38574bbfadd1ffcc20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b013b3717519a336bbda317a3cf28364c7e57ef`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant38a3278d314b732bda0257603e195c7bd6a0ea7bd3328d38574bbfadd1ffcc20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant38a3278d314b732bda0257603e195c7bd6a0ea7bd3328d38574bbfadd1ffcc20.lean.json)

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
| 1 | `lemma` | [units_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant38a3278d314b732bda0257603e195c7bd6a0ea7bd3328d38574bbfadd1ffcc20.lean/declarations/units-eq-one--c11179c8370b2f091ff903e7.md) | 32 | `result-track:c11179c8370b2f091ff903e7263a4f1b0aec2ca12e9d446995fa196caccee602` |
| 2 | `lemma` | [addUnits_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Units/Variant38a3278d314b732bda0257603e195c7bd6a0ea7bd3328d38574bbfadd1ffcc20.lean/declarations/addunits-eq-zero--b429bfda0ca9549beda10c7a.md) | 34 | `result-track:b429bfda0ca9549beda10c7aa4cf37bb7720ad489ca032209fe22b0385ad63a1` |
| 3 | `instance` | [unique_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variant38a3278d314b732bda0257603e195c7bd6a0ea7bd3328d38574bbfadd1ffcc20.lean/declarations/unique-units--a7a29077033b0c2260a9127b.md) | 37 | `declaration-track:a7a29077033b0c2260a9127ba387ee7223079fbe6b01c9fd6a249e8890a44cf4` |
| 4 | `instance` | [unique_addUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variant38a3278d314b732bda0257603e195c7bd6a0ea7bd3328d38574bbfadd1ffcc20.lean/declarations/unique-addunits--7bf6e5830ffa4c004edad269.md) | 41 | `declaration-track:7bf6e5830ffa4c004edad26944c7e7170480cba16eb1a0da410e01500c0bfa12` |
| 5 | `lemma` | [isUnit_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant38a3278d314b732bda0257603e195c7bd6a0ea7bd3328d38574bbfadd1ffcc20.lean/declarations/isunit-iff--819f352b377d73195ef4ddc6.md) | 46 | `result-track:819f352b377d73195ef4ddc60f2143b1cc03d2ebb630dd750582dfa3f3a92cae` |
| 6 | `lemma` | [isAddUnit_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant38a3278d314b732bda0257603e195c7bd6a0ea7bd3328d38574bbfadd1ffcc20.lean/declarations/isaddunit-iff--a631bcc4f130c95093b4b526.md) | 49 | `result-track:a631bcc4f130c95093b4b526673dcaa36314a6112ec527c54a9643836ffc804f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
