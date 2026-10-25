# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FrobeniusNumber.Variantf31753dadce5a5c75ebde58413b07a326c07610420ce4ff52dd604fa7fbd5e72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e9b22b601d86956577ecf89fb7df08320d61a90",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusNumber/Variantf31753dadce5a5c75ebde58413b07a326c07610420ce4ff52dd604fa7fbd5e72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusNumber/Variantf31753dadce5a5c75ebde58413b07a326c07610420ce4ff52dd604fa7fbd5e72.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusNumber/Variantf31753dadce5a5c75ebde58413b07a326c07610420ce4ff52dd604fa7fbd5e72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e9b22b601d86956577ecf89fb7df08320d61a90`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusNumber/Variantf31753dadce5a5c75ebde58413b07a326c07610420ce4ff52dd604fa7fbd5e72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusNumber/Variantf31753dadce5a5c75ebde58413b07a326c07610420ce4ff52dd604fa7fbd5e72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FrobeniusNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusNumber/Variantf31753dadce5a5c75ebde58413b07a326c07610420ce4ff52dd604fa7fbd5e72.lean/declarations/frobeniusnumber--5f0c8ae25838310e7c0cee63.md) | 53 | `declaration-track:5f0c8ae25838310e7c0cee637546541e5b30829d30392deb6e6d83734812b7c8` |
| 2 | `theorem` | [frobeniusNumber_pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusNumber/Variantf31753dadce5a5c75ebde58413b07a326c07610420ce4ff52dd604fa7fbd5e72.lean/declarations/frobeniusnumber-pair--7f63ef45d22b28ab7f479e91.md) | 60 | `result-track:7f63ef45d22b28ab7f479e9184573911021723659323ec6950434f2a2b95c1c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
