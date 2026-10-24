# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.WellApproximable.Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f3ce92fb4109c8122b70e344c82b1d35f3f4b18",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f3ce92fb4109c8122b70e344c82b1d35f3f4b18`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean.json)

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
| 1 | `def` | [approxOrderOf](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/declarations/approxorderof--220c7be9298ce23c40eb6d6d.md) | 81 | `declaration-track:220c7be9298ce23c40eb6d6dc3d52bb6d89c8f6ce198bcc8237186d59ea1c41d` |
| 2 | `theorem` | [mem_approxOrderOf_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/declarations/mem-approxorderof-iff--13f62c7816ce7bc5caa7ad52.md) | 85 | `result-track:13f62c7816ce7bc5caa7ad529a38b9eee533596b9cbb2bfabee5c91182bfa872` |
| 3 | `def` | [wellApproximable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/declarations/wellapproximable--c941d3602491b1087b47f8f2.md) | 96 | `declaration-track:c941d3602491b1087b47f8f2a7f658a7bb9c5a6cdc2529fa6f91c44888db9d61` |
| 4 | `theorem` | [mem_wellApproximable_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/declarations/mem-wellapproximable-iff--7a8caab522913b4d0c0ad289.md) | 100 | `result-track:7a8caab522913b4d0c0ad289ded75a55dfeba5e8eb6fc47f1c499bc3501f974c` |
| 5 | `theorem` | [image_pow_subset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/declarations/image-pow-subset-of-coprime--b7029b2ab3f21fa27ef2bf36.md) | 110 | `result-track:b7029b2ab3f21fa27ef2bf36377998936f94378dd30fe0bd1692ef3007b80f5b` |
| 6 | `theorem` | [image_pow_subset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/declarations/image-pow-subset--ec8c42d980b9b177609c806e.md) | 121 | `result-track:ec8c42d980b9b177609c806e5bc4c87a0cd2d706ff9cf5b79d7509a5e80fbc93` |
| 7 | `theorem` | [smul_subset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/declarations/smul-subset-of-coprime--00e39107aa3490011c78f6ea.md) | 132 | `result-track:00e39107aa3490011c78f6ea454684d9bbb5bd907431a85a509ec2ed1e83c29a` |
| 8 | `theorem` | [smul_eq_of_mul_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/declarations/smul-eq-of-mul-dvd--ea91e3e9bc1c41cdcfbfeff0.md) | 143 | `result-track:ea91e3e9bc1c41cdcfbfeff024886cc27e42684ff6bdbeaf45285552cab92ea6` |
| 9 | `theorem` | [mem_approxAddOrderOf_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/declarations/mem-approxaddorderof-iff--e7b9b6c85a6cda5935d2fc64.md) | 168 | `result-track:e7b9b6c85a6cda5935d2fc642f4d4aba0e998920a3d89f1fd29930639ff4dbf3` |
| 10 | `theorem` | [mem_addWellApproximable_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/declarations/mem-addwellapproximable-iff--287dcf78d78eb3798c3b9fd1.md) | 176 | `result-track:287dcf78d78eb3798c3b9fd1e02df198c7c710406aa3e9f31b9223c84f315885` |
| 11 | `theorem` | [addWellApproximable_ae_empty_or_univ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/declarations/addwellapproximable-ae-empty-or-univ--a53639bfe0e5642786b44ad7.md) | 200 | `result-track:a53639bfe0e5642786b44ad7ad271c5e56a56f585ee9575a0f3c852af7f85d28` |
| 12 | `lemma` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ApproxOrderOf.Variantd29e5f1a69ded07aa378c404bee4e43a655a35df70dc2a37c69d8d5e99fa68d3.NormedAddCommGroup.exists_norm_nsmul_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-approxorderof-variantd29--426e920fc617bec776f0b489.md) | 330 | `result-track:426e920fc617bec776f0b489eefabaf5cd43b7fd580056e0b27a72f66cd4884e` |
| 13 | `lemma` | [exists_norm_nsmul_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/declarations/exists-norm-nsmul-le--a9e9f1db45626b6ca7cd7883.md) | 365 | `result-track:a9e9f1db45626b6ca7cd78830f19e4de1cec805f2914c35dbc26c2b27b6b9920` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
