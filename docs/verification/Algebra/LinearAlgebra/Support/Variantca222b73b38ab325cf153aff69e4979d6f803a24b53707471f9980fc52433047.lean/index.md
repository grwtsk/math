# Verification target: GRWTSK.Algebra.LinearAlgebra.Support.Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd342f966bb6ed409a6ca538a13a7883fb33050a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd342f966bb6ed409a6ca538a13a7883fb33050a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean.json)

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
| 1 | `def` | [Module.support](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-support--c50dbcf0273113ed57fb424e.md) | 57 | `declaration-track:c50dbcf0273113ed57fb424e4d4338acb0c846a186c99c76b371427d61a78ce1` |
| 2 | `lemma` | [Module.mem_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-mem-support-iff--39bfa4ee58c3138b804e4828.md) | 60 | `result-track:39bfa4ee58c3138b804e482846f456eb793264d76bdbd309afae8f22efd7379b` |
| 3 | `lemma` | [Module.notMem_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-notmem-support-iff--22724090c18b04128df977c1.md) | 63 | `result-track:22724090c18b04128df977c1de58cec6c3d1e95160bd61e681cdbd1a033250cd` |
| 4 | `lemma` | [Module.notMem_support_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-notmem-support-iff--85bccff9de81fda9ac41569d.md) | 67 | `result-track:85bccff9de81fda9ac41569d7e888184cf9a3a9a34d815293beac8b0629841ae` |
| 5 | `lemma` | [Module.mem_support_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-mem-support-iff--2c8e102ff59073cb5c55a709.md) | 72 | `result-track:2c8e102ff59073cb5c55a709ccf13f65b632f0e66e17af3387d2c6964bf19238` |
| 6 | `lemma` | [Module.mem_support_iff_exists_annihilator](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-mem-support-iff-exists-annihilator--f236e523cf8d84317f45a5a4.md) | 78 | `result-track:f236e523cf8d84317f45a5a4108d35efe6d75a2ac32b4fdba9f0cb2e3e2ad6c2` |
| 7 | `lemma` | [Module.mem_support_mono](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-mem-support-mono--b1b6bf80bf7bd8915bfdacc9.md) | 83 | `result-track:b1b6bf80bf7bd8915bfdacc9068515e410bdeba790b5f0f03a6925088725346b` |
| 8 | `lemma` | [Module.mem_support_iff_of_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-mem-support-iff-of-span-eq-top--55abd255a80fb7dfa0d63e28.md) | 88 | `result-track:55abd255a80fb7dfa0d63e28e10b17bb1294ab2a4bda944a9f49f9ff460af3cb` |
| 9 | `lemma` | [Module.annihilator_le_of_mem_support](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-annihilator-le-of-mem-support--aa6b62be8bbda8cad5ffe9bb.md) | 102 | `result-track:aa6b62be8bbda8cad5ffe9bb451ab1e7b5412283cb9ffa0026d8550e40b359c5` |
| 10 | `lemma` | [LocalizedModule.subsingleton_iff_support_subset](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/localizedmodule-subsingleton-iff-support-subset--f9715b2efed8f2812bc87a28.md) | 107 | `result-track:f9715b2efed8f2812bc87a2861de10e2f61942fe45b960e5d5dadf64e8194ff9` |
| 11 | `lemma` | [Module.support_eq_empty_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-support-eq-empty-iff--0620a4b0bb5293fd34ef1163.md) | 127 | `result-track:0620a4b0bb5293fd34ef11638a3d61390b0227a0a69a1033a9123b6c20dde5b9` |
| 12 | `lemma` | [Module.nonempty_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-nonempty-support-iff--c4b0d699b8140bea70057c8d.md) | 134 | `result-track:c4b0d699b8140bea70057c8d27a46170ba53e900da2be6baa41940fc9921a3bf` |
| 13 | `lemma` | [Module.nonempty_support_of_nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-nonempty-support-of-nontrivial--2d3fddc9510245912568bf3e.md) | 139 | `result-track:2d3fddc9510245912568bf3ed6dd2aa51f0942187974c72a420c1f2bafaf322e` |
| 14 | `lemma` | [Module.support_eq_empty](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-support-eq-empty--b061bdbc77314df7962b35a9.md) | 142 | `result-track:b061bdbc77314df7962b35a98a1001cfeddd79a8f6e1dcbe39621d7b2469ffdd` |
| 15 | `lemma` | [Module.support_of_algebra](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-support-of-algebra--5a25c170c9670e9c5881ff6a.md) | 146 | `result-track:5a25c170c9670e9c5881ff6a442f6b5a0708a155dad20592159ba1b4a4716d78` |
| 16 | `lemma` | [Module.support_of_isTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-support-of-istorsionfree--c4c0e3d946237fff3b51a4ec.md) | 154 | `result-track:c4c0e3d946237fff3b51a4ec10e9b061acb88089a600c17f2eca3f19cc4e29b0` |
| 17 | `lemma` | [Module.support_subset_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-support-subset-of-injective--6ae6d97b1129ca7f5a20dcef.md) | 167 | `result-track:6ae6d97b1129ca7f5a20dceff7b9d1b3ad20a83ebb7dfa205d704bfe776e757f` |
| 18 | `lemma` | [Module.support_subset_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-support-subset-of-surjective--337004f0d4923799ed6cb186.md) | 174 | `result-track:337004f0d4923799ed6cb186ff2f9b0adecd8faf39f19044e10d65804107f692` |
| 19 | `lemma` | [Module.support_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-support-of-exact--fb0d6590941be014a8fc7f6d.md) | 184 | `result-track:fb0d6590941be014a8fc7f6db15968f1b131d2484fcce13a4ff5e141753dcabc` |
| 20 | `lemma` | [LinearEquiv.support_eq](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/linearequiv-support-eq--3bb8ffbda4b9ad5183d5b0a8.md) | 199 | `result-track:3bb8ffbda4b9ad5183d5b0a8f07128f7453b9c940458428f0525c47e9df16580` |
| 21 | `lemma` | [Module.mem_support_iff_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-mem-support-iff-of-finite--6464ac77e21c2ac55b155893.md) | 210 | `result-track:6464ac77e21c2ac55b15589376d7a7b1f2280b82a2337c9ea62585f53bc68ef4` |
| 22 | `lemma` | [Module.support_eq_zeroLocus](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-support-eq-zerolocus--7a0378836c83e6dcdd6dd925.md) | 226 | `result-track:7a0378836c83e6dcdd6dd9251ef11ad2627f6994b4a2ac7d24523055a3d883d2` |
| 23 | `lemma` | [LocalizedModule.exists_subsingleton_away](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/localizedmodule-exists-subsingleton-away--35ee805b28d16b773fdd283d.md) | 232 | `result-track:35ee805b28d16b773fdd283d5389cf83fdfc96d945d59a43b4f706f1ac0912a8` |
| 24 | `lemma` | [IsLocalizedModule.exists_subsingleton_away](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/islocalizedmodule-exists-subsingleton-away--7627b065b8ac507856f11984.md) | 243 | `result-track:7627b065b8ac507856f1198477be200736afdfd2b2c860e7b56248963ef9e58e` |
| 25 | `lemma` | [Module.exists_localizedMap_away_surjective_of_localizedMap_atPrime_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-exists-localizedmap-away-surjective-of-localizedmap-atprime-surje--b9a5031b74f0116fdaa0ce5e.md) | 251 | `result-track:b9a5031b74f0116fdaa0ce5e4efaa3a89d661159584275217257bf0f7ca8bcb8` |
| 26 | `theorem` | [Module.support_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-support-quotient--0cbaac9958c9515e2d5c4a3c.md) | 259 | `result-track:0cbaac9958c9515e2d5c4a3ca6d4aaa9459ab0de9aefae4907b3418736ff8af8` |
| 27 | `theorem` | [Module.support_quotSMulTop](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/declarations/module-support-quotsmultop--ed784c3db806470f00387b97.md) | 287 | `result-track:ed784c3db806470f00387b97b228322eaf70a211d31505f68a83ebcd94cb0b27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
