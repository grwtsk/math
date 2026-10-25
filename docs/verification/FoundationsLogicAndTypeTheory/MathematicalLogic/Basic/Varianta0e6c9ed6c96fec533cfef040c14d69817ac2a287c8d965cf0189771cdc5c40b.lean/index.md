# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4164d6acca24e6ab5f5dc8b481c7672032c63250",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4164d6acca24e6ab5f5dc8b481c7672032c63250`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.End` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [image_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean/declarations/image-inv--6ff2ec07a11ae9d0fae5165c.md) | 41 | `result-track:6ff2ec07a11ae9d0fae5165c5cc489473c6f17737d8be45d836318e0d88c2653` |
| 2 | `lemma` | [preimage_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean/declarations/preimage-inv--7438cc3be4f2c8225cbd4811.md) | 43 | `result-track:7438cc3be4f2c8225cbd4811eff82d49cc3407e64df05199b746208ee04adc57` |
| 3 | `theorem` | [swap_smul_self_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean/declarations/swap-smul-self-smul--9b909bf2bec6bc6f2c5268a3.md) | 53 | `result-track:9b909bf2bec6bc6f2c5268a3dab6954bf73e0715a005d26f2cddff9f0194fcb9` |
| 4 | `theorem` | [swap_smul_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean/declarations/swap-smul-involutive--0d99e1b26088d214e8eefa53.md) | 56 | `result-track:0d99e1b26088d214e8eefa53dff1208169dfc1861fdfb798d649a4cb3a717a58` |
| 5 | `lemma` | [BijOn.perm_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean/declarations/bijon-perm-inv--7846afce06ef20a9baad9c25.md) | 67 | `result-track:7846afce06ef20a9baad9c25ccee45deb5efe174e72d92bdf24c042ccd2f1059` |
| 6 | `lemma` | [MapsTo.perm_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean/declarations/mapsto-perm-pow--653b0625d318ef437b486b9c.md) | 69 | `result-track:653b0625d318ef437b486b9cf5f130f351f3d77ae553fb2421c5b7327bffa34e` |
| 7 | `lemma` | [SurjOn.perm_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean/declarations/surjon-perm-pow--ad30577f58912d288c64c1d3.md) | 71 | `result-track:ad30577f58912d288c64c1d3a0e51c72ec38397d29fa7c6003fd67b5b60fa62c` |
| 8 | `lemma` | [BijOn.perm_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean/declarations/bijon-perm-pow--c66ceada0c1c29e947addc96.md) | 73 | `result-track:c66ceada0c1c29e947addc9698446921696c2c569903dc9975579bf30de11d59` |
| 9 | `lemma` | [BijOn.perm_zpow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta0e6c9ed6c96fec533cfef040c14d69817ac2a287c8d965cf0189771cdc5c40b.lean/declarations/bijon-perm-zpow--c1d19e6d531f1affc44c4c7d.md) | 76 | `result-track:c1d19e6d531f1affc44c4c7dc387a7227c92e58497cb5bb449fb283eb7cde61a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
