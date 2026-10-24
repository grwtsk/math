# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Li2Connection.Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a70c583ba061275efe406256d68d3e2ac49f3cec",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a70c583ba061275efe406256d68d3e2ac49f3cec`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.TaylorModel.Log1p` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [g](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/g--296a68505113196fe3cd6779.md) | 54 | `declaration-track:296a68505113196fe3cd6779e6edcf38d751e5a9713c605140166484fb399059` |
| 2 | `def` | [li2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/li2--361f81fb21433f5b859526f9.md) | 57 | `declaration-track:361f81fb21433f5b859526f94e97d6ed4a4d5a0ee009ee82c5ab5972e7a6f0f6` |
| 3 | `def` | [li_pv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/li-pv--2be987989754e5a4b771b915.md) | 63 | `declaration-track:2be987989754e5a4b771b9152ceeedf06307be9a4abbfabd6eaf6d55a98a2d14` |
| 4 | `theorem` | [integral_sub_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/integral-sub-left--a7f13100752e475a8fadc83f.md) | 72 | `result-track:a7f13100752e475a8fadc83f05978ba13cbf5cb5e31752d778b8a5078ca49905` |
| 5 | `theorem` | [integral_sub_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/integral-sub-right--640b075b3f71f35fbf71267d.md) | 87 | `result-track:640b075b3f71f35fbf71267d92940c78ff6a9bdc452f5006e9ba7b22f09ef0b9` |
| 6 | `theorem` | [log_one_minus_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/log-one-minus-integrable--4708b7d5de800359204a58f3.md) | 117 | `result-track:4708b7d5de800359204a58f345dd1fb847d2e128f2f083d1e8cbc60324a99d1f` |
| 7 | `theorem` | [log_one_plus_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/log-one-plus-integrable--eafa6bf5c37ec7fd590ebf70.md) | 124 | `result-track:eafa6bf5c37ec7fd590ebf701f03e232f5bdb92b471762ca8e2e47d467f24540` |
| 8 | `theorem` | [pv_integral_eq_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/pv-integral-eq-symmetric--28a5de04b5ed50a75d711316.md) | 129 | `result-track:28a5de04b5ed50a75d711316a83c247a2822272ceaf747add5d6e8896e07ef50` |
| 9 | `theorem` | [g_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/g-intervalintegrable--fb1b1dc93e057167776988e9.md) | 139 | `result-track:fb1b1dc93e057167776988e97631803d5a63380e34197c2d82307dc956d2d9e9` |
| 10 | `theorem` | [limit_integral_g](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/limit-integral-g--f1e754e2026ebc642ac449be.md) | 145 | `result-track:f1e754e2026ebc642ac449beab2b06d796fd2e4af215222391a227baaadf8613` |
| 11 | `theorem` | [li_pv_two_eq_li2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/li-pv-two-eq-li2--bc973bdf5bd4c80a74feef3c.md) | 157 | `result-track:bc973bdf5bd4c80a74feef3c0db16f2cefd055a77f8b60b154b6e8ff3a1cffae` |
| 12 | `theorem` | [li_pv_two_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/li-pv-two-lower--4db13a455596c5bf748ddfda.md) | 169 | `result-track:4db13a455596c5bf748ddfdae5a6c96c955b87ebdaa9dc81e0d6004016cb87fa` |
| 13 | `theorem` | [li_pv_two_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/li-pv-two-upper--02fa2f9df6993365f8b37f31.md) | 175 | `result-track:02fa2f9df6993365f8b37f314fdd6def2979355ec1e2338033596994a51e861a` |
| 14 | `theorem` | [li_pv_two_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/declarations/li-pv-two-bounds--d5461d5a8b34ddcaccb58b68.md) | 181 | `result-track:d5461d5a8b34ddcaccb58b684d3b364b511aea6cf3e6758184a778394160446e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
