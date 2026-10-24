# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lemmas.Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc060d9b00f2031dbd22cc7a69738f94cb14bb68",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc060d9b00f2031dbd22cc7a69738f94cb14bb68`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Set` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Finite.fin_embedding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean/declarations/finite-fin-embedding--261a4c8a39093126a68714b8.md) | 43 | `result-track:261a4c8a39093126a68714b85d7198bc5625da15b83e228a52921a37707d85ed` |
| 2 | `theorem` | [Finite.fin_param](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean/declarations/finite-fin-param--06a1c13757122da3e056f74b.md) | 48 | `result-track:06a1c13757122da3e056f74bbb9e22deb24995ac84e0a6edb31bbd688d3259a7` |
| 3 | `theorem` | [Finite.induction_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean/declarations/finite-induction-to--a0ddf677764844ebce0c42b4.md) | 54 | `result-track:a0ddf677764844ebce0c42b45035172220994282622081875361b9b5e6a71d4f` |
| 4 | `theorem` | [Finite.induction_to_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean/declarations/finite-induction-to-univ--76f28f0544fd87e2a886b235.md) | 66 | `result-track:76f28f0544fd87e2a886b23581d5d44ae48b952078d3beed3bcf43e822903f8c` |
| 5 | `theorem` | [exists_min_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean/declarations/exists-min-image--58858f09e600aeaf249c1999.md) | 76 | `result-track:58858f09e600aeaf249c1999ea511d1c70709787e8530160f4f3b2fa756edebb` |
| 6 | `theorem` | [exists_max_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean/declarations/exists-max-image--a3bc2ac8f6881782aca7ac45.md) | 82 | `result-track:a3bc2ac8f6881782aca7ac4591d4d5ded3968c5142348480824b6df032744adb` |
| 7 | `theorem` | [exists_lower_bound_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean/declarations/exists-lower-bound-image--f4e4c5b222c6a33c7fa56dde.md) | 88 | `result-track:f4e4c5b222c6a33c7fa56dde090b15f87d2262ec6710e8c3329df50b139121f5` |
| 8 | `theorem` | [exists_upper_bound_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean/declarations/exists-upper-bound-image--b0ffa2028909d03fd2aa1207.md) | 95 | `result-track:b0ffa2028909d03fd2aa12079d61bb691ba2003c24cfc60d1a4f89fd69c1c48d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
