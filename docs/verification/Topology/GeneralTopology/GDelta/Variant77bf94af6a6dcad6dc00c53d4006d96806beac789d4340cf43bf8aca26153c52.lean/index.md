# Verification target: GRWTSK.Topology.GeneralTopology.GDelta.Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "370c82390ad2413ebcf963865547b30a554e0eb5",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `370c82390ad2413ebcf963865547b30a554e0eb5`.

Source path: `GRWTSK/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGδ](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg--9238259640095eed92c22ba7.md) | 57 | `declaration-track:9238259640095eed92c22ba7cd462807e3ae8600850a8614880825addb85d12d` |
| 2 | `theorem` | [IsOpen.isGδ](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isopen-isg--a4e0eacaff0d8549d1331cc8.md) | 62 | `result-track:a4e0eacaff0d8549d1331cc8bb170b7a2d1f2a7eb4f48fc477365b9ac3189b33` |
| 3 | `theorem` | [isGδ_empty](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg-empty--08743b8ae63ff49f8ea2eeb2.md) | 67 | `result-track:08743b8ae63ff49f8ea2eeb2e0ca18c160ea1bf50cb22f55498fb3fd8b2fb188` |
| 4 | `theorem` | [isGδ_univ](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg-univ--b22f49e410d30ef0dc3e19a2.md) | 72 | `result-track:b22f49e410d30ef0dc3e19a203d072c5374e438e0c1eeafb9035487c16901de0` |
| 5 | `theorem` | [isGδ_biInter_of_open](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg-biinter-of-open--90cd67c6ffd112f6250212b3.md) | 76 | `result-track:90cd67c6ffd112f6250212b3128ba5f364ab8a0b388845b6db140915ba80f4e3` |
| 6 | `theorem` | [isGδ_iInter_of_open](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg-iinter-of-open--438f33884a410b3f00f131d6.md) | 82 | `result-track:438f33884a410b3f00f131d64e00c2ae4ead041a40198b0a99a8a392e4b07aed` |
| 7 | `theorem` | [isGδ_iInter](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg-iinter--9bee6e0599ba9464ea4ddab8.md) | 89 | `result-track:9bee6e0599ba9464ea4ddab85df9abe5dc1fb9b97b51c85a10ff5661377560ff` |
| 8 | `theorem` | [isGδ_biInter](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg-biinter--3df21063384ddb4b0ae6097b.md) | 96 | `result-track:3df21063384ddb4b0ae6097bf17ea95c3cc0266039ce47f2e8a634bb9963df1e` |
| 9 | `theorem` | [isGδ_sInter](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg-sinter--10d1482f590dab7629d8de00.md) | 104 | `result-track:10d1482f590dab7629d8de00d39aaba2630a463e1deaf44cf260bc48252084c4` |
| 10 | `theorem` | [IsGδ.inter](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg-inter--2be32907fad818df85a2c62c.md) | 108 | `result-track:2be32907fad818df85a2c62c420a3421171b4490095085af76a6341df06317cc` |
| 11 | `theorem` | [IsGδ.union](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg-union--8b0cde7698a48d04fe965b0a.md) | 114 | `result-track:8b0cde7698a48d04fe965b0a383b13369ebc526c7f0264b78a99b5eec5e8b3dd` |
| 12 | `theorem` | [isGδ_biUnion](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg-biunion--afb870a29953c8c28e0e5687.md) | 125 | `result-track:afb870a29953c8c28e0e5687ff035c5c0502d4c3187980a62afbb50e1f791bca` |
| 13 | `theorem` | [IsClosed.isGδ](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isclosed-isg--ab59bc680fd0897c913c20b3.md) | 133 | `result-track:ab59bc680fd0897c913c20b39ad5c66ba510d8ad327d8e7c7f57c1331bdb5051` |
| 14 | `theorem` | [isGδ_compl_singleton](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg-compl-singleton--3c69f32dc37f63fcb5b13788.md) | 145 | `result-track:3c69f32dc37f63fcb5b13788742666b8b149fbff8c062a59efdf257e8447ad0e` |
| 15 | `theorem` | [Set.Countable.isGδ_compl](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/set-countable-isg-compl--7594a709f3faebbde0ef4bef.md) | 149 | `result-track:7594a709f3faebbde0ef4bef7780a82b41e194348e6102b3c35d7e4a4ad96d9b` |
| 16 | `theorem` | [Set.Finite.isGδ_compl](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/set-finite-isg-compl--573c439294160acc77a0619b.md) | 154 | `result-track:573c439294160acc77a0619b4087f94b7e863ec4473152d012dcf8a213744450` |
| 17 | `theorem` | [Set.Subsingleton.isGδ_compl](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/set-subsingleton-isg-compl--e1e8aa0456b9418f11f82cb5.md) | 158 | `result-track:e1e8aa0456b9418f11f82cb5ef2d7f616e71bf420b8997943f71f73fb0968123` |
| 18 | `theorem` | [Finset.isGδ_compl](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/finset-isg-compl--20ec9d7d9d9fbb8c74e0e211.md) | 162 | `result-track:20ec9d7d9d9fbb8c74e0e211f25a5cb874573589a49e6177fbf8c4cc75de1a7a` |
| 19 | `theorem` | [isGδ_singleton](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg-singleton--b4f5bd1b6b4e707fc5432742.md) | 168 | `result-track:b4f5bd1b6b4e707fc54327425f79c627df64918ccd9196ef632dded7baeabb02` |
| 20 | `theorem` | [Set.Finite.isGδ](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/set-finite-isg--8ee9fbfa6e165f03e9364616.md) | 174 | `result-track:8ee9fbfa6e165f03e9364616a6e90a61d2cd58ea6ad42cd540b2d26f38c8a49e` |
| 21 | `theorem` | [isGδ_setOf_continuousAt](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/isg-setof-continuousat--5909aa323d6430c697a438ef.md) | 187 | `result-track:5909aa323d6430c697a438ef9cd715544fdfb5e7918a37925697f090eca80030` |
| 22 | `def` | [residual](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/residual--795e9ceb9ce02a32444c48e4.md) | 205 | `declaration-track:795e9ceb9ce02a32444c48e4f9e52ef6f2a335be56873d99c1b79cc630bae2b5` |
| 23 | `instance` | [countableInterFilter_residual](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/countableinterfilter-residual--3fbede6135891cc5a0381f05.md) | 209 | `declaration-track:3fbede6135891cc5a0381f0555942d99d06594515eb627d9e4629a2802087ea2` |
| 24 | `theorem` | [residual_of_dense_open](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/residual-of-dense-open--5f8c0a5382e597ada88347f0.md) | 214 | `result-track:5f8c0a5382e597ada88347f05d426a5ea50258903368f97e35f0d6a59177dd24` |
| 25 | `theorem` | [residual_of_dense_Gδ](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/residual-of-dense-g--3d2a3705182ea8534d1fa6fb.md) | 219 | `result-track:3d2a3705182ea8534d1fa6fb8c463d551b124158d78e5e0b430a16375c253a88` |
| 26 | `theorem` | [mem_residual_iff](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant77bf94af6a6dcad6dc00c53d4006d96806beac789d4340cf43bf8aca26153c52.lean/declarations/mem-residual-iff--b98a3f564b2f80d293736b42.md) | 227 | `result-track:b98a3f564b2f80d293736b4260b6e0519a26b78d7417dc6c66acaf38173ce93e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
