# Verification target: GRWTSK.Algebra.WeilPairing.Variantcf47b055a8d56df12596582736b62d26cfa148ac91db0ef302dc31ab2b5ce843

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0dbc61a913cfe42d12a7f417c45f4962da44fcf",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/WeilPairing/Variantcf47b055a8d56df12596582736b62d26cfa148ac91db0ef302dc31ab2b5ce843.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/WeilPairing/Variantcf47b055a8d56df12596582736b62d26cfa148ac91db0ef302dc31ab2b5ce843.lean/index.md) · [Full source](../../../../mathematics/Algebra/WeilPairing/Variantcf47b055a8d56df12596582736b62d26cfa148ac91db0ef302dc31ab2b5ce843.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0dbc61a913cfe42d12a7f417c45f4962da44fcf`.

Source path: `GRWTSK/Algebra/WeilPairing/Variantcf47b055a8d56df12596582736b62d26cfa148ac91db0ef302dc31ab2b5ce843.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/WeilPairing/Variantcf47b055a8d56df12596582736b62d26cfa148ac91db0ef302dc31ab2b5ce843.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Cellular.Phase` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MTorsionPoint](../../../../mathematics/Algebra/WeilPairing/Variantcf47b055a8d56df12596582736b62d26cfa148ac91db0ef302dc31ab2b5ce843.lean/declarations/mtorsionpoint--35ce758f4726f72b6a9683d5.md) | 28 | `declaration-track:35ce758f4726f72b6a9683d5e2020cd892e22bd78cec20d446e94e7d80b951d2` |
| 2 | `structure` | [WeilPairingContract](../../../../mathematics/Algebra/WeilPairing/Variantcf47b055a8d56df12596582736b62d26cfa148ac91db0ef302dc31ab2b5ce843.lean/declarations/weilpairingcontract--975ac9b560ec9c5d55b412b0.md) | 36 | `declaration-track:975ac9b560ec9c5d55b412b0d5d6537fa6146dbef2bc39eeec7d20f7e1eb7ff6` |
| 3 | `theorem` | [weil_pairing_alternating](../../../../mathematics/Algebra/WeilPairing/Variantcf47b055a8d56df12596582736b62d26cfa148ac91db0ef302dc31ab2b5ce843.lean/declarations/weil-pairing-alternating--6231c4f36bec3249ccfda694.md) | 52 | `result-track:6231c4f36bec3249ccfda69440c29e31e10f559109c1eab8725d90dd31156c4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
