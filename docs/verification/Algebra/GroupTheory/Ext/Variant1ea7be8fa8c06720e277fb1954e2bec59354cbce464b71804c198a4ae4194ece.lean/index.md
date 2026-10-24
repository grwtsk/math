# Verification target: GRWTSK.Algebra.GroupTheory.Ext.Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53861eb189dd14d9e2b9517a3898d091174f893f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53861eb189dd14d9e2b9517a3898d091174f893f`.

Source path: `GRWTSK/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean.json)

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
| 1 | `theorem` | [Monoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/monoid-ext--e8a3605254618795df7b234d.md) | 39 | `result-track:e8a3605254618795df7b234d085cffd1d96c25676f9367cf692f536256429631` |
| 2 | `theorem` | [CommMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/commmonoid-tomonoid-injective--6feef14685b797c7dc512e91.md) | 54 | `result-track:6feef14685b797c7dc512e91e5aa36bb6897ab9cac1e67bd9c18abddd4d89960` |
| 3 | `theorem` | [CommMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/commmonoid-ext--78b0630d7c99882292de724a.md) | 60 | `result-track:78b0630d7c99882292de724a1b9033ec8639f42ad5381476c94d73a1273bfd1d` |
| 4 | `theorem` | [LeftCancelMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/leftcancelmonoid-tomonoid-injective--77202ace5d4eb24fc1c4b9dd.md) | 65 | `result-track:77202ace5d4eb24fc1c4b9ddc71d0d736eee5e531ae2dd8bba931f8cd20f9490` |
| 5 | `theorem` | [LeftCancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/leftcancelmonoid-ext--c2862597d6ca70c5f2bb0b4e.md) | 71 | `result-track:c2862597d6ca70c5f2bb0b4e15e9710a5c29867404fb1734c3185e9c88266f24` |
| 6 | `theorem` | [RightCancelMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/rightcancelmonoid-tomonoid-injective--05d6d2977dcf16b054eda1ea.md) | 77 | `result-track:05d6d2977dcf16b054eda1ead30dff776828a32142e315b88f2d75bef25b9b7e` |
| 7 | `theorem` | [RightCancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/rightcancelmonoid-ext--5b1bcebd593ab6c2ac098cab.md) | 83 | `result-track:5b1bcebd593ab6c2ac098cabaa955a5e8e540ab9fa430b7bace90645271d61a0` |
| 8 | `theorem` | [CancelMonoid.toLeftCancelMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/cancelmonoid-toleftcancelmonoid-injective--8334f0450deefa5c64332295.md) | 89 | `result-track:8334f0450deefa5c64332295dc1425dba5ad9b33537b64996168f956802465db` |
| 9 | `theorem` | [CancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/cancelmonoid-ext--170da2f8150529a90e79c6e3.md) | 95 | `result-track:170da2f8150529a90e79c6e3ee6410f1f9d71fe0f13866a84e23349d0af59431` |
| 10 | `theorem` | [CancelMonoid.toRightCancelMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/cancelmonoid-torightcancelmonoid-injective--317cc97a2f92eeca4170b7b4.md) | 101 | `result-track:317cc97a2f92eeca4170b7b4d40f801791bd8870296201cbf318f30bb6502334` |
| 11 | `theorem` | [CancelCommMonoid.toCommMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/cancelcommmonoid-tocommmonoid-injective--4a84da11b969b98170efea7c.md) | 109 | `result-track:4a84da11b969b98170efea7c8d7f16f25b13197b155a0da8faa1dc63c056774d` |
| 12 | `theorem` | [CancelCommMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/cancelcommmonoid-ext--78bdc1f6634e4bbc8a25f5f3.md) | 115 | `result-track:78bdc1f6634e4bbc8a25f5f3a647a41acca617c2850047a5bbb9d6d2689d9be2` |
| 13 | `theorem` | [DivInvMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/divinvmonoid-ext--cc2f9b17fbf278b54d3e494a.md) | 121 | `result-track:cc2f9b17fbf278b54d3e494a987d482df42fe92832414d9bf6fc0e1356d66313` |
| 14 | `lemma` | [Group.toDivInvMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/group-todivinvmonoid-injective--1f7be70d42c0bb27a4909c99.md) | 141 | `result-track:1f7be70d42c0bb27a4909c99774b295f2252b363d6859268df25e47a9bb3ea20` |
| 15 | `theorem` | [Group.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/group-ext--8b1a54b20c97863f62e486f5.md) | 145 | `result-track:8b1a54b20c97863f62e486f56566fb68e63ba808407f9c219519f669459eec4b` |
| 16 | `lemma` | [CommGroup.toGroup_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/commgroup-togroup-injective--bd60a4bc80135486723fca65.md) | 158 | `result-track:bd60a4bc80135486723fca65c4a3301ba6aafcbd2ca4a71477e3e2a0fd9898f4` |
| 17 | `theorem` | [CommGroup.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant1ea7be8fa8c06720e277fb1954e2bec59354cbce464b71804c198a4ae4194ece.lean/declarations/commgroup-ext--71ce74348e7ab6a8d6bdbdbe.md) | 162 | `result-track:71ce74348e7ab6a8d6bdbdbe2e43a63348a58f4b5178e95b746a545fd9a8ea5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
