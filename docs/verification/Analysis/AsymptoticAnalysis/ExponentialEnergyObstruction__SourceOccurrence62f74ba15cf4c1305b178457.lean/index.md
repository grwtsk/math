# Verification target: GRWTSK.Analysis.Asymptotics.ExponentialEnergyObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9887c4023b79fc6cda09e8dd77f897a3ca2f618",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/ExponentialEnergyObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9887c4023b79fc6cda09e8dd77f897a3ca2f618`.

Source path: `GRWTSK/Analysis/Asymptotics/ExponentialEnergyObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/ExponentialEnergyObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeBand](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/primeband--b628b0e33f90a9cfb2e841b5.md) | 19 | `declaration-track:b628b0e33f90a9cfb2e841b5f6ba90e78e0024ccc351fb69d72a6964b791d255` |
| 2 | `def` | [topBand](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/topband--95ea704d75a97bf981096ded.md) | 24 | `declaration-track:95ea704d75a97bf981096dedc24f8fae05c3e4b690b1a0458d86ca48f91b1fe1` |
| 3 | `def` | [harmonicMass](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/harmonicmass--d0076a02e9e0ac1fc99474ae.md) | 28 | `declaration-track:d0076a02e9e0ac1fc99474ae6535d41bc4fe44d9119443d238617cfabf89f8fb` |
| 4 | `theorem` | [primeBand_mem_lower](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/primeband-mem-lower--3b8daec963cbffa941c7638a.md) | 30 | `result-track:3b8daec963cbffa941c7638a45426a48898c1955be81a2247bdd0c7235c6475b` |
| 5 | `theorem` | [primeBand_mem_prime](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/primeband-mem-prime--d08336c63aa145ea887b241c.md) | 34 | `result-track:d08336c63aa145ea887b241cb4a09c4af52dbebf18677479d68e6a143c8e5b82` |
| 6 | `theorem` | [primeBand_pair_beyond_horizon](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/primeband-pair-beyond-horizon--2360da9762a4631014c87ab4.md) | 40 | `result-track:2360da9762a4631014c87ab4f9916654ad99625a115c95919c028866534e1054` |
| 7 | `def` | [BandMassInput](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/bandmassinput--61a7b74b8504ff57ca270d54.md) | 58 | `declaration-track:61a7b74b8504ff57ca270d542086ecc00a8656b476c03f96ceeedff7c44b8993` |
| 8 | `def` | [TopBandCountInput](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/topbandcountinput--7fd2242e359a5a53500b4ed8.md) | 64 | `declaration-track:7fd2242e359a5a53500b4ed8ebc273bd39bb6dfbf2f63f6a2713f8cae2452925` |
| 9 | `def` | [ExponentialEnergyInput](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/exponentialenergyinput--f349f0e4df4e187738e7c63f.md) | 70 | `declaration-track:f349f0e4df4e187738e7c63f75d67c790981a6efbd96d6c622abdb4bcc7f2110` |
| 10 | `theorem` | [narrow_implies_transition](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/narrow-implies-transition--a04315be2f089e5086a8877e.md) | 75 | `result-track:a04315be2f089e5086a8877efd382d0e8cd43d42f2f802f39713983f2fed7396` |
| 11 | `theorem` | [narrow_forces_energy_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/narrow-forces-energy-bound--6a3b6b8226df50c44dcb4022.md) | 83 | `result-track:6a3b6b8226df50c44dcb40222eaa1f2dbc483bba6b599ab5fba4b07342f8b342` |
| 12 | `theorem` | [finite_nc_contradiction](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/finite-nc-contradiction--e744a78cebd39c72b67e7bec.md) | 97 | `result-track:e744a78cebd39c72b67e7becb51a938d61bf9afbf9950a75115d8a58699ff032` |
| 13 | `theorem` | [narrow_energy_lower_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/narrow-energy-lower-bound--70dd299f7393b67de2f9dc63.md) | 112 | `result-track:70dd299f7393b67de2f9dc63b7f0800ca0452867b1952fb8d2a523f886a99607` |
| 14 | `theorem` | [exponential_input_not_polynomial](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/exponential-input-not-polynomial--6b5dc97361eec625f88ead0b.md) | 123 | `result-track:6b5dc97361eec625f88ead0b3856a63d44fb5d8a7c77ae1c0de57c003de33237` |
| 15 | `theorem` | [eventual_nc_impossible](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/eventual-nc-impossible--90bf98f104d987fd95d9c900.md) | 175 | `result-track:90bf98f104d987fd95d9c9003ab6b386e8300a54a33f4a18dd355723fada7662` |
| 16 | `theorem` | [crude_inventory_reserve_nc](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/declarations/crude-inventory-reserve-nc--9dcf226e06f71dd6a9e495d2.md) | 194 | `result-track:9dcf226e06f71dd6a9e495d25b7e3233f0f1b92ed070ced91d46f584a56f1bd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
