# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Extr.Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "913f2d63cb7899cedde9d2fb839a15c5de604f14",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `913f2d63cb7899cedde9d2fb839a15c5de604f14`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Ray` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsMaxFilter.norm_add_sameRay](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90.lean/declarations/ismaxfilter-norm-add-sameray--be14f541ac7426cf2a5bcc92.md) | 34 | `result-track:be14f541ac7426cf2a5bcc925cd9508059a84fa383728fea59001b9ac42c25d6` |
| 2 | `theorem` | [IsMaxFilter.norm_add_self](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90.lean/declarations/ismaxfilter-norm-add-self--b57cdebbb92bf5492403628c.md) | 44 | `result-track:b57cdebbb92bf5492403628c4178e3b91cd8a7a4ecc8245e6df2d7c7e96639fd` |
| 3 | `theorem` | [IsMaxOn.norm_add_sameRay](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90.lean/declarations/ismaxon-norm-add-sameray--f298a95bd439006d0046d19b.md) | 51 | `result-track:f298a95bd439006d0046d19bdf069fdc82b977d262571cb924d80265b2fa8caa` |
| 4 | `theorem` | [IsMaxOn.norm_add_self](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90.lean/declarations/ismaxon-norm-add-self--f735683e017e552be24cadfc.md) | 57 | `result-track:f735683e017e552be24cadfce1f7049b814e7de2e52d83e23f3bad5e7f02202f` |
| 5 | `theorem` | [IsLocalMaxOn.norm_add_sameRay](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90.lean/declarations/islocalmaxon-norm-add-sameray--a459fd09a3c395d2585b88b1.md) | 67 | `result-track:a459fd09a3c395d2585b88b1cfd8ae12a704fcec0ee3b06ef1e6529f25ec9917` |
| 6 | `theorem` | [IsLocalMaxOn.norm_add_self](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90.lean/declarations/islocalmaxon-norm-add-self--5430e433e93d5a3fa9d6e81d.md) | 73 | `result-track:5430e433e93d5a3fa9d6e81d8f547b344310402ac449ee51b1b9886a59fc4b86` |
| 7 | `theorem` | [IsLocalMax.norm_add_sameRay](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90.lean/declarations/islocalmax-norm-add-sameray--57af12e17fd7ef3f64bfeaa1.md) | 80 | `result-track:57af12e17fd7ef3f64bfeaa19fc0a7bd09e92aed64601aa1b6712c2dd5913133` |
| 8 | `theorem` | [IsLocalMax.norm_add_self](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant4bf9c7dc4df02ab4dfaffbbd3ee3e3a90796302d4b964c3dbdc405439efeea90.lean/declarations/islocalmax-norm-add-self--fa764d0ff3654c0da532a0c8.md) | 86 | `result-track:fa764d0ff3654c0da532a0c8a503add34f98e71f06ad6104911b60cf2c523d54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
