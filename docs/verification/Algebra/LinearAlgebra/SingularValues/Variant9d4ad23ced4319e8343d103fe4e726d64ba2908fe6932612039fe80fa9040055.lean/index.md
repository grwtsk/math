# Verification target: GRWTSK.Algebra.LinearAlgebra.SingularValues.Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14bcf812a2558519854b10b4922e0454cb1a9c19",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14bcf812a2558519854b10b4922e0454cb1a9c19`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean.json)

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
| 1 | `def` | [singularValues](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/singularvalues--33e2728a5d25ccba7751fd79.md) | 94 | `declaration-track:33e2728a5d25ccba7751fd7912687591846759013b8fcf724d65112a89b4a97f` |
| 2 | `theorem` | [singularValues_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/singularvalues-nonneg--c7aa8752882a84576a02bf5d.md) | 100 | `result-track:c7aa8752882a84576a02bf5d6b841668aa6686906cd5098f560b8a2ea6e2ccba` |
| 3 | `theorem` | [singularValues_pos_iff_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/singularvalues-pos-iff-ne-zero--34e54225666ea8f1529946f2.md) | 104 | `result-track:34e54225666ea8f1529946f2a057148f13d0d40c6af5ef28aa6dd26d4978d122` |
| 4 | `theorem` | [singularValues_fin](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/singularvalues-fin--b1bc8cfda8de035947188365.md) | 115 | `result-track:b1bc8cfda8de035947188365724c06fd98a9a0aecaadf6cb2c53abcb8139f7cc` |
| 5 | `theorem` | [singularValues_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/singularvalues-of-lt--53c8a0d305d4df7c7363f1dc.md) | 120 | `result-track:53c8a0d305d4df7c7363f1dc27d9c1d663cee496336421be4a281d3201a16f38` |
| 6 | `theorem` | [singularValues_of_finrank_le](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/singularvalues-of-finrank-le--4242b654db8ced1140613e58.md) | 124 | `result-track:4242b654db8ced1140613e5804ae11f5e2a90684777951aa7a14579f081203af` |
| 7 | `theorem` | [sq_singularValues_fin](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/sq-singularvalues-fin--76c4b84ee5aa16f280e9b834.md) | 128 | `result-track:76c4b84ee5aa16f280e9b834263e93ec100e3ed84b2808c141d721858ff53b26` |
| 8 | `theorem` | [sq_singularValues_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/sq-singularvalues-of-lt--13b937b97b28f02b4e76239a.md) | 132 | `result-track:13b937b97b28f02b4e76239a09d363e2d0bb54cd5631e6e555324b44214ca744` |
| 9 | `theorem` | [hasEigenvalue_adjoint_comp_self_sq_singularValues](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/haseigenvalue-adjoint-comp-self-sq-singularvalues--f3b2abaed0fb3b195aedd050.md) | 136 | `result-track:f3b2abaed0fb3b195aedd050ec726b42266b25f6236f9b17298812381d7097dd` |
| 10 | `theorem` | [singularValues_antitone](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/singularvalues-antitone--8beb18cb154590a49a529c46.md) | 141 | `result-track:8beb18cb154590a49a529c463ac3cfb2627916365006280b7568a87eb3107ca5` |
| 11 | `theorem` | [injective_iff_forall_lt_finrank_singularValues_pos](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/injective-iff-forall-lt-finrank-singularvalues-pos--b4c1f35e6c08c7c1dd2efa16.md) | 155 | `result-track:b4c1f35e6c08c7c1dd2efa1637b631d42f17df1898c825b544397c844f64476f` |
| 12 | `theorem` | [card_support_singularValues](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/card-support-singularvalues--3b0179386d0b237da8f8e92e.md) | 173 | `result-track:3b0179386d0b237da8f8e92eef45ed5439005d78ae99e14d66d015fb23bd0ced` |
| 13 | `theorem` | [isLowerSet_support_singularValues](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/islowerset-support-singularvalues--6ee9a4afbdbf0f4e004bd68f.md) | 184 | `result-track:6ee9a4afbdbf0f4e004bd68ff12184db2249f487171c7cb778dc9fa6d2ff6f5d` |
| 14 | `theorem` | [support_singularValues](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/support-singularvalues--842dcea44f0e2aa42f94b762.md) | 190 | `result-track:842dcea44f0e2aa42f94b76210fb0c1212d9ee37edd80bc4a83308acf104421f` |
| 15 | `theorem` | [singularValues_pos_iff_lt_finrank_range](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/singularvalues-pos-iff-lt-finrank-range--f4a016c2468630c41b1d61de.md) | 196 | `result-track:f4a016c2468630c41b1d61de7b57487b5f9f32a9d9fd25c006ac3bdfbb4bae0e` |
| 16 | `theorem` | [singularValues_finrank_range_self](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/singularvalues-finrank-range-self--b636f6a0f38d25b3f0042f57.md) | 201 | `result-track:b636f6a0f38d25b3f0042f57616d77f83957d5a6908fc83ce97c2de5064d3cb3` |
| 17 | `theorem` | [singularValues_eq_zero_iff_le_finrank_range](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/singularvalues-eq-zero-iff-le-finrank-range--4045e8fb090466252c0afa07.md) | 205 | `result-track:4045e8fb090466252c0afa07eb116fcc346d409acbbe1937769fb23541e5c111` |
| 18 | `theorem` | [singularValues_zero](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/singularvalues-zero--d1d7b9b610318bded430ff6e.md) | 210 | `result-track:d1d7b9b610318bded430ff6e5467d9e7c2f2f7df7c2abb0c24d7de7f64b0b439` |
| 19 | `theorem` | [singularValues_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant9d4ad23ced4319e8343d103fe4e726d64ba2908fe6932612039fe80fa9040055.lean/declarations/singularvalues-eq-zero-iff--965c283375be87fd2f19706b.md) | 216 | `result-track:965c283375be87fd2f19706bba09c9d781a24a18805c28d6601945ec0cc5ef62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
