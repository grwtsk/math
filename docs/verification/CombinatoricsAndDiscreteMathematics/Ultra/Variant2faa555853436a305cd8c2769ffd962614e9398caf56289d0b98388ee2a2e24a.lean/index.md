# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Ultra.Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffcdb09397d1bb4206ebe38e0efc9b2b467c869b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffcdb09397d1bb4206ebe38e0efc9b2b467c869b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Ultra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isUltrametricDist_of_forall_norm_add_one_le_max_norm_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean/declarations/isultrametricdist-of-forall-norm-add-one-le-max-norm-one--7036616694bf28e934c74260.md) | 49 | `result-track:7036616694bf28e934c74260d50e9101056d12578f9431633dca2998200e596e` |
| 2 | `lemma` | [isUltrametricDist_of_forall_norm_add_one_of_norm_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean/declarations/isultrametricdist-of-forall-norm-add-one-of-norm-le-one--8ac5b6e260d3f1954f9b90df.md) | 58 | `result-track:8ac5b6e260d3f1954f9b90df904b0bc99f37420d31b390703f3e16204a8a7780` |
| 3 | `lemma` | [isUltrametricDist_of_forall_norm_sub_one_of_norm_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean/declarations/isultrametricdist-of-forall-norm-sub-one-of-norm-le-one--50b3a4ee14d1c440b5295430.md) | 69 | `result-track:50b3a4ee14d1c440b52954302119b38b014fa3b4b38744a168a4e4b42d7a21c0` |
| 4 | `lemma` | [isUltrametricDist_of_forall_pow_norm_le_nsmul_pow_max_one_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean/declarations/isultrametricdist-of-forall-pow-norm-le-nsmul-pow-max-one-norm--8cb39d06ce788bdf1d3e1e6b.md) | 77 | `result-track:8cb39d06ce788bdf1d3e1e6b954bfb20ff83908c36173fe6de37146ef97463a8` |
| 5 | `lemma` | [isUltrametricDist_of_forall_norm_natCast_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean/declarations/isultrametricdist-of-forall-norm-natcast-le-one--39a3cdfb12f7867019e92552.md) | 107 | `result-track:39a3cdfb12f7867019e92552c352687eca6b1f72ed1f0a8973017dad27c8e7c8` |
| 6 | `theorem` | [isUltrametricDist_iff_forall_norm_natCast_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean/declarations/isultrametricdist-iff-forall-norm-natcast-le-one--f8fa3e7cf596fad3ec6864f6.md) | 144 | `result-track:f8fa3e7cf596fad3ec6864f68ef1aae213cf90bc758621bd25ae4b1f6c297c7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
