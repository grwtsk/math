# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatSqrt.Variant8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ece09cd2f113a5d4596ca6ccef6efa9663e7ba9c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ece09cd2f113a5d4596ca6ccef6efa9663e7ba9c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [nat_sqrt_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878.lean/declarations/nat-sqrt-helper--b19e0b94cca31f7991d38a55.md) | 23 | `result-track:b19e0b94cca31f7991d38a5524cff3f743bacda5d88a8cf48859c51dd2b5e611` |
| 2 | `theorem` | [isNat_sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878.lean/declarations/isnat-sqrt--9a7f77aa9d1f73021cb40179.md) | 29 | `result-track:9a7f77aa9d1f73021cb4017948abde919c2e3da63b499207faf9b8d0f0080dae` |
| 3 | `def` | [proveNatSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878.lean/declarations/provenatsqrt--0a0993347c40e3e0648244f0.md) | 34 | `declaration-track:0a0993347c40e3e0648244f0601c126220713a036a97d64c0a5a32d165b4bcdf` |
| 4 | `def` | [evalNatSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878.lean/declarations/evalnatsqrt--2967c56b6b62f725d1e81cfc.md) | 48 | `declaration-track:2967c56b6b62f725d1e81cfc6938bb92feb796bd776c330014e96d7eabd9fcbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
