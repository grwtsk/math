# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SInt.Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0e1ce6c8c8e71c6904dfa7f44921e9674dcb7d6",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0e1ce6c8c8e71c6904dfa7f44921e9674dcb7d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.Pow` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Dvd` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Grind.Ring.ToInt` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Int8.natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int8-natcast--1dcfa0f4f30f34fad0236c19.md) | 32 | `declaration-track:1dcfa0f4f30f34fad0236c197a8a1471dfbe52de5c316de56876423e7e3d3f9a` |
| 2 | `def` | [Int8.intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int8-intcast--a00c954d5fe83dae7da1eda8.md) | 36 | `declaration-track:a00c954d5fe83dae7da1eda83c4eb27bcce29da58cd77ddb2ad2cbe80af71d96` |
| 3 | `theorem` | [Int8.intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int8-intcast-neg--c224f7800d50bf45ee118547.md) | 40 | `result-track:c224f7800d50bf45ee118547db0482c63c2a4b53f6cc99f51f3372f8a0767d76` |
| 4 | `theorem` | [Int8.intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int8-intcast-ofnat--2eb49c26d67b36b268de164d.md) | 44 | `result-track:2eb49c26d67b36b268de164db4898ea0d048430bfbd3198a12e8d8180a4aff65` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--755c1ec55c7c005746c379fe.md) | 47 | `declaration-track:755c1ec55c7c005746c379fe0941a87329406652cf1048bbf5865a7435f4a47e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--36555a6bec4a4f371ad1dd7a.md) | 72 | `declaration-track:36555a6bec4a4f371ad1dd7aa9f303f6882b975ea1691e6409a8d2732d3dfd73` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--0132543195ac269633ea0046.md) | 80 | `declaration-track:0132543195ac269633ea0046093cde98ac8f369730aef1a5150b9c87a37cabc0` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--9ce32b91794c92e388952ad6.md) | 81 | `declaration-track:9ce32b91794c92e388952ad6ccc08c675b2affb4c8307370e0efb038f9f09ac4` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--9a17fa8e8d4a69a1bd68f984.md) | 82 | `declaration-track:9a17fa8e8d4a69a1bd68f9841e4ac16395205ff5b15965259b1c26aba6a8feac` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--d9a400eeab3ea64f4c22621a.md) | 84 | `declaration-track:d9a400eeab3ea64f4c22621ab5955c0f052f0cb9c60a661b4efeeed965a6c484` |
| 11 | `def` | [Int16.natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int16-natcast--a3868a0a42e487387e1a9855.md) | 87 | `declaration-track:a3868a0a42e487387e1a9855aeaa8e0f7d2ebf55bac67318e34d4f2dc8babcc0` |
| 12 | `def` | [Int16.intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int16-intcast--cfdea8e3821fb36be94d3d42.md) | 91 | `declaration-track:cfdea8e3821fb36be94d3d42e28c7654174b6064b91f9a8afc2053d04b0f914e` |
| 13 | `theorem` | [Int16.intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int16-intcast-neg--7a4884126b1136dd9d52ffe4.md) | 95 | `result-track:7a4884126b1136dd9d52ffe49ac70ca52d46db15965ec9119e647a02842bfbdf` |
| 14 | `theorem` | [Int16.intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int16-intcast-ofnat--5000f26368c599fd3877d4e4.md) | 99 | `result-track:5000f26368c599fd3877d4e42971dc18d6b39786ee65a8f3c93ac04e0eced1e9` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--ae8504f0680ea9d66442dbe8.md) | 102 | `declaration-track:ae8504f0680ea9d66442dbe82dd832eb7d7e92a45e6275fc9c931f576e819c62` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--eff2fe88a3f2f451f626815e.md) | 127 | `declaration-track:eff2fe88a3f2f451f626815e56d599db09a7ef87dcf6073957d35e8ad79e1851` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--f64a2ffa81ae5120d2f597d4.md) | 135 | `declaration-track:f64a2ffa81ae5120d2f597d4b1286f31a7e465f6c8a3cdd74e1141ed518793e6` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--0870fd7b506bbb4ef4f3637e.md) | 136 | `declaration-track:0870fd7b506bbb4ef4f3637edbc794b3c81439fa451463294b581f0d15557415` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--49902cc6d0b253ab788e7f4d.md) | 137 | `declaration-track:49902cc6d0b253ab788e7f4d46660520c7f7504ce2abd60622fb38ff7f67ab68` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--17e341225f9a413307db407b.md) | 139 | `declaration-track:17e341225f9a413307db407b9886c4cad0e2c2a05a6f4ed3758d92304147dbb7` |
| 21 | `def` | [Int32.natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int32-natcast--18c642b75b7e1c02b67ba90b.md) | 142 | `declaration-track:18c642b75b7e1c02b67ba90b1d6d0743796f4e90ac2b766affa874c496213942` |
| 22 | `def` | [Int32.intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int32-intcast--6ee91145d9605fff450b5f5b.md) | 146 | `declaration-track:6ee91145d9605fff450b5f5be735260f31cb03ba3498d228f9d2ce9a97576823` |
| 23 | `theorem` | [Int32.intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int32-intcast-neg--a05ab6e8f1135694e81320e2.md) | 150 | `result-track:a05ab6e8f1135694e81320e27d27e4e0903721260fc8e4ae5f0f434347aefcf6` |
| 24 | `theorem` | [Int32.intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int32-intcast-ofnat--6c2c6d63bb19bffca5469010.md) | 154 | `result-track:6c2c6d63bb19bffca5469010db91b59bd6519328cb3c9628d1a735206c503693` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--aeb90198594822d172df04c6.md) | 157 | `declaration-track:aeb90198594822d172df04c63ed78976bfda6389854d2c8096c7a7e88e668689` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--29de6d470aab53a35f9346e6.md) | 182 | `declaration-track:29de6d470aab53a35f9346e6506d81fe927956941dd44ff78f04392329d7402e` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--fd64f3b037462edfbf224b71.md) | 190 | `declaration-track:fd64f3b037462edfbf224b71a2c2d5b497a2955e17134ab3f770788f6a0c64c5` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--4543a7107070fc116454530d.md) | 191 | `declaration-track:4543a7107070fc116454530dad58fba25d53292396e7fb546cd68a8c55ea592d` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--688b019bc80761cf198145b8.md) | 192 | `declaration-track:688b019bc80761cf198145b895d4e179e867f2b1db402362c545a3c288c09c9c` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--5c21a9d0b3ae7c2ce27a8deb.md) | 194 | `declaration-track:5c21a9d0b3ae7c2ce27a8deb45b6e9191cd58e3d923c58b0e369ad1822dee72b` |
| 31 | `def` | [Int64.natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int64-natcast--c3bcf6639730989cb87eb679.md) | 197 | `declaration-track:c3bcf6639730989cb87eb679b391d91f85dc2028506e6b1869d9c178d0c84999` |
| 32 | `def` | [Int64.intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int64-intcast--79f095497515ef654d3930b0.md) | 201 | `declaration-track:79f095497515ef654d3930b0e3b654c8d47982c3318e478a35a24db12f99afb1` |
| 33 | `theorem` | [Int64.intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int64-intcast-neg--0aa1a7bd5b01033ccd683ed0.md) | 205 | `result-track:0aa1a7bd5b01033ccd683ed0ea1c0d6f10b4b0c5ba836507d6805c17e06e02c5` |
| 34 | `theorem` | [Int64.intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/int64-intcast-ofnat--70d6b68fe251bd8070da6d9a.md) | 209 | `result-track:70d6b68fe251bd8070da6d9a78b839ff4ad7d8d6c53f28617749b0f2d4aaebef` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--c855254559f2780db22f8645.md) | 212 | `declaration-track:c855254559f2780db22f86450a5d07f26185fd605baee3780c4c37e5911dcf79` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--322ab07c16be05b4020583a6.md) | 237 | `declaration-track:322ab07c16be05b4020583a6c97e293df9f1d600f74017f496d8bf3ba4d611ce` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--33c1ab339aee71aae08db7d0.md) | 245 | `declaration-track:33c1ab339aee71aae08db7d089bc353e2ee7c01c1df45417b11e3846413f1382` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--434bd253306d54d547b2a135.md) | 246 | `declaration-track:434bd253306d54d547b2a1351d604c357f6b35ebb6daac8b811bb39e6827438d` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--a2b2df02eef7b95b231307d8.md) | 247 | `declaration-track:a2b2df02eef7b95b231307d8fd3b4e416b4b5e74ba65300ea9514c3f1f0d2679` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--b95166174e8448bfdee9aff6.md) | 249 | `declaration-track:b95166174e8448bfdee9aff682ed1e6f9431794dabf5bb050f93df2e2c1b5d44` |
| 41 | `def` | [ISize.natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/isize-natcast--942caf1af86ccc0dde94611d.md) | 252 | `declaration-track:942caf1af86ccc0dde94611d5d19fadcfca31256692fe3ce9d4ab8a5261e94e3` |
| 42 | `def` | [ISize.intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/isize-intcast--35ae424180755de1054b7bd7.md) | 256 | `declaration-track:35ae424180755de1054b7bd706e8565160740cfe2349a45d16b6a0fccc4d3440` |
| 43 | `theorem` | [ISize.intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/isize-intcast-neg--81ccabd8437a3255e70fed0c.md) | 260 | `result-track:81ccabd8437a3255e70fed0c682d03e4f7c40b5aa28f82bc2246852fb17d04b2` |
| 44 | `theorem` | [ISize.intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/isize-intcast-ofnat--4cb6a80d6d5b458817cbc95c.md) | 264 | `result-track:4cb6a80d6d5b458817cbc95c142816fc5061392486ed1f4340b1ceab7c87192d` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--7c49dcdd958f5d41025d5fb7.md) | 267 | `declaration-track:7c49dcdd958f5d41025d5fb7937f6c7cdf8b983a00fcc985cc803aa2e1fb9138` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--6139231d3178e302e3e391cb.md) | 294 | `declaration-track:6139231d3178e302e3e391cbc07e61d1d79c1f7bcd0c0963705510283f01aac2` |
| 47 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--37dbf379d9ccdd22c16da687.md) | 302 | `declaration-track:37dbf379d9ccdd22c16da6879cf8ee28fa9d788b0a01fa78fd5831cc8918ebb1` |
| 48 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--018386f81c68c5adfae8c155.md) | 303 | `declaration-track:018386f81c68c5adfae8c155cae2e52669957a127dc44f27f6671923a8c68767` |
| 49 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/example--42d4149806e4576080ae3672.md) | 304 | `declaration-track:42d4149806e4576080ae3672d20f66eee10925e996be14a119c9e55db730b22c` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant9a587b47728bc5f9e2ac70c67886fa683b1441584a78bae4b076888296e8f7a5.lean/declarations/instance--eebd73b5ec6fb67ddb1ef67b.md) | 306 | `declaration-track:eebd73b5ec6fb67ddb1ef67b2146f63cf32b09266b76a59bbbeadb4fe3298b5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
