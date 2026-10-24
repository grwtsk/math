# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AllAny.Variantbe761b5527f4330a3acc9f00d779b433b3c2b406d9dbe20c64eec2b6800581e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "919da15733ab1e800e038bfd0724ad55e820f6e1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variantbe761b5527f4330a3acc9f00d779b433b3c2b406d9dbe20c64eec2b6800581e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variantbe761b5527f4330a3acc9f00d779b433b3c2b406d9dbe20c64eec2b6800581e6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variantbe761b5527f4330a3acc9f00d779b433b3c2b406d9dbe20c64eec2b6800581e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `919da15733ab1e800e038bfd0724ad55e820f6e1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variantbe761b5527f4330a3acc9f00d779b433b3c2b406d9dbe20c64eec2b6800581e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variantbe761b5527f4330a3acc9f00d779b433b3c2b406d9dbe20c64eec2b6800581e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [all_iff_forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variantbe761b5527f4330a3acc9f00d779b433b3c2b406d9dbe20c64eec2b6800581e6.lean/declarations/all-iff-forall--1925dce5e7403a16470d9421.md) | 35 | `result-track:1925dce5e7403a16470d94212bb1f9ccd5b1172581b0aeb1d9f291f4b25d0cfa` |
| 2 | `theorem` | [all_iff_forall_prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variantbe761b5527f4330a3acc9f00d779b433b3c2b406d9dbe20c64eec2b6800581e6.lean/declarations/all-iff-forall-prop--45fe1f1239099bcc58eddfc2.md) | 41 | `result-track:45fe1f1239099bcc58eddfc272643357235552b8e48228e8071059ff3cf5583a` |
| 3 | `theorem` | [any_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variantbe761b5527f4330a3acc9f00d779b433b3c2b406d9dbe20c64eec2b6800581e6.lean/declarations/any-iff-exists--095262742ad010ef5518f3f6.md) | 50 | `result-track:095262742ad010ef5518f3f6f37fdc6d03d4df4a621cc17e2aafca4683a94dd6` |
| 4 | `theorem` | [any_iff_exists_prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variantbe761b5527f4330a3acc9f00d779b433b3c2b406d9dbe20c64eec2b6800581e6.lean/declarations/any-iff-exists-prop--4026bd7258d2c1d307a78100.md) | 56 | `result-track:4026bd7258d2c1d307a78100af08ebdf0555b553de6be6dce2403334c35bc253` |
| 5 | `theorem` | [any_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variantbe761b5527f4330a3acc9f00d779b433b3c2b406d9dbe20c64eec2b6800581e6.lean/declarations/any-of-mem--143b85c06bfa8d3ddb678a5a.md) | 59 | `result-track:143b85c06bfa8d3ddb678a5aff7a587840eabc9a11aa6d4352bab20953910997` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
