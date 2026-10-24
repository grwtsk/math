# Verification target: GRWTSK.Analysis.TestFunction.Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85b1f95a69335d5bf239a8bca1303ef30e64ad33",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TestFunction/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/TestFunctions/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean/index.md) · [Full source](../../../../mathematics/Analysis/TestFunctions/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85b1f95a69335d5bf239a8bca1303ef30e64ad33`.

Source path: `GRWTSK/Analysis/TestFunction/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TestFunction/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimitiveWeilTestFunction](../../../../mathematics/Analysis/TestFunctions/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean/declarations/primitiveweiltestfunction--41a86eaea33e233702b0f104.md) | 32 | `declaration-track:41a86eaea33e233702b0f104a0f47e4251add31b75284966ca1caa0bf893b4ac` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/TestFunctions/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean/declarations/instance--0ef35bf22ec2fca44a7377e4.md) | 42 | `declaration-track:0ef35bf22ec2fca44a7377e4b22b0a362ba50043817669879d9091eef17b4718` |
| 3 | `theorem` | [coe_mk](../../../../mathematics/Analysis/TestFunctions/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean/declarations/coe-mk--5c7cae0292f64f0bed9985e8.md) | 46 | `result-track:5c7cae0292f64f0bed9985e86bf53b0cc879b2d30624282a55bdb291ea14ca01` |
| 4 | `theorem` | [continuous](../../../../mathematics/Analysis/TestFunctions/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean/declarations/continuous--07dacc21136077e0c5ec6913.md) | 53 | `result-track:07dacc21136077e0c5ec6913bd29c2b6465224d573db8c6d6db9d7d616604988` |
| 5 | `theorem` | [hasCompactSupport](../../../../mathematics/Analysis/TestFunctions/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean/declarations/hascompactsupport--66d305cfe429a408f80ad137.md) | 57 | `result-track:66d305cfe429a408f80ad137b82c5b02cbbf774b37a77b9d834518824f26b152` |
| 6 | `theorem` | [integrable](../../../../mathematics/Analysis/TestFunctions/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean/declarations/integrable--e864149b6e26925c3448597c.md) | 62 | `result-track:e864149b6e26925c3448597c1896abd7a0b6eb17f0bdc7e8bd96a4e7957d301e` |
| 7 | `theorem` | [locallyIntegrable](../../../../mathematics/Analysis/TestFunctions/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean/declarations/locallyintegrable--489a7b0d6639fdd539156af9.md) | 66 | `result-track:489a7b0d6639fdd539156af97489cd234d5fc9e022f548cc7f788224123b55bd` |
| 8 | `def` | [star](../../../../mathematics/Analysis/TestFunctions/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean/declarations/star--8551e5925dbe44ca086985a0.md) | 72 | `declaration-track:8551e5925dbe44ca086985a0b914efb8b11d552ef228476b0c914e992ddab3ab` |
| 9 | `theorem` | [star_apply](../../../../mathematics/Analysis/TestFunctions/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean/declarations/star-apply--28cf64e332aea693a498da78.md) | 88 | `result-track:28cf64e332aea693a498da788876d9b033ba12e8b06bfe69787048e862834c0f` |
| 10 | `theorem` | [star_supportRadius](../../../../mathematics/Analysis/TestFunctions/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean/declarations/star-supportradius--d6c4aad888e174a0c0c9af7a.md) | 93 | `result-track:d6c4aad888e174a0c0c9af7a37369f6d15f74cdb27734b93792bfccb070fcdb1` |
| 11 | `theorem` | [star_star_apply](../../../../mathematics/Analysis/TestFunctions/Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39.lean/declarations/star-star-apply--d28d508de40b78df274efdbb.md) | 98 | `result-track:d28d508de40b78df274efdbbe06135dbffc659193a1aa744a1e5cdf7128e89f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
