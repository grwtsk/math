# Verification target: GRWTSK.Algebra.LinearAlgebra.IsBaseChangeHom.Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b9e10078783ac83d857572e475599c5382d8f95",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b9e10078783ac83d857572e475599c5382d8f95`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean.json)

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
| 1 | `def` | [linearMapRightBaseChangeHom](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/linearmaprightbasechangehom--8401601e27b48db7de94283a.md) | 49 | `declaration-track:8401601e27b48db7de94283ac7df8a38085f4a6f5fa7974173edff84a0cc9818` |
| 2 | `def` | [linearMapRightBaseChangeEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/linearmaprightbasechangeequiv--a08d0096cd398277ae1e0450.md) | 66 | `declaration-track:a08d0096cd398277ae1e0450d34fcc38c6a3b033bc62e53696432232b6537d89` |
| 3 | `theorem` | [linearMapRight](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/linearmapright--53c2443993997f8be5b104cc.md) | 93 | `result-track:53c2443993997f8be5b104cca1198d2a338bfaf0f1186ae423c173b2d9c2cdac` |
| 4 | `def` | [linearMapLeftRightHom](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/linearmapleftrighthom--f477632889b7ed2364772e40.md) | 109 | `declaration-track:f477632889b7ed2364772e4046af3f6ead48c6b6de383926166bff8c668a661d` |
| 5 | `theorem` | [linearMapLeftRightHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/linearmapleftrighthom-apply--452db0d42109b3295ea67f3f.md) | 117 | `result-track:452db0d42109b3295ea67f3fdc6a833f851a683bccf195b25b5ca8704581a71a` |
| 6 | `theorem` | [linearMapLeftRightHom_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/linearmapleftrighthom-comp-apply--e649509abb805f3730adc0de.md) | 122 | `result-track:e649509abb805f3730adc0de780de0685c828dd38b9d836c1aae81883e30578e` |
| 7 | `theorem` | [linearMapLeftRightHom_comp](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/linearmapleftrighthom-comp--72e5dde60314527eba9b725b.md) | 127 | `result-track:72e5dde60314527eba9b725b1bdac5a201bb9b4a28c400f11f658a471cb58e98` |
| 8 | `theorem` | [linearMapLeftRight](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/linearmapleftright--92e8fd83faed2ad1c540c8a0.md) | 134 | `result-track:92e8fd83faed2ad1c540c8a0f26066b074149257fc525d8b0c3bc7dd4e34c232` |
| 9 | `def` | [endHom](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/endhom--c6b8446274622dd6f34cbc05.md) | 151 | `declaration-track:c6b8446274622dd6f34cbc05b2ff7fdc37c27a2e556f71a5a6055dab544e2e17` |
| 10 | `theorem` | [endHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/endhom-apply--c7a6dbe5ace1e94ea2a75ca2.md) | 158 | `result-track:c7a6dbe5ace1e94ea2a75ca2eb93429ccfd1ddba5d1ba7d298b31833d1f32ad6` |
| 11 | `theorem` | [endHom_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/endhom-comp-apply--53778c76e2a8e68d5578133f.md) | 163 | `result-track:53778c76e2a8e68d5578133f87c9b5c710a6528460f74fa9a19ba56f3ce749b7` |
| 12 | `theorem` | [endHom_comp](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/endhom-comp--9e0af9ce9db3edbaa48228a0.md) | 168 | `result-track:9e0af9ce9db3edbaa48228a05ea54fa6cb968d79a50f1c604b3b97e15de98524` |
| 13 | `theorem` | [endHom_one](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/endhom-one--4293af5e2149880a5c131fe6.md) | 173 | `result-track:4293af5e2149880a5c131fe6a2c67f7d453122017e923946e59a78ef7e2f7f28` |
| 14 | `theorem` | [_root_.IsBaseChange.end](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/root-isbasechange-end--ed15084a9bd5da0c6b1dabb7.md) | 183 | `result-track:ed15084a9bd5da0c6b1dabb7f8aa24e0d849e50ed56327a746907181dcfa7c70` |
| 15 | `theorem` | [linearMapLeftRightHom_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/linearmapleftrighthom-tomatrix--fa1328022a5d12e30f2fb45d.md) | 202 | `result-track:fa1328022a5d12e30f2fb45d2a7953023e0ee8028f658d29bb9c3e851a88d1de` |
| 16 | `theorem` | [endHom_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/endhom-tomatrix--42ab1b757034ebf00ae5097e.md) | 209 | `result-track:42ab1b757034ebf00ae5097e35be8792a11bae50028846606b09cb1f58394687` |
| 17 | `theorem` | [det_endHom](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/declarations/det-endhom--0f48ff73d1600679bb460159.md) | 228 | `result-track:0f48ff73d1600679bb46015903bd449f61be2d27042cde0ef74b842937cdfb72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
