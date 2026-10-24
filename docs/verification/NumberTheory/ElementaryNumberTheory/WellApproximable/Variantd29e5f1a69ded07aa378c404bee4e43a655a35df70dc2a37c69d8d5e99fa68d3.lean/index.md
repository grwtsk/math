# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.WellApproximable.Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8b49b91bfe3428154f43ea2f8796ed439f24f2a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8b49b91bfe3428154f43ea2f8796ed439f24f2a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean.json)

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
| 1 | `def` | [approxOrderOf](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/declarations/approxorderof--17738d48576cbb657cf0033b.md) | 73 | `declaration-track:17738d48576cbb657cf0033be73bf23a4fc411ce37d9caf821eeb830d0b83147` |
| 2 | `theorem` | [mem_approxOrderOf_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/declarations/mem-approxorderof-iff--1b4453781288c3a5d99dc225.md) | 77 | `result-track:1b4453781288c3a5d99dc225f63dcb63ccda7927a642183203e5e2f6d6d7ad3e` |
| 3 | `def` | [wellApproximable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/declarations/wellapproximable--790e224b32796741b3bd0cbe.md) | 88 | `declaration-track:790e224b32796741b3bd0cbe8b31006f4dd2665c2aaa23c530039689fdbfd89e` |
| 4 | `theorem` | [mem_wellApproximable_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/declarations/mem-wellapproximable-iff--cdaec1231d70623c997d4945.md) | 92 | `result-track:cdaec1231d70623c997d4945bbc684265b592bd28f2aa6f620d8c60d5dd87d51` |
| 5 | `theorem` | [image_pow_subset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/declarations/image-pow-subset-of-coprime--dd069c5bd2c6a5a1add5c92f.md) | 102 | `result-track:dd069c5bd2c6a5a1add5c92f14eeb851178897f55ee3e1353ff85bd5c8311547` |
| 6 | `theorem` | [image_pow_subset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/declarations/image-pow-subset--73fb2cdb27dc7b1a12eeaa7b.md) | 113 | `result-track:73fb2cdb27dc7b1a12eeaa7b0078a3ada8cf981df60a44272d9b97e09f629c44` |
| 7 | `theorem` | [smul_subset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/declarations/smul-subset-of-coprime--1f44a22e5e2ec641ffe06989.md) | 124 | `result-track:1f44a22e5e2ec641ffe06989fa6ae0fbdfebc7894dd3dce9dece7797f35ffbcc` |
| 8 | `theorem` | [smul_eq_of_mul_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/declarations/smul-eq-of-mul-dvd--1a18e5c076bceeaa0c81d840.md) | 135 | `result-track:1a18e5c076bceeaa0c81d8404c36071cd4859a32a3bc3c2ade7abab07722e6a2` |
| 9 | `theorem` | [mem_approxAddOrderOf_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/declarations/mem-approxaddorderof-iff--fb0d2a88afdfdced0368dc11.md) | 160 | `result-track:fb0d2a88afdfdced0368dc11f972dfe9eaee1dfa3bb554b7fd873f8982d0ccd6` |
| 10 | `theorem` | [mem_addWellApproximable_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/declarations/mem-addwellapproximable-iff--9e985219b7b4a746a231f4c4.md) | 168 | `result-track:9e985219b7b4a746a231f4c4ab9b2090598fc58ba39cb3004f5d0554b57954f8` |
| 11 | `theorem` | [addWellApproximable_ae_empty_or_univ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/declarations/addwellapproximable-ae-empty-or-univ--9c3e7c996ce6ac729804f062.md) | 192 | `result-track:9c3e7c996ce6ac729804f062481ec06100480cf0abf1bbd8b51ab08ef0c928ba` |
| 12 | `lemma` | [_root_.NormedAddCommGroup.exists_norm_nsmul_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/declarations/root-normedaddcommgroup-exists-norm-nsmul-le--55e0e9db6fcc0cd72fc75a29.md) | 322 | `result-track:55e0e9db6fcc0cd72fc75a294e8ec02a249b751e44ef19c2aae9cbb8a87f2b82` |
| 13 | `lemma` | [exists_norm_nsmul_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.lean/declarations/exists-norm-nsmul-le--d2813b346905b7a1d5e536e7.md) | 357 | `result-track:d2813b346905b7a1d5e536e7c548dbd36abbc4360e8e51fbb4ffeed0683f4cf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
