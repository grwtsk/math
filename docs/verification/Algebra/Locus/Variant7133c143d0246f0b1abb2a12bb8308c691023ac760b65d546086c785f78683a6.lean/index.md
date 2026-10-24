# Verification target: GRWTSK.Algebra.Locus.Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec646f89da94c96425acc30357c160f66223de1f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec646f89da94c96425acc30357c160f66223de1f`.

Source path: `GRWTSK/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Etale.Kaehler` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.FreeLocus` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Support` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsSmoothAt](../../../../mathematics/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean/declarations/issmoothat--4bc74a23f53a7ef5f897c467.md) | 50 | `declaration-track:4bc74a23f53a7ef5f897c467f51a9ac8e6e50d51fcfb40f496e153e5c0d0a195` |
| 2 | `def` | [smoothLocus](../../../../mathematics/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean/declarations/smoothlocus--95733be73d3208653fbcfb89.md) | 55 | `declaration-track:95733be73d3208653fbcfb894cea8cf920d2c3b9567a4f49d9db27cc35f494d5` |
| 3 | `lemma` | [smoothLocus_eq_compl_support_inter](../../../../mathematics/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean/declarations/smoothlocus-eq-compl-support-inter--f5ade0493f3139f731262ab2.md) | 60 | `result-track:f5ade0493f3139f731262ab2191dc3953c2bbbf31860008a552c4904840cec48` |
| 4 | `lemma` | [basicOpen_subset_smoothLocus_iff](../../../../mathematics/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean/declarations/basicopen-subset-smoothlocus-iff--06317fe3f6b0ddba2ffc1d21.md) | 81 | `result-track:06317fe3f6b0ddba2ffc1d21a1cd9a9e8504e6aecbff2d1801e4420deb47d89d` |
| 5 | `lemma` | [basicOpen_subset_smoothLocus_iff_smooth](../../../../mathematics/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean/declarations/basicopen-subset-smoothlocus-iff-smooth--9458f4cae0fc510a79841d2a.md) | 97 | `result-track:9458f4cae0fc510a79841d2aaeb98bca32d196284652b4d8220d8e18550ba787` |
| 6 | `lemma` | [smoothLocus_eq_univ_iff](../../../../mathematics/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean/declarations/smoothlocus-eq-univ-iff--776ab00583380cad007eb954.md) | 104 | `result-track:776ab00583380cad007eb954c9a430da793bcdf3b6003d6d7c0b58976a5e84ed` |
| 7 | `lemma` | [smoothLocus_comap_of_isLocalization](../../../../mathematics/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean/declarations/smoothlocus-comap-of-islocalization--45c32b427549d73b899910df.md) | 111 | `result-track:45c32b427549d73b899910df24e7690239c20e35c256426dd608f31f018ebea1` |
| 8 | `lemma` | [isOpen_smoothLocus](../../../../mathematics/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean/declarations/isopen-smoothlocus--0d1b4c343417891094f01e62.md) | 124 | `result-track:0d1b4c343417891094f01e62aed903d01c390af306fba274c9ad831d24aed317` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
