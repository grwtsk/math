# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78e2fd7102ed40e692c06e4fece27b994ac6a4db",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78e2fd7102ed40e692c06e4fece27b994ac6a4db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Grade` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/instlocallyfiniteorder--7ca9c9af3a18c66be7799354.md) | 43 | `declaration-track:7ca9c9af3a18c66be779935429233ce5edecaf55cd32dfd846f48314f1cf9c01` |
| 2 | `theorem` | [Icc_eq_filter_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/icc-eq-filter-powerset--00acf8a212bd90bd6e4910e2.md) | 61 | `result-track:00acf8a212bd90bd6e4910e26feaf205971f3040212b4c4c31878b4bf991b25b` |
| 3 | `theorem` | [Ico_eq_filter_ssubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/ico-eq-filter-ssubsets--d43c1abca4344c2dadae2dd2.md) | 64 | `result-track:d43c1abca4344c2dadae2dd2b8de72be994f9b485e1ae8dc1b36208e2919682f` |
| 4 | `theorem` | [Ioc_eq_filter_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/ioc-eq-filter-powerset--385d9ddcd5e6d0a454e5264c.md) | 67 | `result-track:385d9ddcd5e6d0a454e5264cfec3fab08ba127aeabe5481cd9e7074f1e4800e6` |
| 5 | `theorem` | [Ioo_eq_filter_ssubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/ioo-eq-filter-ssubsets--f9fb42f418314ac6ffffcc29.md) | 70 | `result-track:f9fb42f418314ac6ffffcc298dd3dd81dda85d6f334c67dd766d998aa1820595` |
| 6 | `theorem` | [Iic_eq_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/iic-eq-powerset--2ee76a26f8678bd61e8bc871.md) | 73 | `result-track:2ee76a26f8678bd61e8bc871853c976b22b5cfb7b54cdf7fe9d1359804cfdebb` |
| 7 | `theorem` | [Iio_eq_ssubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/iio-eq-ssubsets--0b4c6d9232a1196a1b024d0f.md) | 76 | `result-track:0b4c6d9232a1196a1b024d0fb152053c9e0942bf9c16fd78bf08793911589b0e` |
| 8 | `theorem` | [Icc_eq_image_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/icc-eq-image-powerset--1ad1a01c37cc587c901461fb.md) | 81 | `result-track:1ad1a01c37cc587c901461fb6095b00a3b233ef731d67ae22296ef46f7db8ce2` |
| 9 | `theorem` | [Ico_eq_image_ssubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/ico-eq-image-ssubsets--054d0fc1d15ee6094d945b51.md) | 90 | `result-track:054d0fc1d15ee6094d945b51fa6c62ca8a44b96ba35271c37c95c4561a909822` |
| 10 | `theorem` | [card_Icc_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/card-icc-finset--27d87f7eea24063f49e0da6b.md) | 100 | `result-track:27d87f7eea24063f49e0da6b5f897adea80dd6691eb7e8468e2acc67ceaaaeec` |
| 11 | `theorem` | [card_Ico_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/card-ico-finset--544721033490e21b6ec5b9eb.md) | 108 | `result-track:544721033490e21b6ec5b9ebe6f1d89ad5bbf644cde17e18c8cc59f80ef9edf3` |
| 12 | `theorem` | [card_Ioc_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/card-ioc-finset--3cb6e3f117326b0e14d3a07c.md) | 112 | `result-track:3cb6e3f117326b0e14d3a07c948d56531a913dab06aca02f4b0fd4260e69c54d` |
| 13 | `theorem` | [card_Ioo_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/card-ioo-finset--87394aa56c1d70c10d5d07dd.md) | 116 | `result-track:87394aa56c1d70c10d5d07dd04f6e68ba0c823283734a4f58e39e061bc3669ab` |
| 14 | `theorem` | [card_Iic_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/card-iic-finset--09953362f109da2e4be12a8d.md) | 120 | `result-track:09953362f109da2e4be12a8d9276a0d3fc49a884903c18cc0ea5296e09baab60` |
| 15 | `theorem` | [card_Iio_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/card-iio-finset--ac7b3a829730e47debf82284.md) | 123 | `result-track:ac7b3a829730e47debf8228406ffd352d5540b94e6aea23b1345b798ccf8a7c1` |
| 16 | `lemma` | [monotone_iff_forall_le_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/monotone-iff-forall-le-cons--44b4b9c0f5c11909bf85b0d0.md) | 134 | `result-track:44b4b9c0f5c11909bf85b0d032083bcaab3b5060aa802a137ba132f011674c2f` |
| 17 | `lemma` | [antitone_iff_forall_cons_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/antitone-iff-forall-cons-le--def396d88cf6eb94aecbc5f2.md) | 139 | `result-track:def396d88cf6eb94aecbc5f2d721b1c5fdf535f97f9d6d461c09b3370dccf983` |
| 18 | `lemma` | [strictMono_iff_forall_lt_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/strictmono-iff-forall-lt-cons--7218f27a062bfee5983947db.md) | 144 | `result-track:7218f27a062bfee5983947db6785dcb8d60d0878fd4c981f4477f03b4f1e8e31` |
| 19 | `lemma` | [strictAnti_iff_forall_cons_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/strictanti-iff-forall-cons-lt--bb0f01291bf8aa6fc47d1493.md) | 149 | `result-track:bb0f01291bf8aa6fc47d1493a4af7d2d8b313563379de2449b2d92ed52d099a7` |
| 20 | `lemma` | [monotone_iff_forall_le_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/monotone-iff-forall-le-insert--b1bf6d0e158f17d969517a28.md) | 160 | `result-track:b1bf6d0e158f17d969517a2899889f19657de671155e2cf77f2ac1adbd304ff7` |
| 21 | `lemma` | [antitone_iff_forall_insert_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/antitone-iff-forall-insert-le--a76689eae17404262edb0679.md) | 165 | `result-track:a76689eae17404262edb06792f3b5378a3f93b1341d448cbac5ac9b9e7694cef` |
| 22 | `lemma` | [strictMono_iff_forall_lt_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/strictmono-iff-forall-lt-insert--647eade0cc2a7dd0bb76fbf1.md) | 170 | `result-track:647eade0cc2a7dd0bb76fbf1674be8dfc708a4d4d44d50409dc7bdebc0b21f0e` |
| 23 | `lemma` | [strictAnti_iff_forall_lt_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant288915850eb1d36e046b39d750cd3bf4cf9f089d3f5242562fb61e9ed4695a92.lean/declarations/strictanti-iff-forall-lt-insert--6a889429bfb4625a59551db0.md) | 175 | `result-track:6a889429bfb4625a59551db08c4d911686b10f66d83f24f36f3e2a010052bb0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
