# Verification target: GRWTSK.Algebra.GroupTheory.WordMetric.Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b728306aa2752ff1089b52a9e5a95a7d14f5e255",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b728306aa2752ff1089b52a9e5a95a7d14f5e255`.

Source path: `GRWTSK/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean.json)

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
| 1 | `def` | [wordLength](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/declarations/wordlength--882992968c71c16d2265b5a7.md) | 70 | `declaration-track:882992968c71c16d2265b5a7339169cfca36f0e9476ed0b80f503efebc333976` |
| 2 | `def` | [IsGeodesic](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/declarations/isgeodesic--b4e24cf0789ec41f6ca2618d.md) | 76 | `declaration-track:b4e24cf0789ec41f6ca2618d0b80c141b9121aa2c46f0783eb8c61b9c2b91c7b` |
| 3 | `lemma` | [IsGeodesic.eq](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/declarations/isgeodesic-eq--c8d5380e9b548512f0f3d688.md) | 78 | `result-track:c8d5380e9b548512f0f3d688253864b9177621f65053be978d25ca4af62ced74` |
| 4 | `theorem` | [exists_isGeodesic](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/declarations/exists-isgeodesic--d299b5f229a32e8ee926fa29.md) | 82 | `result-track:d299b5f229a32e8ee926fa29f21d4df5cf414d708c163bdf436d6632c500349b` |
| 5 | `lemma` | [wordLength_wordProd_le](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/declarations/wordlength-wordprod-le--ce31260d8a7a11006f128417.md) | 88 | `result-track:ce31260d8a7a11006f128417861619369f6b3f31e742d67d5f5ebfddad448336` |
| 6 | `theorem` | [wordLength_le_iff](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/declarations/wordlength-le-iff--b997dadd905657f0e6d050e1.md) | 93 | `result-track:b997dadd905657f0e6d050e1c0b77a896a6bae2da890f4970c6d9666dd81d62d` |
| 7 | `lemma` | [wordLength_eq_zero_iff](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/declarations/wordlength-eq-zero-iff--5e105b7796dc9681c0f47994.md) | 103 | `result-track:5e105b7796dc9681c0f4799472ee4d34181b45434d02f08ce57e517f33ffed4a` |
| 8 | `lemma` | [wordLength_one](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/declarations/wordlength-one--c1a015ba31b943bef96a0d40.md) | 108 | `result-track:c1a015ba31b943bef96a0d40530d4fda97792cc13e9311c7bf775158a9511698` |
| 9 | `lemma` | [wordLength_inv_le](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/declarations/wordlength-inv-le--2fbb3173efedd27bf181a865.md) | 112 | `result-track:2fbb3173efedd27bf181a865e84d6672db72561ed6a59e785769859a2f8a141e` |
| 10 | `lemma` | [wordLength_inv](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/declarations/wordlength-inv--fba596be24ba7b43f68ee1c3.md) | 117 | `result-track:fba596be24ba7b43f68ee1c3be77b695834ef11d26603d6ed074488ef77068c8` |
| 11 | `lemma` | [wordLength_mul_le](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/declarations/wordlength-mul-le--419be717306fc2dc8d16f22d.md) | 122 | `result-track:419be717306fc2dc8d16f22d4de85b930c0734abf51518c53ae70d329e4112f7` |
| 12 | `def` | [groupNorm](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/declarations/groupnorm--5eb9b812c8ee872028847f19.md) | 128 | `declaration-track:5eb9b812c8ee872028847f1982afac49a8f771dc6a72c6677955c087559d781a` |
| 13 | `def` | [normedGroup](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variant4b9158aa26e55b7453d141bf2a394535a243970ad11a636f6573bdd0e5bcf737.lean/declarations/normedgroup--1021c6f265336f419b8ac15b.md) | 140 | `declaration-track:1021c6f265336f419b8ac15bfbb9eebc3d5c18156ff3ab40007829889238504d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
