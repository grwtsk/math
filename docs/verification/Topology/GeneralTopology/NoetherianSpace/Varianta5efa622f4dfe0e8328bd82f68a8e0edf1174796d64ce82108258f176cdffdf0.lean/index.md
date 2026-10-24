# Verification target: GRWTSK.Topology.GeneralTopology.NoetherianSpace.Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d777c5ac0f6443be92b17babd5f1f3c7adb49272",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d777c5ac0f6443be92b17babd5f1f3c7adb49272`.

Source path: `GRWTSK/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [NoetherianSpace](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace--5ac61b5f9b73ad0ffb3acc66.md) | 48 | `declaration-track:5ac61b5f9b73ad0ffb3acc66ab116cd9265041ed66003c2d308082d08f5a58b8` |
| 2 | `theorem` | [noetherianSpace_iff_opens](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-iff-opens--7be45d65e63b8c458f78d3ac.md) | 50 | `result-track:7be45d65e63b8c458f78d3acbf579dfd4d5682840fcb442b255dff6970785ccc` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/instance--43fa373a555e31b43810edd4.md) | 55 | `declaration-track:43fa373a555e31b43810edd4999eb93f6d5bb4bfe9bcd47b3ea86bf01874d8fa` |
| 4 | `theorem` | [NoetherianSpace.isCompact](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-iscompact--77e58777704e5048b1b40e2a.md) | 61 | `result-track:77e58777704e5048b1b40e2ad940949a24e56f3bd702120270ec55cc8dcaa575` |
| 5 | `theorem` | [_root_.Topology.IsInducing.noetherianSpace](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/root-topology-isinducing-noetherianspace--0aad95c13ac0f5e84061f5c1.md) | 67 | `result-track:0aad95c13ac0f5e84061f5c1dc2df817e5b3d9936f4241bd8ca016787dcdf8e1` |
| 6 | `instance` | [NoetherianSpace.set](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-set--3de76570a1976271c46614a1.md) | 75 | `declaration-track:3de76570a1976271c46614a13d609c0419034e3baf188dd13e2c53b2fa696487` |
| 7 | `theorem` | [noetherianSpace_TFAE](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-tfae--679da0437820946291d02fd1.md) | 80 | `result-track:679da0437820946291d02fd114cce454308dcd0a3955507faba8c9d318a8ec2b` |
| 8 | `theorem` | [noetherianSpace_iff_isCompact](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-iff-iscompact--10fc7f3bd7e07370d21b875b.md) | 93 | `result-track:10fc7f3bd7e07370d21b875bb8f432c3a89b671a9f94e6ddfc0a2f15c601691d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/instance--bbf862317e6600003331a378.md) | 96 | `declaration-track:bbf862317e6600003331a3789d8671f406941ec90f98560b9a64414574816331` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/instance--3ffcc55822f85840e396ebbe.md) | 99 | `declaration-track:3ffcc55822f85840e396ebbe7100abba4c2e5af1175e6bc40d711c3188fcb6f6` |
| 11 | `theorem` | [noetherianSpace_of_surjective](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-of-surjective--68a098676a30f2666e3b1962.md) | 108 | `result-track:68a098676a30f2666e3b1962811e8f6d84817ab14f17bf5c7acbfbdacc44ba42` |
| 12 | `theorem` | [noetherianSpace_iff_of_homeomorph](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-iff-of-homeomorph--8c7455afc5061d04e4d09a2b.md) | 113 | `result-track:8c7455afc5061d04e4d09a2bd16009473e1fcc06948a272a728153e11a8062d4` |
| 13 | `theorem` | [NoetherianSpace.range](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-range--64852427646cd9edbbe0e54a.md) | 117 | `result-track:64852427646cd9edbbe0e54aba317f8085acf3af010c387ae9e24cb2da947001` |
| 14 | `theorem` | [noetherianSpace_set_iff](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-set-iff--483cdccd6744e751de3c808b.md) | 122 | `result-track:483cdccd6744e751de3c808bb9c52a92c8971b81cdf29272ef75078dc754390a` |
| 15 | `theorem` | [noetherian_univ_iff](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherian-univ-iff--078443a0d5f14bdb3b8b1caa.md) | 128 | `result-track:078443a0d5f14bdb3b8b1caa9655378a0300815dcf3ae7addccacdddc5007d46` |
| 16 | `theorem` | [NoetherianSpace.iUnion](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-iunion--fe7c5a0898aa3984c44b135b.md) | 131 | `result-track:fe7c5a0898aa3984c44b135b44a5c173b7a8cd264d8b4dfd39dbd1071757d214` |
| 17 | `theorem` | [NoetherianSpace.discrete](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-discrete--ca6a3eb10731401c4b76bd56.md) | 139 | `result-track:ca6a3eb10731401c4b76bd563e868014af5930055d8692eb58b8375a2b86161d` |
| 18 | `theorem` | [NoetherianSpace.finite](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-finite--86230bb5fa99fa56ce9843c6.md) | 145 | `result-track:86230bb5fa99fa56ce9843c6a77e57355ed5ba7ea3f75e5f3eb848cd3e2c39a1` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/instance--04589e037e29c2d5f742ca69.md) | 148 | `declaration-track:04589e037e29c2d5f742ca699c153abd18a796a8009a912abd822a52ca9c9004` |
| 20 | `theorem` | [NoetherianSpace.exists_finite_set_closeds_irreducible](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-exists-finite-set-closeds-irreducible--47b5dd25f778541cba33e682.md) | 152 | `result-track:47b5dd25f778541cba33e6820c02ec6496a2cb4356b70f334bf1e628daeda426` |
| 21 | `theorem` | [NoetherianSpace.exists_finite_set_isClosed_irreducible](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-exists-finite-set-isclosed-irreducible--0f97fe1a4d596c2d744de3c5.md) | 171 | `result-track:0f97fe1a4d596c2d744de3c534cb95602fdcdfb13442bb50a46a6d3e2b89d32e` |
| 22 | `theorem` | [NoetherianSpace.exists_finset_irreducible](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-exists-finset-irreducible--18dc69d5aee954d2295d5005.md) | 182 | `result-track:18dc69d5aee954d2295d5005aeb29019d5b56de0ea5a8848c574b01192f695e4` |
| 23 | `theorem` | [NoetherianSpace.finite_irreducibleComponents](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-finite-irreduciblecomponents--6a710c1bc121921ec8d19088.md) | 188 | `result-track:6a710c1bc121921ec8d190889741cd557f89a599142e0b2eccfab3cd1da79743` |
| 24 | `theorem` | [NoetherianSpace.exists_open_ne_empty_le_irreducibleComponent](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/declarations/noetherianspace-exists-open-ne-empty-le-irreduciblecomponent--62f7c948a331d4898c2cb1d1.md) | 198 | `result-track:62f7c948a331d4898c2cb1d1d337da4f02b7992056e56e9b9c42689fb3db9e23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
