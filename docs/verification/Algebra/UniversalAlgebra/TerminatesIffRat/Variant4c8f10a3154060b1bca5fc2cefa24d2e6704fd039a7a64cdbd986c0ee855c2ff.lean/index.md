# Verification target: GRWTSK.Algebra.UniversalAlgebra.TerminatesIffRat.Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8654e9b7dfe01833f290319d3a601d48653d9ec7",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8654e9b7dfe01833f290319d3a601d48653d9ec7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Approximations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Computation.CorrectnessTerminating` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_gcf_pair_rat_eq_of_nth_conts_aux](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/exists-gcf-pair-rat-eq-of-nth-conts-aux--104e47dbae84f1c869717113.md) | 63 | `result-track:104e47dbae84f1c8697171135cfb3f646c5fdfaf82eacd186ddab7d3b2db4e38` |
| 2 | `theorem` | [exists_gcf_pair_rat_eq_nth_conts](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/exists-gcf-pair-rat-eq-nth-conts--de00376d3b9af1e1d2feb37d.md) | 102 | `result-track:de00376d3b9af1e1d2feb37d4f1d3546e5fec133372c33f558c0a5f427692fe0` |
| 3 | `theorem` | [exists_rat_eq_nth_numerator](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/exists-rat-eq-nth-numerator--0f0501bd40ed21dcef7ec047.md) | 107 | `result-track:0f0501bd40ed21dcef7ec047b399061134cd1b704fcb0e7684fd6ea190afee2c` |
| 4 | `theorem` | [exists_rat_eq_nth_denominator](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/exists-rat-eq-nth-denominator--b243f74f180622713489f58f.md) | 113 | `result-track:b243f74f180622713489f58fbb78fa6192dd20e535e10fc7a737298dedc8e738` |
| 5 | `theorem` | [exists_rat_eq_nth_convergent](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/exists-rat-eq-nth-convergent--ff210fed5fd233354d2c4692.md) | 120 | `result-track:ff210fed5fd233354d2c4692986dddde82083e8d7c5f89dd2ef1220ffbe7b313` |
| 6 | `theorem` | [exists_rat_eq_of_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/exists-rat-eq-of-terminates--daacfa8501604f13d9bba0ed.md) | 130 | `result-track:daacfa8501604f13d9bba0ed8cc4d64c5a0c9b3dd043ec9fa2d16032df36e31f` |
| 7 | `theorem` | [coe_of_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/coe-of-rat-eq--dea40f2b98d6ac7cbee32342.md) | 171 | `result-track:dea40f2b98d6ac7cbee323427a2ef0248038c236ea5c7b7be0d04dc8110248c0` |
| 8 | `theorem` | [coe_stream_nth_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/coe-stream-nth-rat-eq--23a77dc8b2b21245fae86710.md) | 175 | `result-track:23a77dc8b2b21245fae867103a078a00d72ae14ad0f4f8f7ffc54fa9aff9de77` |
| 9 | `theorem` | [coe_stream'_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/coe-stream-rat-eq--841ed45d4968b5b01c10773c.md) | 198 | `result-track:841ed45d4968b5b01c10773c959f6e113e1aa5bb673085f9c17c702703111884` |
| 10 | `theorem` | [coe_of_h_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/coe-of-h-rat-eq--b78cf94286f67a59e5fb030d.md) | 209 | `result-track:b78cf94286f67a59e5fb030dcdfefa307604b0f775e598fdd47b6e083b70fadb` |
| 11 | `theorem` | [coe_of_s_get?_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/coe-of-s-get-rat-eq--65053a84d2d045a21210a12f.md) | 215 | `result-track:65053a84d2d045a21210a12f618749cf526b664cf9b32f1bff9909cc1b09566f` |
| 12 | `theorem` | [coe_of_s_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/coe-of-s-rat-eq--63eaf26c24d1c84755377dcb.md) | 224 | `result-track:63eaf26c24d1c84755377dcb94bab5d5796c94d29ea26a3b0ae3238200f8581c` |
| 13 | `theorem` | [coe_of_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/coe-of-rat-eq--cdea65b48152d7648e921bf9.md) | 229 | `result-track:cdea65b48152d7648e921bf9a6a449611549f2cd10155ff1724d6bbb3d15bf1e` |
| 14 | `theorem` | [of_terminates_iff_of_rat_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/of-terminates-iff-of-rat-terminates--b13ee70e52cf56edab32a5ea.md) | 240 | `result-track:b13ee70e52cf56edab32a5ea09c9cc0384c158dfd7155a0ae1b958fd24f9cc22` |
| 15 | `theorem` | [of_inv_fr_num_lt_num_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/of-inv-fr-num-lt-num-of-pos--c4891ddd8a7331ef31ec7602.md) | 273 | `result-track:c4891ddd8a7331ef31ec7602e7b66fb922ab7d4acb0ca8b67e63ebd7ed97422b` |
| 16 | `theorem` | [stream_succ_nth_fr_num_lt_nth_fr_num_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/stream-succ-nth-fr-num-lt-nth-fr-num-rat--a23c0a3d3d603a354773c119.md) | 279 | `result-track:a23c0a3d3d603a354773c119ee22516fd7e894d5bfa41de8e87859a878847051` |
| 17 | `theorem` | [stream_nth_fr_num_le_fr_num_sub_n_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/stream-nth-fr-num-le-fr-num-sub-n-rat--949707c68b93595b73745ca3.md) | 296 | `result-track:949707c68b93595b73745ca37bf7055ad9c83822cbe32bdcb8c45415ef421833` |
| 18 | `theorem` | [exists_nth_stream_eq_none_of_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/exists-nth-stream-eq-none-of-rat--05f1a0ee04f01e8dd1db9ee2.md) | 316 | `result-track:05f1a0ee04f01e8dd1db9ee2a2b6d0038e10ef3c093249dc6bfc87ed332bb461` |
| 19 | `theorem` | [terminates_of_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/terminates-of-rat--d82d1e4ab83019364647d1d9.md) | 338 | `result-track:d82d1e4ab83019364647d1d9f74b4d0929f599c27ad39241d25efdad462bff70` |
| 20 | `theorem` | [terminates_iff_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/declarations/terminates-iff-rat--f5cde179202c32756cd773f9.md) | 349 | `result-track:f5cde179202c32756cd773f91ab8fcceca480cccd6709e6ccf7362d5ea0c0965` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
