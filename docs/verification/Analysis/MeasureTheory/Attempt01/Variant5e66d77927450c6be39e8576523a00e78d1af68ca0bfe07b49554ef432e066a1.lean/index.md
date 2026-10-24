# Verification target: GRWTSK.Analysis.MeasureTheory.Attempt01.Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebcda7ff0832353d808a47ce8727f71d5e04c168",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebcda7ff0832353d808a47ce8727f71d5e04c168`.

Source path: `GRWTSK/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/poweronset--776dfd2164460b92e998c081.md) | 17 | `declaration-track:776dfd2164460b92e998c081303872a540e5babb221f79fb4e7ae44423efe52c` |
| 2 | `def` | [powerWeight](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/powerweight--a7628977fdf343f6a1aeefd2.md) | 20 | `declaration-track:a7628977fdf343f6a1aeefd2e42920a5987d33d1941a08de370d810a52f2d875` |
| 3 | `def` | [positiveOnsetAtom](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/positiveonsetatom--4cc812e79e305276886bf3d8.md) | 23 | `declaration-track:4cc812e79e305276886bf3d8f13ff35a69283524dbd2fd5832af46bef246d54b` |
| 4 | `def` | [positiveOnsetTail](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/positiveonsettail--5f112a119caad9ed8ab44927.md) | 26 | `declaration-track:5f112a119caad9ed8ab449274b0caff26acd07b420672218e6866f30c22197df` |
| 5 | `theorem` | [powerOnset_pos](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/poweronset-pos--94203637d6a24c0b80c41dc4.md) | 29 | `result-track:94203637d6a24c0b80c41dc4e277e44d391e3f2eef481990210b3346cfb92530` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/powerweight-nonneg--8c657a5bbaf3796d0034abee.md) | 33 | `result-track:8c657a5bbaf3796d0034abee950d03077136d9c367230f8ba1247df4be9d7f4a` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/positiveonsetatom-nonneg--58cb5a0636686cfa15e38731.md) | 38 | `result-track:58cb5a0636686cfa15e387311c8d1fae9845ecf302e69e8928f6d1cbac450caa` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/positiveonsetatom-measurable--60c852b2d07d156ccee016c8.md) | 42 | `result-track:60c852b2d07d156ccee016c83e740e49d68148a32d06fd15b0f465c24801f161` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/positiveonsetatom-integrable--5d1d6dc632a60e8fd5ca8819.md) | 46 | `result-track:5d1d6dc632a60e8fd5ca88198a3628bb49a8404dcc8e008005e3557e2d448ec2` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/positiveonsetatom-integral--54c31ca1a22e9f2078b2d37d.md) | 52 | `result-track:54c31ca1a22e9f2078b2d37d13fd95b7e7c80bc04cbf3a858b07e0d640309c0d` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/positiveonsetatom-eq-omitted--7c450efc6bcce4b4d157ebf0.md) | 60 | `result-track:7c450efc6bcce4b4d157ebf0be803df89125ed8cff16823f51bdf73ef6b032f9` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/positiveonsetatom-le-zeromoment--52e95f93d91e57bd5e826dbe.md) | 66 | `result-track:52e95f93d91e57bd5e826dbe4aa04e4331755d0f6a935699b430bf726840d3a5` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/positiveonsettail-summable--1c142010426731de5852a129.md) | 73 | `result-track:1c142010426731de5852a1294427436faffe1ae34c1043ccb9edf6dee43ed90e` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/positiveonsettail-nonneg--0a6e128817278939fa960df0.md) | 78 | `result-track:0a6e128817278939fa960df089bb9ec13d9983b7d357db59a0dd6c2741fa599d` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/positiveonsettail-measurable--74dec5e5cd9d5c86895d0748.md) | 81 | `result-track:74dec5e5cd9d5c86895d0748526c23a17cf00424837541d128aefb092c17c307` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean/declarations/positiveonsettail-eq-indicator--333775422058f9bc47ba85e0.md) | 84 | `result-track:333775422058f9bc47ba85e0ec15b4f8e911de50b52e0617a7323322f31498f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
