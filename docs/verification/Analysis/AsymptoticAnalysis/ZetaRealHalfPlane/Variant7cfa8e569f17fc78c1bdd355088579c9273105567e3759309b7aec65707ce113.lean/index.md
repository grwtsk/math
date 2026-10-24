# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZetaRealHalfPlane.Variant7cfa8e569f17fc78c1bdd355088579c9273105567e3759309b7aec65707ce113

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54a0cd686faa5d7b39af61d4ea2eff9d807bf4fe",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaRealHalfPlane/Variant7cfa8e569f17fc78c1bdd355088579c9273105567e3759309b7aec65707ce113.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaRealHalfPlane/Variant7cfa8e569f17fc78c1bdd355088579c9273105567e3759309b7aec65707ce113.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaRealHalfPlane/Variant7cfa8e569f17fc78c1bdd355088579c9273105567e3759309b7aec65707ce113.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54a0cd686faa5d7b39af61d4ea2eff9d807bf4fe`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZetaRealHalfPlane/Variant7cfa8e569f17fc78c1bdd355088579c9273105567e3759309b7aec65707ce113.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZetaRealHalfPlane/Variant7cfa8e569f17fc78c1bdd355088579c9273105567e3759309b7aec65707ce113.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.DirichletSeries` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaRealHalfPlane](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaRealHalfPlane/Variant7cfa8e569f17fc78c1bdd355088579c9273105567e3759309b7aec65707ce113.lean/declarations/zetarealhalfplane--b917ca0a05232401461da875.md) | 23 | `declaration-track:b917ca0a05232401461da8751fa2ae02df2a27c42e668b696b64e24476a32140` |
| 2 | `theorem` | [zetaRealHalfPlane_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaRealHalfPlane/Variant7cfa8e569f17fc78c1bdd355088579c9273105567e3759309b7aec65707ce113.lean/declarations/zetarealhalfplane-summable--9e640f48893f8841edbca168.md) | 27 | `result-track:9e640f48893f8841edbca1684dca6964b85c6a735274dd6cd475efa0994f1c08` |
| 3 | `theorem` | [zetaRealHalfPlane_ge_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaRealHalfPlane/Variant7cfa8e569f17fc78c1bdd355088579c9273105567e3759309b7aec65707ce113.lean/declarations/zetarealhalfplane-ge-one--5e457ccec45447a7767c4341.md) | 33 | `result-track:5e457ccec45447a7767c434119d7a1116b0f97389665b4784bab1946c43062f4` |
| 4 | `theorem` | [zetaRealHalfPlane_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaRealHalfPlane/Variant7cfa8e569f17fc78c1bdd355088579c9273105567e3759309b7aec65707ce113.lean/declarations/zetarealhalfplane-pos--b7d850d582f67f35faff55b6.md) | 50 | `result-track:b7d850d582f67f35faff55b687c92e90f6d525e50000f98012d3bba54318b512` |
| 5 | `theorem` | [zetaRealHalfPlane_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaRealHalfPlane/Variant7cfa8e569f17fc78c1bdd355088579c9273105567e3759309b7aec65707ce113.lean/declarations/zetarealhalfplane-ne-zero--fee5d48362ec899ad56c5c60.md) | 56 | `result-track:fee5d48362ec899ad56c5c60bfb506c74a4ae64f8ed3df0d0ee16b828daec072` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
