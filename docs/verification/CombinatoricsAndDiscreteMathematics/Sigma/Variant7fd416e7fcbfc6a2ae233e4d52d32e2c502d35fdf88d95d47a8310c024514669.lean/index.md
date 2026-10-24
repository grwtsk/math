# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fdbb61eff8096bbaa63ad08c14fab77ef072b77",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fdbb61eff8096bbaa63ad08c14fab77ef072b77`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sigma/Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sigma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.OfMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Set.biUnion_finsetSigma_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669.lean/declarations/set-biunion-finsetsigma-univ--9e38085b776ea222393cfe6d.md) | 32 | `result-track:9e38085b776ea222393cfe6dcd22e702b7bb182de315178ce6202700052076e7` |
| 2 | `lemma` | [Set.biUnion_finsetSigma_univ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669.lean/declarations/set-biunion-finsetsigma-univ--18a53e83a1c087e6177c3939.md) | 35 | `result-track:18a53e83a1c087e6177c3939328eb4a5ddbfafc4facc82d0396633c8a259b600` |
| 3 | `lemma` | [Set.biInter_finsetSigma_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669.lean/declarations/set-biinter-finsetsigma-univ--026dde91a7b87d1e89db8a79.md) | 38 | `result-track:026dde91a7b87d1e89db8a793a5e76cb7a29e96f9e47e069bf07a5bd14482b30` |
| 4 | `lemma` | [Set.biInter_finsetSigma_univ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669.lean/declarations/set-biinter-finsetsigma-univ--bb089a55248506a7877d756f.md) | 42 | `result-track:bb089a55248506a7877d756f693352b25a987b0fdf0ef169561f327de6fa5e78` |
| 5 | `instance` | [Sigma.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669.lean/declarations/sigma-instfintype--2f1d11fbb5899081fffd4717.md) | 47 | `declaration-track:2f1d11fbb5899081fffd47177dc099cbae72b346554489081a323d6743afa918` |
| 6 | `instance` | [PSigma.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669.lean/declarations/psigma-instfintype--9d27ad84ae6698f8c49965f2.md) | 48 | `declaration-track:9d27ad84ae6698f8c49965f2bb83369547e82e1eb3775a344910bb05689ee416` |
| 7 | `lemma` | [Finset.univ_sigma_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669.lean/declarations/finset-univ-sigma-univ--b27310f07cf82fc8aef4582a.md) | 50 | `result-track:b27310f07cf82fc8aef4582ac897c45f1d2d86dcd10eff586ec1171e335efca2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
