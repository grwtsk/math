# Verification target: GRWTSK.GroupTheory.Words.HeisenbergObservationLoss

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fb00cf34bcb28fde78ac0384e078f92d7668d29",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GroupTheory/Words/HeisenbergObservationLoss.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergObservationLoss.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergObservationLoss.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fb00cf34bcb28fde78ac0384e078f92d7668d29`.

Source path: `GRWTSK/GroupTheory/Words/HeisenbergObservationLoss.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GroupTheory/Words/HeisenbergObservationLoss.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive`](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Logic.InformationLoss.FactorizationFiber`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiber.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [abelianized](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergObservationLoss.lean/declarations/abelianized--04ca55c0fe8eb9cd2b8473bd.md) | 39 | `declaration-track:04ca55c0fe8eb9cd2b8473bd67d00353fbe39bcb0556ef726d02c98e0e37fc78` |
| 2 | `theorem` | [abelianized_commutator_eq_identity](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergObservationLoss.lean/declarations/abelianized-commutator-eq-identity--f8592e900ccdb98d34a6aeeb.md) | 45 | `result-track:f8592e900ccdb98d34a6aeeb65b5506d714568d8b51aec4ac1b4d43320610a25` |
| 3 | `def` | [isIdentityFlag](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergObservationLoss.lean/declarations/isidentityflag--ab015c275eb77d88388bb1be.md) | 52 | `declaration-track:ab015c275eb77d88388bb1be463ff3efb3f66a8ea1993bfb761f555048b6826c` |
| 4 | `theorem` | [central_flag_differs](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergObservationLoss.lean/declarations/central-flag-differs--3f70e18270b65bfc6d1e8e5b.md) | 55 | `result-track:3f70e18270b65bfc6d1e8e5b05f807eafdbfdaf148b82a2ecc8aeb5c80de6f29` |
| 5 | `theorem` | [identity_flag_not_factorsThrough_abelianization](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergObservationLoss.lean/declarations/identity-flag-not-factorsthrough-abelianization--95bf7b24a806d63bc049d0a3.md) | 62 | `result-track:95bf7b24a806d63bc049d0a3ba65f2e5438d4eaedcc08a3963b32e67ab5f8d2f` |
| 6 | `theorem` | [commutative_character_kills_central_memory](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergObservationLoss.lean/declarations/commutative-character-kills-central-memory--06f0754c0211629853103b00.md) | 71 | `result-track:06f0754c0211629853103b00a375fbe4dbc0e5302ad19fe09931f7f6c7edee82` |
| 7 | `theorem` | [commutative_character_cannot_separate](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergObservationLoss.lean/declarations/commutative-character-cannot-separate--c19b1594718fbb532e16cf8f.md) | 80 | `result-track:c19b1594718fbb532e16cf8f0f099244c4b9d774733d41fe5f3ac967f25dc356` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
