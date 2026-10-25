# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractLets.Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf13d3c72d376d3e9da2f76307a5a9098b06dc63",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf13d3c72d376d3e9da2f76307a5a9098b06dc63`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.MVarId.extractLetsAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean/declarations/lean-mvarid-extractletsat--aca74b8796f02fab1ce74afe.md) | 28 | `declaration-track:aca74b8796f02fab1ce74afed2dc5f9e5690f6684ad3d8f266793eb03c796e12` |
| 2 | `def` | [Lean.Expr.letDepth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean/declarations/lean-expr-letdepth--e44a3b9f6a5f27e59d8a4a68.md) | 57 | `declaration-track:e44a3b9f6a5f27e59d8a4a681aa921d8d70e5318471823a12deda325400ac730` |
| 3 | `def` | [Lean.MVarId.extractLets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean/declarations/lean-mvarid-extractlets--6f1de6c97e80884cff9dab3e.md) | 63 | `declaration-track:6f1de6c97e80884cff9dab3ebddea6204539688e1bcede15eec07e54368f869e` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean/declarations/syntax--d353672acc782087dc3a917f.md) | 86 | `declaration-track:d353672acc782087dc3a917f21680a761cfc936b868f37fd36d556cdd33e6c54` |
| 5 | `def` | [evalExtractLet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean/declarations/evalextractlet--40544874b928ee619542cb6d.md) | 88 | `declaration-track:40544874b928ee619542cb6dbb7c03c31f7fd68fc5098456d920a89b15d280fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
