# Verification target: GRWTSK.Topology.GeneralTopology.FinTopCat.Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c26cb1d5d110baba1485c9315e7fbf1e98305777",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c26cb1d5d110baba1485c9315e7fbf1e98305777`.

Source path: `GRWTSK/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FintypeCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinTopCat](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/fintopcat--78f2390d1f4c06279543da91.md) | 31 | `declaration-track:78f2390d1f4c06279543da91099dcfb42e3056230271d7a5cd1cd0cf8e59c720` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/instance--f0d3e1a050fc2e7ef42be46f.md) | 38 | `declaration-track:f0d3e1a050fc2e7ef42be46f0d5937bab8defc31eb73b2437c10b4a2e3e6f943` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/instance--279866e0853120c83c839139.md) | 41 | `declaration-track:279866e0853120c83c839139baa6728ad2cc2c3e60d9758fa1a407a46a9683c0` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/instance--d5f00f3f5021d5577170e2fe.md) | 46 | `declaration-track:d5f00f3f5021d5577170e2fe3591af7c4b67dbbdd779794b3b7b91e1e281755e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/instance--5955c9fa386e29b2983cd31b.md) | 49 | `declaration-track:5955c9fa386e29b2983cd31bfac37674085d2364222d68695e1039f54ab0449a` |
| 6 | `def` | [of](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/of--90009d7ea10af8bb8568b8a6.md) | 53 | `declaration-track:90009d7ea10af8bb8568b8a613a87941e570b48ea4f45061ed83f4b81adc9537` |
| 7 | `theorem` | [coe_of](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/coe-of--4b3e6233c7834fe6f5544cca.md) | 58 | `result-track:4b3e6233c7834fe6f5544ccac8343f7ff1f547d0065726ffca9060084f4de6fd` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/instance--bcb66914676b77f11cf8002a.md) | 63 | `declaration-track:bcb66914676b77f11cf8002a503e20972d69b4e2c73a362e3be34877515fbcae` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/instance--2e5ca2d92fc2615c5aa249c8.md) | 66 | `declaration-track:2e5ca2d92fc2615c5aa249c810c74deecfa8a055b0579056619a06e91d7c4862` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/instance--0740d296e3ee20e1053ff325.md) | 70 | `declaration-track:0740d296e3ee20e1053ff3250703ac09ff6b38fe318555ebb2147ac4445f4ed4` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/instance--8feebf0641e39d702732b61c.md) | 73 | `declaration-track:8feebf0641e39d702732b61cea73e7ac321ba97a7e92fa59e9061d8f0b0eeef9` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/instance--4d71814cf88099f858862aca.md) | 82 | `declaration-track:4d71814cf88099f858862aca96564e4af67b17d71dae04b6efb4ff1a301d50ab` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/instance--0218e742d005efe3f9027389.md) | 83 | `declaration-track:0218e742d005efe3f902738921e4061e43f67b2219a0fed06bfb3c7730f5787b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantbdfe774e068e75a2126a24fd03d134cc4eb6211cfe11b80e26be541f476413db.lean/declarations/instance--6bb7c7c2ecc777e7921a2052.md) | 87 | `declaration-track:6bb7c7c2ecc777e7921a20528920ac27f9e22f9d8e0ab03faacf1a16feb27174` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
