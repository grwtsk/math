# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0be03c1931c763811b4793cad6bebee01f9964f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0be03c1931c763811b4793cad6bebee01f9964f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Minimal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_maximalFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/exists-maximalfor--36f4d8c8992bb1b2e476af6c.md) | 29 | `result-track:36f4d8c8992bb1b2e476af6c86b4eb0346b92bd4c7776a71d93d49c88f16e93f` |
| 2 | `lemma` | [exists_minimalFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/exists-minimalfor--0b32e6bd257f71483cd74149.md) | 41 | `result-track:0b32e6bd257f71483cd7414907ad46e252582bd84a75339b11f3fda0e179cf5c` |
| 3 | `lemma` | [exists_maximal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/exists-maximal--d00ccebdef0a4454200f5b8d.md) | 44 | `result-track:d00ccebdef0a4454200f5b8ded684467d40264244be3e3ba4cc2e7def2f8f3d1` |
| 4 | `lemma` | [exists_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/exists-minimal--c0fcafdfdbf38e7f749c80b4.md) | 45 | `result-track:c0fcafdfdbf38e7f749c80b4761cf5173ecdb33e3439cdd76065b0d443bcf6d0` |
| 5 | `lemma` | [exists_le_maximal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/exists-le-maximal--0b6d5151745b0730feeb1c4d.md) | 47 | `result-track:0b6d5151745b0730feeb1c4d03ed17370704e1b6cd31ef8ef0de782872003b21` |
| 6 | `lemma` | [exists_le_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/exists-le-minimal--0d9c5c4541308025d43655e0.md) | 53 | `result-track:0d9c5c4541308025d43655e0be67578c602a01cecca4dcbdff2840efd2b9d789` |
| 7 | `lemma` | [Finite.exists_maximalFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/finite-exists-maximalfor--4945d02167455da6ef72784a.md) | 64 | `result-track:4945d02167455da6ef72784af37a7cfe1ce83e5bf0e57897eec7c82ee5bf45d2` |
| 8 | `lemma` | [Finite.exists_minimalFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/finite-exists-minimalfor--b55ea626fd9f2ea00cc503e3.md) | 68 | `result-track:b55ea626fd9f2ea00cc503e3ea48186986bd28ee8eea19ffc2f52bce1f93a30b` |
| 9 | `lemma` | [Finite.exists_maximal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/finite-exists-maximal--df454c0a791489654b515ed8.md) | 71 | `result-track:df454c0a791489654b515ed898580f9a1b63157d1e6c05023a19056c79e228c1` |
| 10 | `lemma` | [Finite.exists_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/finite-exists-minimal--a2d8ee467246fea39d0928bd.md) | 74 | `result-track:a2d8ee467246fea39d0928bd89cd61d1ff7439f2ccdd7b10ed85e849f41a9cc4` |
| 11 | `lemma` | [Finite.exists_maximalFor'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/finite-exists-maximalfor--c4685014497110314f200062.md) | 79 | `result-track:c4685014497110314f2000626606049ad95b2f09d18b5210c3c0673da4369519` |
| 12 | `lemma` | [Finite.exists_minimalFor'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/finite-exists-minimalfor--140f6250ce6ec520baea628c.md) | 86 | `result-track:140f6250ce6ec520baea628c071f615f654cc40a5c0f59b5e5ed8d7cdeda36e9` |
| 13 | `lemma` | [Finite.exists_le_maximal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/finite-exists-le-maximal--26c9802c57e2078929ec5735.md) | 94 | `result-track:26c9802c57e2078929ec57356f5a60e2da7ce99df3ba55e7042abbeb82b73c64` |
| 14 | `lemma` | [Finite.exists_le_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/finite-exists-le-minimal--6a5e080c5e8a3285a67d51f3.md) | 97 | `result-track:6a5e080c5e8a3285a67d51f37a671b7ff8a12906ab8e33d12be00c8a4afed15f` |
| 15 | `lemma` | [infinite_of_forall_exists_gt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/infinite-of-forall-exists-gt--2e17a43ae64a158c7ef05eda.md) | 102 | `result-track:2e17a43ae64a158c7ef05edaf86bf8324dfde914ad962be4f99a3fe8db945390` |
| 16 | `lemma` | [infinite_of_forall_exists_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/infinite-of-forall-exists-lt--d590b7465c2811c662289f7b.md) | 109 | `result-track:d590b7465c2811c662289f7bb41a15c632f4f86b50be2a019f4b5651ac53ccde` |
| 17 | `lemma` | [finite_isTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/finite-istop--c18a0f94051ebd91529aab07.md) | 117 | `result-track:c18a0f94051ebd91529aab0741076cd39f97eb175c5fa8c3939b6d84f8458539` |
| 18 | `lemma` | [finite_isBot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/finite-isbot--29d4ce886a7270483e7bcf76.md) | 118 | `result-track:29d4ce886a7270483e7bcf7634a47a7874b6bfd142c5e1f3d02d6dc5227536b2` |
| 19 | `lemma` | [Infinite.exists_lt_map_eq_of_mapsTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/infinite-exists-lt-map-eq-of-mapsto--1d6ea3a9691baa281bddd58d.md) | 125 | `result-track:1d6ea3a9691baa281bddd58d6b90e6fd5cf6112224bf84f9623478c411ed83fa` |
| 20 | `lemma` | [Finite.exists_lt_map_eq_of_forall_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/finite-exists-lt-map-eq-of-forall-mem--f8ea69bc7c704a430143d920.md) | 130 | `result-track:f8ea69bc7c704a430143d9205b7e002ed4b1d1cfef9bf7906895f36dd548668a` |
| 21 | `lemma` | [Finite.exists_le_maximal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/finite-exists-le-maximal--db4d88f21f9c2b8f6d7a970e.md) | 142 | `result-track:db4d88f21f9c2b8f6d7a970e47348fc8415107ece6d498ab6ce5a24dc1d30b20` |
| 22 | `lemma` | [Finite.exists_le_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/declarations/finite-exists-le-minimal--41a647d81a4b2638d775c301.md) | 145 | `result-track:41a647d81a4b2638d775c3018def69ab489934af6192b1628326a7a53e942654` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
