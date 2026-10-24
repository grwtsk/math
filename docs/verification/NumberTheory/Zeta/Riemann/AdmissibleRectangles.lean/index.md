# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.AdmissibleRectangles

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04450322ed067cd65d343985f2ea92c5a968c734",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04450322ed067cd65d343985f2ea92c5a968c734`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.TrivialZeroResidues`](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_between_avoiding](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/exists-between-avoiding--6b9e537452578c91aca15236.md) | 33 | `result-track:6b9e537452578c91aca15236d62cf8bf0d3463df05f467357d2017a5389713f6` |
| 2 | `theorem` | [exists_admissible_height](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/exists-admissible-height--3c6d99a1abba66ff540e911a.md) | 53 | `result-track:3c6d99a1abba66ff540e911a077db464d5c94a1179ea38296bce3d0cef3ba941` |
| 3 | `def` | [contourHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/contourheight--3e4565a2d964e374763e46bf.md) | 65 | `declaration-track:3e4565a2d964e374763e46bfe6c63616a90742c6e4f6939428754647ba9b4e0b` |
| 4 | `theorem` | [contourHeight_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/contourheight-bounds--425e8c4e91d526241bd8c0cd.md) | 67 | `result-track:425e8c4e91d526241bd8c0cd21fccb9c99e1f9555ad485b187551611fe2bcf71` |
| 5 | `theorem` | [contourHeight_avoids](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/contourheight-avoids--d0e52c9dea0069a00d8d13b2.md) | 72 | `result-track:d0e52c9dea0069a00d8d13b2bed3e784d6ac298355c312c32e1e082878911c6e` |
| 6 | `theorem` | [contourHeight_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/contourheight-pos--862fdc6ee7db6668619e8d24.md) | 75 | `result-track:862fdc6ee7db6668619e8d2422da17b52da57711cecf778a579778284882919f` |
| 7 | `theorem` | [contourHeight_strictMono](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/contourheight-strictmono--837a8a794cc2b7a4b125e336.md) | 81 | `result-track:837a8a794cc2b7a4b125e336cef0d52bfee2b98da3acc1790cc04d50896f273c` |
| 8 | `theorem` | [contourHeight_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/contourheight-tendsto--6f08ce003b15339dc804f3ba.md) | 89 | `result-track:6f08ce003b15339dc804f3ba42ea960f49b363ae2cd1a374aa84fe410d02657e` |
| 9 | `def` | [leftEdge](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/leftedge--0fce6ebbc89e836295dd456e.md) | 95 | `declaration-track:0fce6ebbc89e836295dd456e73d66d747d669bac50d2d0dc4e93d0ebc4630c2d` |
| 10 | `theorem` | [leftEdge_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/leftedge-neg--5e1e32a781da152d7cc325b9.md) | 97 | `result-track:5e1e32a781da152d7cc325b9f864774b6fd511e3f26fd6c7d7510e32e1f583ad` |
| 11 | `def` | [interior](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/interior--d88002b31e1da9435909f146.md) | 103 | `declaration-track:d88002b31e1da9435909f146815b7fde28b48b1df11667a4d665fc6e75ec2984` |
| 12 | `def` | [boundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/boundary--db888538dce42ef94148a014.md) | 107 | `declaration-track:db888538dce42ef94148a014ff33d14516d8f58fb6341a36543597afb2f5f42b` |
| 13 | `theorem` | [horizontal_mem_boundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/horizontal-mem-boundary--76bc8993fea39636768646be.md) | 112 | `result-track:76bc8993fea39636768646be60ce4d34d77db835e1c9aa6ca9fb9c734fc9cf39` |
| 14 | `theorem` | [vertical_mem_boundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/vertical-mem-boundary--c07130f384dd2b0c91c7935f.md) | 118 | `result-track:c07130f384dd2b0c91c7935fa03bd43c638d41902b46c6a50b1f5c4a5cbf168c` |
| 15 | `theorem` | [eventually_mem_interior](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/eventually-mem-interior--089eff9ff9a2b4e1a133105d.md) | 131 | `result-track:089eff9ff9a2b4e1a133105d1b113a4b1ed679df3bc286a99caab8e07d0bdd07` |
| 16 | `theorem` | [zeta_zero_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/zeta-zero-iff--c8b511c53756839c619c96fd.md) | 145 | `result-track:c8b511c53756839c619c96fd2ffbc5991289a0497a74f5eac2269f134a6b43e8` |
| 17 | `theorem` | [zeta_ne_zero_on_left](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/zeta-ne-zero-on-left--f4f20919bf301bf17c736e5f.md) | 160 | `result-track:f4f20919bf301bf17c736e5f293618186cf7bbab3cce8ffc447fa9ba2479ae86` |
| 18 | `theorem` | [zeta_ne_zero_on_horizontal](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/zeta-ne-zero-on-horizontal--72dbdba98aa9d6c119e9d754.md) | 175 | `result-track:72dbdba98aa9d6c119e9d754837cce53956f201492f1fee45945b7591ea6c875` |
| 19 | `theorem` | [one_mem_interior](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/one-mem-interior--a97961ccfe524d37fd415e33.md) | 185 | `result-track:a97961ccfe524d37fd415e33328c43afbf51a295d53e1a75e5bf6b18143ae775` |
| 20 | `theorem` | [boundary_ne_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/boundary-ne-one--189a10e93eeb471c350e0292.md) | 191 | `result-track:189a10e93eeb471c350e02921e18e05aeb394ec9856f65cde26baaf97bf32cc1` |
| 21 | `theorem` | [zeta_ne_zero_on_boundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/zeta-ne-zero-on-boundary--8dea94f620b459b975b8ae40.md) | 202 | `result-track:8dea94f620b459b975b8ae40561b3867fc173555a3d2cb1a83fe9732aa484949` |
| 22 | `theorem` | [point_mem_interior_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/point-mem-interior-iff--50fad1f2fa2393320aaf2320.md) | 210 | `result-track:50fad1f2fa2393320aaf2320f7b2b4b7821c05c590861f6ae09dd89ec8ea0e9d` |
| 23 | `theorem` | [trivial_mem_interior_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/trivial-mem-interior-iff--27229eb72591409d7f0d9ff9.md) | 224 | `result-track:27229eb72591409d7f0d9ff9251aefb741f4f0b797b3f0b180e996e17fd3e9a9` |
| 24 | `def` | [singularHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/singularhead--0dbdfb81b57637650a48e247.md) | 246 | `declaration-track:0dbdfb81b57637650a48e247ef5c140765e234fdd34fb43d97d7ce4aa3bcbe15` |
| 25 | `theorem` | [mem_singularHead_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/declarations/mem-singularhead-iff--385d2dee25c411a64e46f13e.md) | 252 | `result-track:385d2dee25c411a64e46f13e01efd4acfee4202ac2b7bc738b315ab97348e966` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
