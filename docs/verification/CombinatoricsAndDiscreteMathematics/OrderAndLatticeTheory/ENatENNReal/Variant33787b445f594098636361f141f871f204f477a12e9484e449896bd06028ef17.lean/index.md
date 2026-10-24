# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ENatENNReal.Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29a60b6a1553019b77552daf3eb494634399839d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29a60b6a1553019b77552daf3eb494634399839d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean.json)

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
| 1 | `def` | [toENNReal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal--3c19007ce9b39f54a6f82ff7.md) | 39 | `declaration-track:3c19007ce9b39f54a6f82ff730b08c0d303f724a19db3e0b3d5d8e2dcd83a4dc` |
| 2 | `instance` | [hasCoeENNReal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/hascoeennreal--911f966a895e79b4d4d7d664.md) | 41 | `declaration-track:911f966a895e79b4d4d7d664d95e4023ed579d9b730276c7e57ac60a76ee88f1` |
| 3 | `theorem` | [map_coe_nnreal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/map-coe-nnreal--d73323f7d40e6427b15e5b9b.md) | 44 | `result-track:d73323f7d40e6427b15e5b9bf14fcf03d1ff85ddce51671aafe3d255c85eaa57` |
| 4 | `def` | [toENNRealOrderEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennrealorderembedding--e5b34d027c71b81f344b5823.md) | 49 | `declaration-track:e5b34d027c71b81f344b5823f9df5b1bf4f080033c3c598eee9c1ca8c7a9762d` |
| 5 | `def` | [toENNRealRingHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennrealringhom--de2620fe3a6e3f4bb5a4050b.md) | 54 | `declaration-track:de2620fe3a6e3f4bb5a4050be4b8bc6efe8f07d2ffbe7e8eaecd7148dd0c7b18` |
| 6 | `theorem` | [toENNReal_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-top--f8ce1f1766a8900ba3cab154.md) | 58 | `result-track:f8ce1f1766a8900ba3cab154e14fea94848532d3249e5e695cac3f6454215811` |
| 7 | `theorem` | [toENNReal_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-coe--c6b7ac477ba5083fb70b931a.md) | 62 | `result-track:c6b7ac477ba5083fb70b931a7652d402de850f41c15455953af74a12c5018860` |
| 8 | `theorem` | [toENNReal_ofNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-ofnat--5ed7a1d84d2aaf6a895d70d0.md) | 66 | `result-track:5ed7a1d84d2aaf6a895d70d0a0546de64959cce0f85529ca1abed9d3bec024f1` |
| 9 | `theorem` | [toENNReal_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-inj--128f0212222b761d973aa50f.md) | 70 | `result-track:128f0212222b761d973aa50f26cd671f87b7ae6943c0187619a31835daa7b075` |
| 10 | `lemma` | [toENNReal_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-eq-top--d6f969dfc3cfc062e24a6d30.md) | 73 | `result-track:d6f969dfc3cfc062e24a6d30fd1b473ba91ebd8928faa04ee42484ea55949fc9` |
| 11 | `lemma` | [toENNReal_ne_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-ne-top--7c3335443596f4056d9407e7.md) | 74 | `result-track:7c3335443596f4056d9407e751d8844aed625b0b94714071985e3abec8245063` |
| 12 | `theorem` | [toENNReal_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-le--9a47d3fbf73263b78a0a35e1.md) | 77 | `result-track:9a47d3fbf73263b78a0a35e1c2b02d5f9a9efc09662c2f04201e1186cc0da249` |
| 13 | `theorem` | [toENNReal_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-lt--750c58e8357c7f100ff0c540.md) | 81 | `result-track:750c58e8357c7f100ff0c5402b9a5c77b15a44e274440a7d76d0fc4bf3665ee2` |
| 14 | `lemma` | [toENNReal_lt_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-lt-top--c57004a8b37dccd1d5825b62.md) | 85 | `result-track:c57004a8b37dccd1d5825b62e426ad1ec3ff0090bbda8d562fdcef60bb363cab` |
| 15 | `theorem` | [toENNReal_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-mono--f02f2dd564fdcd75d8d6c08f.md) | 88 | `result-track:f02f2dd564fdcd75d8d6c08fbe3ac72ab398dc5cf9901c5c84f50ec28b3c86f0` |
| 16 | `theorem` | [toENNReal_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-strictmono--93e538775652a6f993156e88.md) | 92 | `result-track:93e538775652a6f993156e881278878bcd5b6777dfd5ed9eb6e32bb682a46264` |
| 17 | `theorem` | [toENNReal_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-zero--a27078bb6fb3e39cd1e8b7c1.md) | 96 | `result-track:a27078bb6fb3e39cd1e8b7c1785d772b47ded91f02f4ce1390e2821e1f53db14` |
| 18 | `lemma` | [toENNReal_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-eq-zero--850becad04f79d848fc62cf4.md) | 99 | `result-track:850becad04f79d848fc62cf43fc2f3980de4033f87cabacaf86bf1d7c5aff81a` |
| 19 | `theorem` | [toENNReal_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-add--9f402092480d2d637d881ce8.md) | 102 | `result-track:9f402092480d2d637d881ce8e00748de756dac8520a5d92e84cfaa742067a0f1` |
| 20 | `theorem` | [toENNReal_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-one--4bf99e01e611db24343fa30c.md) | 106 | `result-track:4bf99e01e611db24343fa30ceb2e5a1f22b39cd0a01cc9ef48e94bad3f7b632e` |
| 21 | `theorem` | [toENNReal_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-mul--fcca596a70e1bb6f702a2a38.md) | 110 | `result-track:fcca596a70e1bb6f702a2a381b6d728a0695eff118b3a109d9eb318bbbabd691` |
| 22 | `theorem` | [toENNReal_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-pow--d9d36301e9380180e55e26d9.md) | 114 | `result-track:d9d36301e9380180e55e26d9d11e63d8ef0cd97723e8d8a65177a95ef4ab7c8a` |
| 23 | `theorem` | [toENNReal_min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-min--e2176bc76348fe7fc670e31b.md) | 118 | `result-track:e2176bc76348fe7fc670e31b8d9b3c5337cff4d33afca7fd57073e26b7dbcf7f` |
| 24 | `theorem` | [toENNReal_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-max--f5ec4abb4c8c835a3c69c48f.md) | 122 | `result-track:f5ec4abb4c8c835a3c69c48fdc3b0afc890b97e1502cc55f01476dc0dd5540c3` |
| 25 | `theorem` | [toENNReal_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17.lean/declarations/toennreal-sub--c47db62d0a387f8550af92de.md) | 126 | `result-track:c47db62d0a387f8550af92deb97e7877ef0832b5637f09219b05346d98820f3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
