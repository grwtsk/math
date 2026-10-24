# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe84098cbc8c16ea6b991e4e996b1e783ef23e0b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe84098cbc8c16ea6b991e4e996b1e783ef23e0b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean.json)

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
| 1 | `theorem` | [isTheta_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/declarations/istheta-ofreal--166f13c1effd8a056d583984.md) | 31 | `result-track:166f13c1effd8a056d58398402b5d98fa29609c297fe6839e95ceca60d5970de` |
| 2 | `theorem` | [isLittleO_ofReal_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/declarations/islittleo-ofreal-left--78d9b237563a9a4097f8280d.md) | 35 | `result-track:78d9b237563a9a4097f8280d5da65ce630f1f7b984e88aa45f58c3ddfb28f1df` |
| 3 | `theorem` | [isLittleO_ofReal_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/declarations/islittleo-ofreal-right--a3dc80e415cc06d7a2a26c0e.md) | 39 | `result-track:a3dc80e415cc06d7a2a26c0e03d0ee83027cf8b5bf298f0d60b311ad73267f1c` |
| 4 | `theorem` | [isBigO_ofReal_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/declarations/isbigo-ofreal-left--3546f7300c9eb3eef3e52e6b.md) | 43 | `result-track:3546f7300c9eb3eef3e52e6bbce7d9556c29b45607d5162850c31a8386be4670` |
| 5 | `theorem` | [isBigO_ofReal_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/declarations/isbigo-ofreal-right--2ea8c49553bb6e794f0fa631.md) | 47 | `result-track:2ea8c49553bb6e794f0fa631b9684224b3df4e2c77b5edb084e3e0aedc92e928` |
| 6 | `theorem` | [isTheta_ofReal_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/declarations/istheta-ofreal-left--c37f48ae59ac53b54ef8577d.md) | 51 | `result-track:c37f48ae59ac53b54ef8577d9246d87fd6a7db306998a30c53b2392da6d649f1` |
| 7 | `theorem` | [isTheta_ofReal_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/declarations/istheta-ofreal-right--7f387a3f628a7c412a078d4a.md) | 55 | `result-track:7f387a3f628a7c412a078d4a91cfeb8042f4ccc61606550d3d20f68109fccb10` |
| 8 | `lemma` | [isBigO_comp_ofReal_nhds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/declarations/isbigo-comp-ofreal-nhds--d63ff86c7416ef15722003b4.md) | 60 | `result-track:d63ff86c7416ef15722003b4540a69f37a442eeda4f159db48617079c511221f` |
| 9 | `lemma` | [isBigO_comp_ofReal_nhds_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/declarations/isbigo-comp-ofreal-nhds-ne--4d8b07a93ca8d390c10113ce.md) | 64 | `result-track:4d8b07a93ca8d390c10113ce4347f16ddb48ce7db89c791bbcdb9dd1b849c634` |
| 10 | `lemma` | [isBigO_re_sub_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/declarations/isbigo-re-sub-re--1267b3d4110d43e808315dd8.md) | 68 | `result-track:1267b3d4110d43e808315dd88a361ece7b7c2fa111bc29958f22ac6b2d4e029c` |
| 11 | `lemma` | [isBigO_im_sub_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/declarations/isbigo-im-sub-im--6aa112997acb8810c35bd3d3.md) | 71 | `result-track:6aa112997acb8810c35bd3d3538322645b8e01d553c154dc161485bff4795ff9` |
| 12 | `lemma` | [Int.cast_complex_isTheta_cast_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant7f2e4baa313dd343169ec69e2f98aea527ce7093a4576a9f4218e263cd133e6b.lean/declarations/int-cast-complex-istheta-cast-real--8beae69c9921697b24aa0feb.md) | 79 | `result-track:8beae69c9921697b24aa0febd39d6ffe74cea00e701fe459b0b4c4dfd7fa098a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
