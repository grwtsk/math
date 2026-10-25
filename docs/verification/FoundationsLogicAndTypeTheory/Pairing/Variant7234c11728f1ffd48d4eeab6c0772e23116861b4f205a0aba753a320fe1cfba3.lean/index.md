# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Pairing.Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5788b5936155a0261302463a11ca9973d63d2ca7",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5788b5936155a0261302463a11ca9973d63d2ca7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Sqrt` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.MinMax` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/pair--cd6a00a253707361c7cb44d3.md) | 45 | `declaration-track:cd6a00a253707361c7cb44d30fe2d622260c9fa9aeb7e7555471fc2f8f69014c` |
| 2 | `def` | [unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/unpair--377b093359ae1ba2892516a1.md) | 52 | `declaration-track:377b093359ae1ba2892516a15000f0db357fc64e5c1fa8331bc82f30175b14df` |
| 3 | `theorem` | [pair_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/pair-unpair--496142e0f85235e70e51db03.md) | 58 | `result-track:496142e0f85235e70e51db03b74f68d344dc9c588a0d757021907282caf8eedc` |
| 4 | `theorem` | [pair_unpair'](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/pair-unpair--5778ad51a93132334bb3fcd7.md) | 68 | `result-track:5778ad51a93132334bb3fcd7e2e54e0fea6e2d657c7a1891103df8fc5e4ae29e` |
| 5 | `theorem` | [unpair_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/unpair-pair--d7b64cd187d8725ddafbc52c.md) | 73 | `result-track:d7b64cd187d8725ddafbc52c4e115f63bdf82a22949cfa5f25ffaa59293708a7` |
| 6 | `def` | [pairEquiv](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/pairequiv--ee2984254694c322c1fc2b9b.md) | 87 | `declaration-track:ee2984254694c322c1fc2b9b6a1937309e8e996c0278ab6ff5e4ca0149d1404a` |
| 7 | `theorem` | [surjective_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/surjective-unpair--7366b0238a39ed6578fed953.md) | 93 | `result-track:7366b0238a39ed6578fed953a193366285481f1f2ab68273de64ce7d98f575db` |
| 8 | `theorem` | [pair_eq_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/pair-eq-pair--561a9f5f4a7b13d503cbb640.md) | 98 | `result-track:561a9f5f4a7b13d503cbb640e4ac15da0310102f532d12d41ac33e335c239b86` |
| 9 | `theorem` | [unpair_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/unpair-lt--0b3471edb02510de05707d30.md) | 102 | `result-track:0b3471edb02510de05707d30720b8490b465bbbcc0b2c712e74670540a33d8b9` |
| 10 | `theorem` | [unpair_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/unpair-zero--fcee29e0ccdce09b15a830ae.md) | 113 | `result-track:fcee29e0ccdce09b15a830aed984c2590c47cc0691b2e563f144964863350ef7` |
| 11 | `theorem` | [unpair_left_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/unpair-left-le--59a8d487b5700745b925a6fd.md) | 118 | `result-track:59a8d487b5700745b925a6fd72f539081b46b2ddc3bb282e9eb2214500a80b90` |
| 12 | `theorem` | [left_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/left-le-pair--59853244409f2bd620bc45e5.md) | 123 | `result-track:59853244409f2bd620bc45e5c4b3f1762da729dfa93d87c303349da81c851b3e` |
| 13 | `theorem` | [right_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/right-le-pair--932bf5614600378490acad20.md) | 126 | `result-track:932bf5614600378490acad20be30dedb22b4af6281e8c3f2c0a45ea1c56e200d` |
| 14 | `theorem` | [unpair_right_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/unpair-right-le--c3b4ba53165cfb31653d5492.md) | 131 | `result-track:c3b4ba53165cfb31653d5492945029c9df6f98688de5d82d90493a94101e310c` |
| 15 | `theorem` | [pair_lt_pair_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/pair-lt-pair-left--60a9104d64f538e9cca972c6.md) | 135 | `result-track:60a9104d64f538e9cca972c616f0c4bed0d785e3c5eda38b1b30b0b467c23587` |
| 16 | `theorem` | [pair_lt_pair_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/pair-lt-pair-right--6b440674acbbf90e51ae9adf.md) | 149 | `result-track:6b440674acbbf90e51ae9adf2503cba2d68c1668bfdee83358a4fcbfcc869fce` |
| 17 | `theorem` | [pair_lt_max_add_one_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/pair-lt-max-add-one-sq--79d1faed66c121252d217d3a.md) | 160 | `result-track:79d1faed66c121252d217d3ae17f7dfc8acac1b7f312c25dd39acb81350a5fe4` |
| 18 | `theorem` | [max_sq_add_min_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/max-sq-add-min-le-pair--4e1b1c6d7cef5700d2b4b5f6.md) | 169 | `result-track:4e1b1c6d7cef5700d2b4b5f693ec32e87650e9fde67fbbef083a70dcff20fad6` |
| 19 | `theorem` | [add_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/add-le-pair--b50721fc1f757e34d5a74a9d.md) | 177 | `result-track:b50721fc1f757e34d5a74a9db0e09ed3832ae7283fd4b353233144e7f997f1b8` |
| 20 | `theorem` | [unpair_add_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/unpair-add-le--e222d685b7fbc6b14189010e.md) | 183 | `result-track:e222d685b7fbc6b14189010eded65d146f70839dd8041cbdd28db1500cb74e5d` |
| 21 | `theorem` | [iSup_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/isup-unpair--799b5c54283166eaa87e4018.md) | 194 | `result-track:799b5c54283166eaa87e40183fdca2ea7f135f5b55bcba99b3ec4fb94d016828` |
| 22 | `theorem` | [iInf_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/iinf-unpair--89d9e4967fbd5aced464c0b0.md) | 200 | `result-track:89d9e4967fbd5aced464c0b09f9d8ff5ee89391fbfb3a23495024b0c3fafab7e` |
| 23 | `theorem` | [iUnion_unpair_prod](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/iunion-unpair-prod--b27ee05a1ea9e6a7a686e592.md) | 211 | `result-track:b27ee05a1ea9e6a7a686e592bcc0cb5ebeed199644bd67d753ee8001e9121093` |
| 24 | `theorem` | [iUnion_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/iunion-unpair--a3825ce3152f04559f434e68.md) | 218 | `result-track:a3825ce3152f04559f434e6801d0a483c11c8ba9bebaf8f2401d7f680cc79236` |
| 25 | `theorem` | [iInter_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/declarations/iinter-unpair--df627ddf3987d6c7852c43a0.md) | 224 | `result-track:df627ddf3987d6c7852c43a06f90aabcea472497a8dbea36ddbab16e3145363c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
