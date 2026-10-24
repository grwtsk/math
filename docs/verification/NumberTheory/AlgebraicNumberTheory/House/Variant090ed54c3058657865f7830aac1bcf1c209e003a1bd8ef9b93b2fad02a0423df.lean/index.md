# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.House.Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8ed24826fa9449efbaea34b87659bb52a1583a1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8ed24826fa9449efbaea34b87659bb52a1583a1`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.SiegelsLemma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.EquivReindex` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [house](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/house--3c1ef02c7501239847558613.md) | 43 | `declaration-track:3c1ef02c7501239847558613c08052f1161303d50caa2ac95de733bd0f7ded4d` |
| 2 | `theorem` | [house_eq_sup'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/house-eq-sup--d8b154443ca1cdc2a1efcc5a.md) | 46 | `result-track:d8b154443ca1cdc2a1efcc5ab4d4e9c32a51526b5e7fa7f9f356eddcbcd040e1` |
| 3 | `theorem` | [house_sum_le_sum_house](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/house-sum-le-sum-house--e0230f80d17b3936bd51148b.md) | 50 | `result-track:e0230f80d17b3936bd51148b1d222c7f0140cee2f95413f36a735a703d6f3b3e` |
| 4 | `theorem` | [house_nonneg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/house-nonneg--07781e96e2a09f1764f252f2.md) | 54 | `result-track:07781e96e2a09f1764f252f2a13a1f6ef4df5f562e9859ae35cbb7a6f0b66f76` |
| 5 | `theorem` | [house_mul_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/house-mul-le--da12dc1749f5c01075f9ab3b.md) | 56 | `result-track:da12dc1749f5c01075f9ab3b3c3edaa1039880e3a482f97cd9360c7a769d0e06` |
| 6 | `theorem` | [house_intCast](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/house-intcast--800380feed1d633b32b95c80.md) | 59 | `result-track:800380feed1d633b32b95c807912bb0b437e69a61c5066a07cd35faaa83f97e5` |
| 7 | `def` | [c](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/c--f6892ab6bcecee9135f3694e.md) | 82 | `declaration-track:f6892ab6bcecee9135f3694ea327c797ca0a82a72e4bfa069a24af05266fa2be` |
| 8 | `theorem` | [c_nonneg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/c-nonneg--b0b7e9189a90396beaa7702d.md) | 84 | `result-track:b0b7e9189a90396beaa7702dca7ee9fcb24ad550fe78c8ac26a5f4cc8e35f747` |
| 9 | `theorem` | [basis_repr_norm_le_const_mul_house](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/basis-repr-norm-le-const-mul-house--99b38aa900dc03a3714035e2.md) | 88 | `result-track:99b38aa900dc03a3714035e25ac07b69712d5c9dce4e05ad5d86ec6e28bd54f6` |
| 10 | `def` | [newBasis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/newbasis--bb0348fca4a5ef51a518bf41.md) | 111 | `declaration-track:bb0348fca4a5ef51a518bf41da528eb21edf5d928a67596809883dfc443e8226` |
| 11 | `def` | [supOfBasis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/supofbasis--d836aa639fb02f54ba18c103.md) | 115 | `declaration-track:d836aa639fb02f54ba18c1030ef321f71aa6833b7b084d2c608cad0705a00462` |
| 12 | `theorem` | [supOfBasis_nonneg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/supofbasis-nonneg--43db4928de4a22458377fa3e.md) | 120 | `result-track:43db4928de4a22458377fa3e2887f5f03ab4e3e7b8e44e74f8ffa25200d949ec` |
| 13 | `def` | [a'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/a--6e968805c5c5d88b0dcc4017.md) | 128 | `declaration-track:6e968805c5c5d88b0dcc40172dcd7eb3333d7bd91f6296cfe89604dc54c2e22d` |
| 14 | `def` | [asiegel](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/asiegel--2ecca1fa66dbc797c29bc43b.md) | 133 | `declaration-track:2ecca1fa66dbc797c29bc43b8aef64daafc6682cf8c08ca240996ddaf1b46cfa` |
| 15 | `theorem` | [asiegel_ne_0](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/asiegel-ne-0--28b8556b4e3532a409a407f4.md) | 138 | `result-track:28b8556b4e3532a409a407f43a41b93d7751d3f2a8797234620978a08da27331` |
| 16 | `def` | [ξ](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/anonymous--e31809431b21162fd722e88a.md) | 159 | `declaration-track:e31809431b21162fd722e88adce85d66838caf2b64e6b11f632a7d849c2fafb7` |
| 17 | `theorem` | [ξ_ne_0](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/ne-0--a8e83f1bd2e65817896cd27c.md) | 162 | `result-track:a8e83f1bd2e65817896cd27cbb1d2bdebeb7ff1e10e1517a5d5d8907b453009e` |
| 18 | `theorem` | [lin_1](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/lin-1--c09b38c4871b6aa9c1d5b57c.md) | 171 | `result-track:c09b38c4871b6aa9c1d5b57c806afd23b99ff698a21f5e3493816c015083553a` |
| 19 | `theorem` | [ξ_mulVec_eq_0](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/mulvec-eq-0--5b871192bba1bb9a806e4000.md) | 178 | `result-track:5b871192bba1bb9a806e40001b4cc3857e3ebacbfe50d0f724f705614a20165f` |
| 20 | `abbrev` | [c₂](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/c--271f268f9263ce7850decdb5.md) | 213 | `declaration-track:271f268f9263ce7850decdb5644cebcee6a0a8d985b9f7d597debe230fe4741f` |
| 21 | `theorem` | [c₂_nonneg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/c-nonneg--e69d57af88f9576a45cc88e4.md) | 215 | `result-track:e69d57af88f9576a45cc88e405b979be6e5bcf61c989a2220b5d5548892ecec9` |
| 22 | `theorem` | [asiegel_remark](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/asiegel-remark--0a25776403ac3fc36498b4fb.md) | 222 | `result-track:0a25776403ac3fc36498b4fbcb973ac90c794c1e645b86e8d205465e35d9f4db` |
| 23 | `def` | [c₁](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/c--f35103edb6553cce748a95db.md) | 255 | `declaration-track:f35103edb6553cce748a95db53ad3a5687b3e55423cfd7e1d03925c3c2fd80cd` |
| 24 | `theorem` | [house_le_bound](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/house-le-bound--68f9e963cfdfc53b75e7bcc5.md) | 258 | `result-track:68f9e963cfdfc53b75e7bcc5fa464ee72106558f6dd2e00957c4821fe0f6afae` |
| 25 | `theorem` | [exists_ne_zero_int_vec_house_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/declarations/exists-ne-zero-int-vec-house-le--146e1e7e772149145a07c5e9.md) | 300 | `result-track:146e1e7e772149145a07c5e981e1c3457ed4de8a293257a5800ee7a2a6d4941d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
