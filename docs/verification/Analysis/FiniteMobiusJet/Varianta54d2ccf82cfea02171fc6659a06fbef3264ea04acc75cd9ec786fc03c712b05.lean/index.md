# Verification target: GRWTSK.Analysis.FiniteMobiusJet.Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "480732b0e14d670c65fdb9e86ee9b12d886ff742",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `480732b0e14d670c65fdb9e86ee9b12d886ff742`.

Source path: `GRWTSK/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.UnitJetCorrection` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.ZetaJetCancellation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletAtom](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/dirichletatom--bd2260d3a54e2c4c36184fef.md) | 27 | `declaration-track:bd2260d3a54e2c4c36184fef035d8ea781adaca7fc2d7efd7787b9150bbe6c58` |
| 2 | `def` | [finiteMobius](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/finitemobius--ca40042fd4155e092cd86c6f.md) | 30 | `declaration-track:ca40042fd4155e092cd86c6fc587355383fd137aff4762a3e493757939155027` |
| 3 | `def` | [correction](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/correction--dc81ed46a0a44a773349be10.md) | 33 | `declaration-track:dc81ed46a0a44a773349be10f7800b720ca2c1569b4da25040e91d343273a06c` |
| 4 | `def` | [balancedFactor](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/balancedfactor--5ddaf811648db3a2542909d6.md) | 36 | `declaration-track:5ddaf811648db3a2542909d6e45e94280cffd0b30e1354814d912198e6ba67f9` |
| 5 | `theorem` | [atom_at_one](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/atom-at-one--77678017b6494321dbe9da99.md) | 39 | `result-track:77678017b6494321dbe9da992b53f703ce4bc5633841536b24d29f480d108731` |
| 6 | `theorem` | [atom_derivative_at_one](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/atom-derivative-at-one--825c34189d091ee84bdc0577.md) | 47 | `result-track:825c34189d091ee84bdc05773ff14e3d4c12dd572524ed03ce34a8833e413fe8` |
| 7 | `theorem` | [finite_mobius_value](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/finite-mobius-value--da39c6bcfcb6fbfba80733eb.md) | 56 | `result-track:da39c6bcfcb6fbfba80733ebd69e6686c3e83de4ed1ede8977a1d3f7811f2e08` |
| 8 | `theorem` | [finite_mobius_derivative](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/finite-mobius-derivative--f7481f072a6adbd190202dc2.md) | 65 | `result-track:f7481f072a6adbd190202dc26d9161fa171cf8b4c4590191a0b301e9dee4e23f` |
| 9 | `theorem` | [correction_value](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/correction-value--9723acf457a831e656fe494d.md) | 81 | `result-track:9723acf457a831e656fe494d24f76c6595ab491d0026572839cbf5baaa7eef41` |
| 10 | `theorem` | [correction_derivative](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/correction-derivative--2a32b4dda26431fe1451cc9e.md) | 90 | `result-track:2a32b4dda26431fe1451cc9e1b9674ec6600ef4c5ba331c1e5c3aa5a77de034b` |
| 11 | `theorem` | [balanced_factor_value](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/balanced-factor-value--d2c603b6aa481f90a777019b.md) | 101 | `result-track:d2c603b6aa481f90a777019b49eb144196e0b4bd80f79ffeee6e21bee78a3006` |
| 12 | `theorem` | [balanced_factor_jet](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/balanced-factor-jet--75111296c7790eaf06987dda.md) | 105 | `result-track:75111296c7790eaf06987dda5a7263f1d778a176ac98a3b55259395b8ce2ac66` |
| 13 | `theorem` | [actual_balanced_zeta_limit](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/actual-balanced-zeta-limit--ff828f6c972a73fb507a86db.md) | 115 | `result-track:ff828f6c972a73fb507a86dbd947a371ce1e5bff9d3963eba7123d1e06a35400` |
| 14 | `theorem` | [actual_unit_high_child_limit](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/actual-unit-high-child-limit--30f9554bc6d97645f04db3d7.md) | 121 | `result-track:30f9554bc6d97645f04db3d7c5edd27e6613a5c4b9408758386b0dd4d433b55b` |
| 15 | `theorem` | [actual_unit_low_child_limit](../../../../mathematics/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/declarations/actual-unit-low-child-limit--690eb7a4193fbb113acd154b.md) | 128 | `result-track:690eb7a4193fbb113acd154b4be83e326dcd7b179fe2812d42e42a2d4ef1dad9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
