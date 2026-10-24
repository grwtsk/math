# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.SeminormFromBounded.Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa0531987e900b40adafdf9149a529c2a2dafdbe",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa0531987e900b40adafdf9149a529c2a2dafdbe`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Unbundled.RingSeminorm` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [seminormFromBounded'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded--1ff0bd6a24ac25ed68be9842.md) | 62 | `declaration-track:1ff0bd6a24ac25ed68be9842247534c764f0f570c78626ddf049b5149ff76554` |
| 2 | `theorem` | [map_one_ne_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/map-one-ne-zero--ad631ad03a7098a3457ba09b.md) | 67 | `result-track:ad631ad03a7098a3457ba09b44b721e6de5ea1a2a9d2888b50f313f397c2db2c` |
| 3 | `theorem` | [map_pow_ne_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/map-pow-ne-zero--0c13947704f3342ea8558b3a.md) | 77 | `result-track:0c13947704f3342ea8558b3a8bc4e5a360e0dfb40a7717fb87e2198f476c506d` |
| 4 | `theorem` | [map_mul_zero_of_map_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/map-mul-zero-of-map-zero--87ad5aaaee4f9b5b0c3f45f9.md) | 86 | `result-track:87ad5aaaee4f9b5b0c3f45f9b6d2d746ebb02b059e6c32409fd3036fcd54c547` |
| 5 | `theorem` | [seminormFromBounded_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-zero--4850975c0c335a25be347e4e.md) | 93 | `result-track:4850975c0c335a25be347e4ecb69beeabf59194f574a1d3bd502e1aa6fca10de` |
| 6 | `theorem` | [seminormFromBounded_aux](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-aux--a912930591be648b18ac6f66.md) | 96 | `result-track:a912930591be648b18ac6f660ca3c8f82b33985a316aa75f8f5df31ce659d288` |
| 7 | `theorem` | [seminormFromBounded_bddAbove_range](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-bddabove-range--faf6bde2b646031ac26e396f.md) | 113 | `result-track:faf6bde2b646031ac26e396ffa2bdaae3110cbcaf7c836399fd2010a07790582` |
| 8 | `theorem` | [seminormFromBounded_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-le--97ef845375f566ac4d773537.md) | 124 | `result-track:97ef845375f566ac4d773537940c023e2f0b9199dce55b7f28f72f0a0d6ec73e` |
| 9 | `theorem` | [seminormFromBounded_ge](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-ge--88277e9cba013dad0314362a.md) | 135 | `result-track:88277e9cba013dad0314362aec3600c3990f5486ea1be03a72ddc5d2ff3cb4f4` |
| 10 | `theorem` | [seminormFromBounded_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-nonneg--160f9f1cb55451bab9238b4a.md) | 149 | `result-track:160f9f1cb55451bab9238b4adf6de64732f6bc64ef0dda59ba588099c3498a48` |
| 11 | `theorem` | [seminormFromBounded_eq_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-eq-zero-iff--25f07a9f589d1c784dcf069d.md) | 157 | `result-track:25f07a9f589d1c784dcf069d80a50b984e3b0ed0e1b49b78a4d9d1d5d5ef0a3c` |
| 12 | `theorem` | [seminormFromBounded_neg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-neg--d8b682a8604a7d7e80339df5.md) | 170 | `result-track:d8b682a8604a7d7e80339df5977569dc911253b43d5cd2c762bf0cdb950beace` |
| 13 | `theorem` | [seminormFromBounded_mul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-mul--f9aecbf10f9544334f232b8c.md) | 179 | `result-track:f9aecbf10f9544334f232b8c53266f0df4ec73f951258e2e59e919c7bbe47f98` |
| 14 | `theorem` | [seminormFromBounded_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-one--68ffaa99e4d2194368bff9fe.md) | 209 | `result-track:68ffaa99e4d2194368bff9fe4b6a542778f0c555469831d19749d433fc5e8a0c` |
| 15 | `theorem` | [seminormFromBounded_one_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-one-le--6d3286f5db8fa8032cdbdf8d.md) | 229 | `result-track:6d3286f5db8fa8032cdbdf8dece30fe942475313013997d99dc8c83255bfe1c7` |
| 16 | `theorem` | [seminormFromBounded_add](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-add--1c061f92598497a1f7a7d7b5.md) | 241 | `result-track:1c061f92598497a1f7a7d7b551fed83a607f91c4ece3583c572c02d84e0338ae` |
| 17 | `def` | [seminormFromBounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded--41e2ed5bbdf59498723f2f90.md) | 256 | `declaration-track:41e2ed5bbdf59498723f2f902679d90a0eb479ad07a569d92911ec824b8b6628` |
| 18 | `theorem` | [seminormFromBounded_isNonarchimedean](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-isnonarchimedean--64732ab6d5acd15ef36f2669.md) | 267 | `result-track:64732ab6d5acd15ef36f26692944f4bcf87565338d293ba2840ea4df602b1a11` |
| 19 | `theorem` | [seminormFromBounded_of_mul_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-of-mul-apply--441ffa70f6d628aa81e46bcf.md) | 284 | `result-track:441ffa70f6d628aa81e46bcf2bc5e39b08b93a8c8b40b3a6516b748a9a83eaab` |
| 20 | `theorem` | [seminormFromBounded_of_mul_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-of-mul-le--6ee5c96f705684e796ac6134.md) | 308 | `result-track:6ee5c96f705684e796ac6134947ad689b13b8127b64ce6843a1765b28d2cd861` |
| 21 | `theorem` | [seminormFromBounded_nonzero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-nonzero--1b9d88dfa02f3c07292246cd.md) | 337 | `result-track:1b9d88dfa02f3c07292246cd7a5c8912794c648c41a4046072dd2f728557e677` |
| 22 | `theorem` | [seminormFromBounded_ker](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-ker--57eab1b0c14afeb9065239a4.md) | 348 | `result-track:57eab1b0c14afeb9065239a43424a1ad8831b995c51801ca2a45cdc30a574171` |
| 23 | `theorem` | [seminormFromBounded_is_norm_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-is-norm-iff--9041637d57d4a9325ebd5a3f.md) | 356 | `result-track:9041637d57d4a9325ebd5a3f6ba057b135da6f24e7a7abed85353fb9fb201137` |
| 24 | `def` | [normFromBounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/normfrombounded--341f2e7f520f9a817ad04856.md) | 373 | `declaration-track:341f2e7f520f9a817ad0485624301f80aa5b8b3590590c0f15589166c00709cf` |
| 25 | `theorem` | [seminormFromBounded_of_mul_is_mul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/declarations/seminormfrombounded-of-mul-is-mul--f725ed699778cd3e16a7dfc3.md) | 383 | `result-track:f725ed699778cd3e16a7dfc37fa9985353d32970f282c47da2fb3e4901fa9e38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
