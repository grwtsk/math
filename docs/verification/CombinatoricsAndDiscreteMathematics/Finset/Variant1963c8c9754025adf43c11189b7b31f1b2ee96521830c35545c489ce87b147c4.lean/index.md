# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ca9e5ce9adf82ec4f8ef8052a5a7e34d0361378",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ca9e5ce9adf82ec4f8ef8052a5a7e34d0361378`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean/declarations/prod-eq-zero--29ac3477705b72248f06d42b.md) | 26 | `result-track:29ac3477705b72248f06d42b5e1029caaba076ee1e251365a96a4393c74f08be` |
| 2 | `lemma` | [prod_ite_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean/declarations/prod-ite-zero--cd334bb3659274fcb46f7c33.md) | 29 | `result-track:cd334bb3659274fcb46f7c33904ffa07ee5ea231b7d70d36be9b0eed63720ccd` |
| 3 | `lemma` | [prod_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean/declarations/prod-boole--f0e934cde7a14329586a28a6.md) | 37 | `result-track:f0e934cde7a14329586a28a61bac6e79f20770eab852c36f9e5a7cd773807f25` |
| 4 | `lemma` | [support_prod_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean/declarations/support-prod-subset--06471be1f7fee9304edb1395.md) | 40 | `result-track:06471be1f7fee9304edb1395445ee9609f4d794b6064da24b7ea938660c3113d` |
| 5 | `lemma` | [prod_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean/declarations/prod-eq-zero-iff--7af4e2c2f74e22bae493902d.md) | 46 | `result-track:7af4e2c2f74e22bae493902dd03ca971401628079791c2c35160521a96547c6b` |
| 6 | `lemma` | [prod_ne_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean/declarations/prod-ne-zero-iff--897c573fc39c72045c956994.md) | 52 | `result-track:897c573fc39c72045c956994a49cfb0076290b4e609ecc7c7a33559129df4b86` |
| 7 | `lemma` | [support_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean/declarations/support-prod--903cba29fac848e30e0fe6b1.md) | 56 | `result-track:903cba29fac848e30e0fe6b1d345cc77b05381813a112a025654f3ec0fee4a2d` |
| 8 | `lemma` | [prod_ite_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean/declarations/prod-ite-zero--402fa3236d07bf939b377b06.md) | 65 | `result-track:402fa3236d07bf939b377b060f760fe62b3c4c75c61e19999699a38b3cab14bf` |
| 9 | `lemma` | [prod_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean/declarations/prod-boole--5712c81c773ee926f92a6288.md) | 68 | `result-track:5712c81c773ee926f92a6288ecac2180723cd3e741334d89a284e7d184ef5db4` |
| 10 | `lemma` | [Units.mk0_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4.lean/declarations/units-mk0-prod--92cb81b25ca74677682f2e6b.md) | 72 | `result-track:92cb81b25ca74677682f2e6b01a819c7cc5311455b40d9524f043f41323348a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
