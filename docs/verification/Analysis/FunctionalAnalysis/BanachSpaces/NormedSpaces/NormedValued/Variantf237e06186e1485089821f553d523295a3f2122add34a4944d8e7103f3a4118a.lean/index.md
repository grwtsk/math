# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormedValued.Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cd565e98474b441ae87c9d2562ee0b20920c44c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cd565e98474b441ae87c9d2562ee0b20920c44c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Ultra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.RankOne` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.ValuationTopology` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [valuation](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/valuation--2fbd8057e233213fae299c2a.md) | 40 | `declaration-track:2fbd8057e233213fae299c2ab07c37ea378d9b593af3e1915caf81f6250b58bc` |
| 2 | `theorem` | [valuation_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/valuation-apply--27383e8e8f824179a4d17c82.md) | 48 | `result-track:27383e8e8f824179a4d17c82ae5fc7a6539a47ea6de99c69a61e261eebd51ded` |
| 3 | `def` | [toValued](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/tovalued--16d0268b5969b826a269b09e.md) | 51 | `declaration-track:16d0268b5969b826a269b09e2deadeb11bc972d73143917f04cc34cddb889574` |
| 4 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/instance--e9a0b9e880d37101457473e1.md) | 62 | `declaration-track:e9a0b9e880d37101457473e188efd6759e8a044c34c94e47a2eebebc155ada9a` |
| 5 | `def` | [norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/norm--52d23b6d3ae906bbf606615d.md) | 80 | `declaration-track:52d23b6d3ae906bbf606615d25119f8c8b5949242b59db6827350537f3211537` |
| 6 | `theorem` | [norm_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/norm-def--d1670e9a170413b1102c7285.md) | 82 | `result-track:d1670e9a170413b1102c7285f45c6e90c19a5bf7f506bdbba2b589a5ac77aff6` |
| 7 | `theorem` | [norm_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/norm-nonneg--57ed1387537183d2de34259c.md) | 84 | `result-track:57ed1387537183d2de34259c729cf778c835d582d24567f5e58fa7f1528c859a` |
| 8 | `theorem` | [norm_add_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/norm-add-le--6e8ae4b05f34fd661c59d5d9.md) | 86 | `result-track:6e8ae4b05f34fd661c59d5d909a155add4970122faaec48de8935e6619f0a1b8` |
| 9 | `theorem` | [norm_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/norm-eq-zero--428940e6bb8566ab23bb0425.md) | 90 | `result-track:428940e6bb8566ab23bb042551fe8b721cab0fc580616cc6a89716f82a9a2dc1` |
| 10 | `theorem` | [norm_pos_iff_valuation_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/norm-pos-iff-valuation-pos--43415fbce4b533c633705b85.md) | 93 | `result-track:43415fbce4b533c633705b85a3cf87f7f8ee149c4f709a29c32b2e7172ef46b1` |
| 11 | `def` | [toNormedField](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/tonormedfield--2e5724167a0d03940f99d535.md) | 101 | `declaration-track:2e5724167a0d03940f99d53597e0b0a659963d9bbd98dc856f8546590492a074` |
| 12 | `lemma` | [isNonarchimedean_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/isnonarchimedean-norm--4b2e4a3c86b02545035754ba.md) | 158 | `result-track:4b2e4a3c86b02545035754bad0ebbc7d38ad0e091f720e75097441d1dd25316f` |
| 13 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/instance--f4cdded6cc565e3e62c04f43.md) | 160 | `declaration-track:f4cdded6cc565e3e62c04f43eeb29f3d84be48b78dac3b25c35021afd880cd7b` |
| 14 | `lemma` | [coe_valuation_eq_rankOne_hom_comp_valuation](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/coe-valuation-eq-rankone-hom-comp-valuation--0e4ee397a5b2dbdaee082e2e.md) | 166 | `result-track:0e4ee397a5b2dbdaee082e2e95c7d8692a60068c5270df246b79d90d917fa149` |
| 15 | `theorem` | [norm_le_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/norm-le-iff--7c320fd29b0e313f93b5c083.md) | 177 | `result-track:7c320fd29b0e313f93b5c08399ff256dd2738bf75dd2f98ac790e5013a855952` |
| 16 | `theorem` | [norm_lt_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/norm-lt-iff--9e380ba28248ee1ca9664408.md) | 181 | `result-track:9e380ba28248ee1ca9664408a90e71aa789e9fa5818017eee3b4f6ebc498a2fc` |
| 17 | `theorem` | [norm_le_one_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/norm-le-one-iff--6b93288ba09ad2770d8cd86f.md) | 185 | `result-track:6b93288ba09ad2770d8cd86f7dbaa9eb8a7880c688c341cc8bc6e26eecc83176` |
| 18 | `theorem` | [norm_lt_one_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/norm-lt-one-iff--7ce60045740a4924d08f73ad.md) | 189 | `result-track:7ce60045740a4924d08f73add1211d42da7d39f62164d5f0218a8c6e0c7c7a9b` |
| 19 | `theorem` | [one_le_norm_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/one-le-norm-iff--74395912b0220ffd52ae4230.md) | 193 | `result-track:74395912b0220ffd52ae42302eb6268f4c1b40cc3e39ae543032089a63ae3822` |
| 20 | `theorem` | [one_lt_norm_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/one-lt-norm-iff--46254f125f7466794721455f.md) | 197 | `result-track:46254f125f7466794721455fbec0081317aa3cf577e9ee260e1d7f5ade4032b0` |
| 21 | `def` | [toNontriviallyNormedField](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a.lean/declarations/tonontriviallynormedfield--2b7abcca3e289305fe1cc74e.md) | 205 | `declaration-track:2b7abcca3e289305fe1cc74ecf283101f8a63151b7f4aa257f24c86db0139bfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
