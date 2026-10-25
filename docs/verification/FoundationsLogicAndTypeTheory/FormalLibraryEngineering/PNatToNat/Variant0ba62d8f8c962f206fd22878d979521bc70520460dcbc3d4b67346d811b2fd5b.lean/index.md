# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PNatToNat.Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e7486d3f6b17357d87467d9c7f44c96b19898dc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e7486d3f6b17357d87467d9c7f44c96b19898dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PNat.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b.lean/declarations/elab--3abd4025404ce31b86d30baa.md) | 27 | `declaration-track:3abd4025404ce31b86d30baa0a0ed8080f92989ec835f9d8ee9430a7cae58e05` |
| 2 | `lemma` | [coe_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b.lean/declarations/coe-inj--edef7ab3a56d461c566fff4f.md) | 45 | `result-track:edef7ab3a56d461c566fff4fac104c1ebac5627a763fefc24bb7341ce4e5282d` |
| 3 | `lemma` | [coe_le_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b.lean/declarations/coe-le-coe--15ca909495fc3c49d093485b.md) | 48 | `result-track:15ca909495fc3c49d093485b629f252d7695097f9a889fdee1a3eb7f30f4ffd6` |
| 4 | `lemma` | [coe_lt_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b.lean/declarations/coe-lt-coe--5518aedac1e91eceb0c296f2.md) | 51 | `result-track:5518aedac1e91eceb0c296f2a2a641dfc4b880e89f77f3b19dac180b48324c1a` |
| 5 | `lemma` | [sub_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b.lean/declarations/sub-coe--f34d7d22b5b5a0d8ef35aa92.md) | 56 | `result-track:f34d7d22b5b5a0d8ef35aa92ab4c08c3c9e3ccfbcf08e6185587ae12e97ae589` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b.lean/declarations/macro--558a6d66a09aa05a17f04214.md) | 64 | `declaration-track:558a6d66a09aa05a17f042147bcb48f917ebe91ea3fdf7d75364cb9c7087cc56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
