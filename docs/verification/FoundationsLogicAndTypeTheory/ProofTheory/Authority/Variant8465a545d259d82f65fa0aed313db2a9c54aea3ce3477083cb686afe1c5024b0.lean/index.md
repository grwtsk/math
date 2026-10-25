# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Authority.Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cf07d031b0eca53cf002d48276686cebe37aa8d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cf07d031b0eca53cf002d48276686cebe37aa8d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Homology.FiniteOS.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Homology.Coverage` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteOSHomologyStabilityCriteria](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean/declarations/finiteoshomologystabilitycriteria--529c6ecdfae8507c77b8b18c.md) | 35 | `declaration-track:529c6ecdfae8507c77b8b18c1a197e758316cd441562310cd76fc6456421472f` |
| 2 | `def` | [FiniteOSHomologyStabilityCriteria.certifiedForHomologyStability](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean/declarations/finiteoshomologystabilitycriteria-certifiedforhomologystability--13007a6825c9283a25a1f0f6.md) | 123 | `declaration-track:13007a6825c9283a25a1f0f6dee3516228d533b8f48326ce5830beddd8a8a498` |
| 3 | `theorem` | [FiniteOSHomologyStabilityCriteria.certifiedForHomologyStability_of_fields](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean/declarations/finiteoshomologystabilitycriteria-certifiedforhomologystability-of-field--1ac289399588dabdfc4fe7d1.md) | 149 | `result-track:1ac289399588dabdfc4fe7d1e85de8c5e8991ce7da015879e7c713c7412535cf` |
| 4 | `structure` | [FiniteOSAuthorityWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean/declarations/finiteosauthoritywitness--842ab6f3370c4a5db1a15390.md) | 185 | `declaration-track:842ab6f3370c4a5db1a15390fe36ff238e946bd4c42a990181d10f0b9db9db3a` |
| 5 | `def` | [FiniteOSAuthorityWitness.certifiedForFiniteOSAuthority](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean/declarations/finiteosauthoritywitness-certifiedforfiniteosauthority--84ac29eab6d0aebc65003db5.md) | 234 | `declaration-track:84ac29eab6d0aebc65003db595be325f122d080988eae49812e37f7ee8ed5e61` |
| 6 | `theorem` | [FiniteOSAuthorityWitness.certifiedForFiniteOSAuthority_of_fields](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean/declarations/finiteosauthoritywitness-certifiedforfiniteosauthority-of-fields--b2a0a384e56b3c88ff88cd52.md) | 247 | `result-track:b2a0a384e56b3c88ff88cd527dbd365a16a622997dffe80c6f5f5a6009fa7b77` |
| 7 | `theorem` | [finite_os_objects_authoritative_witness](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean/declarations/finite-os-objects-authoritative-witness--bba2697a837156bd877905cd.md) | 267 | `result-track:bba2697a837156bd877905cdeb841fdedbe921ca3e3bcc21b2001db5c82985bb` |
| 8 | `theorem` | [finite_os_objects_authoritative_witness_of_props](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean/declarations/finite-os-objects-authoritative-witness-of-props--9c14b28cf5ed69be8ba0b533.md) | 277 | `result-track:9c14b28cf5ed69be8ba0b533ad13d1097612e8db042dc9dec5a4dfe477d60f14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
