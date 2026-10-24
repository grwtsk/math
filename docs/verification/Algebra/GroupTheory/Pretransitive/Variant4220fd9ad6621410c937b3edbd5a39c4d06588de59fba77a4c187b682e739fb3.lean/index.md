# Verification target: GRWTSK.Algebra.GroupTheory.Pretransitive.Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7017ee9ce34edfc1e6bd8b8314e3896a7ae2d34a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7017ee9ce34edfc1e6bd8b8314e3896a7ae2d34a`.

Source path: `GRWTSK/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.TypeTags` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddAction.IsPretransitive](../../../../../mathematics/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/declarations/addaction-ispretransitive--ebe43bdaa9d380380db66dec.md) | 57 | `declaration-track:ebe43bdaa9d380380db66dec11bef787f5c4b491fd0c3f8a7a5ca03a6e6e6b7f` |
| 2 | `class` | [MulAction.IsPretransitive](../../../../../mathematics/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/declarations/mulaction-ispretransitive--54a8a05c6dad299cbaa856e8.md) | 64 | `declaration-track:54a8a05c6dad299cbaa856e8f220b2b6eae15a2fb557f7a1c1188667002516a1` |
| 3 | `instance` | [MulAction.instIsPretransitiveOfSubsingleton](../../../../../mathematics/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/declarations/mulaction-instispretransitiveofsubsingleton--d293ee25064fdf02fad14626.md) | 69 | `declaration-track:d293ee25064fdf02fad14626be18f218a914fa61f94bdc8725e76c05f061e123` |
| 4 | `lemma` | [exists_smul_eq](../../../../../mathematics/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/declarations/exists-smul-eq--1bb81b232aa30ba6ddb27bb7.md) | 79 | `result-track:1bb81b232aa30ba6ddb27bb7682f959d328905fcd0b7c22960e9e0da7c043402` |
| 5 | `lemma` | [surjective_smul](../../../../../mathematics/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/declarations/surjective-smul--df537b714a8eb524d17f7f16.md) | 82 | `result-track:df537b714a8eb524d17f7f1650f5e47dac922e20e64e200977df9086cf1817a0` |
| 6 | `instance` | [Regular.isPretransitive](../../../../../mathematics/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/declarations/regular-ispretransitive--8b656fd046944b98dcc44050.md) | 86 | `declaration-track:8b656fd046944b98dcc44050e5fb4b67684fce05d5393d67fd47f934fa74efa1` |
| 7 | `instance` | [Regular.isPretransitive_mulOpposite](../../../../../mathematics/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/declarations/regular-ispretransitive-mulopposite--63e324f4c4d4367ec039d2f1.md) | 91 | `declaration-track:63e324f4c4d4367ec039d2f150de52284c61b4243a592305a1d1689d704f50df` |
| 8 | `lemma` | [IsPretransitive.of_smul_eq](../../../../../mathematics/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/declarations/ispretransitive-of-smul-eq--19cfd2e73d5ffdb1a355f6eb.md) | 99 | `result-track:19cfd2e73d5ffdb1a355f6ebca766b3156339ce6e7bfcf829e63f87d99a98e8e` |
| 9 | `lemma` | [MulAction.IsPretransitive.of_isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/declarations/mulaction-ispretransitive-of-isscalartower--cba2583380e9ace585f4f8f8.md) | 108 | `result-track:cba2583380e9ace585f4f8f8a91a362d96608d8eaab1907e309e005d017733cc` |
| 10 | `instance` | [Additive.addAction_isPretransitive](../../../../../mathematics/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/declarations/additive-addaction-ispretransitive--8e7f55af3ab80eef95b2b2ee.md) | 120 | `declaration-track:8e7f55af3ab80eef95b2b2eef76fef9adaeadc41f33aa195be862dd7717becc5` |
| 11 | `instance` | [Multiplicative.mulAction_isPretransitive](../../../../../mathematics/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/declarations/multiplicative-mulaction-ispretransitive--9904b6ee43b2c4b49862b5a4.md) | 124 | `declaration-track:9904b6ee43b2c4b49862b5a47a7a8c6aa40b0156b82d9f3391eff686f80ac8fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
