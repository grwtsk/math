# Verification target: GRWTSK.Algebra.Basic.Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9cd5466562cd3e81ed18a7605a7d47563c95592",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9cd5466562cd3e81ed18a7605a7d47563c95592`.

Source path: `GRWTSK/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Irrational` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_int_int_abs_mul_sub_le](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/exists-int-int-abs-mul-sub-le--61318e220085718026492e16.md) | 99 | `result-track:61318e220085718026492e169a357d3b9cde8d4e92c3d7e500cf4fd6327dbdff` |
| 2 | `theorem` | [exists_nat_abs_mul_sub_round_le](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/exists-nat-abs-mul-sub-round-le--28e41f4450095ec63b0c9e28.md) | 140 | `result-track:28e41f4450095ec63b0c9e288fcd068e6c6a527de4d6281ae3f2278adebef6cd` |
| 3 | `theorem` | [exists_rat_abs_sub_le_and_den_le](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/exists-rat-abs-sub-le-and-den-le--bc2f7799f5b866c701444815.md) | 152 | `result-track:bc2f7799f5b866c701444815eac33e92ed4b7fb926f0af374d4d0aea63af1348` |
| 4 | `theorem` | [exists_rat_abs_sub_lt_and_lt_of_irrational](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/exists-rat-abs-sub-lt-and-lt-of-irrational--cbc19594e1f238f467b10b9c.md) | 181 | `result-track:cbc19594e1f238f467b10b9c3193fc5f74a3ffca0c7324ff209c53cc141b15cb` |
| 5 | `theorem` | [infinite_rat_abs_sub_lt_one_div_den_sq_of_irrational](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/infinite-rat-abs-sub-lt-one-div-den-sq-of-irrational--073a63bd2fd58d3b519e5a5f.md) | 202 | `result-track:073a63bd2fd58d3b519e5a5f1cff0214cd6a3f62f1d716bc57d763d8f72a6341` |
| 6 | `theorem` | [den_le_and_le_num_le_of_sub_lt_one_div_den_sq](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/den-le-and-le-num-le-of-sub-lt-one-div-den-sq--7ded744a9d3a559aa2b877ee.md) | 229 | `result-track:7ded744a9d3a559aa2b877eecaa9b41eec3d810c96c955a21ef9b26e4729afee` |
| 7 | `theorem` | [finite_rat_abs_sub_lt_one_div_den_sq](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/finite-rat-abs-sub-lt-one-div-den-sq--1a191109a26dda6398505951.md) | 258 | `result-track:1a191109a26dda63985059511868b4789d791a1590f76fa85ef5e7dfc40b23b7` |
| 8 | `theorem` | [Real.infinite_rat_abs_sub_lt_one_div_den_sq_iff_irrational](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/real-infinite-rat-abs-sub-lt-one-div-den-sq-iff-irrational--e22293776a0265103a22f603.md) | 282 | `result-track:e22293776a0265103a22f603e795e40f44659bbfedd5d5be565a18173d2616fc` |
| 9 | `def` | [convergent](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/convergent--8a6c076a319432005b8f7826.md) | 327 | `declaration-track:8a6c076a319432005b8f7826ec0c4705fb305de7ab2ee121df8f2c481c78a034` |
| 10 | `theorem` | [convergent_zero](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/convergent-zero--551e266da0346d779269794e.md) | 333 | `result-track:551e266da0346d779269794e36f6cd7145f5b63ee42737b720e35fbd9f05f4c9` |
| 11 | `theorem` | [convergent_succ](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/convergent-succ--e4367d18e9cb2d8e094cf1a5.md) | 338 | `result-track:e4367d18e9cb2d8e094cf1a5e37ff14f46161a30a0d511a091bc1a95ad394ed4` |
| 12 | `theorem` | [convergent_of_zero](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/convergent-of-zero--05a2a9ef5981d6f5d0e87923.md) | 344 | `result-track:05a2a9ef5981d6f5d0e879238d85c52130df60ef496650aae960b93fa0b41591` |
| 13 | `theorem` | [convergent_of_int](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/convergent-of-int--c5ffc217093a7b56580b9241.md) | 352 | `result-track:c5ffc217093a7b56580b9241aaf2e702b3f2d918fb9c0471f6895e9ba5549baf` |
| 14 | `def` | [ContfracLegendre.Ass](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/contfraclegendre-ass--3637cf14babed9c988db3159.md) | 373 | `declaration-track:3637cf14babed9c988db3159516ef6726475f55694e892bc346c9832f713c18d` |
| 15 | `theorem` | [aux₀](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/aux--0364c2a10ecd84aa870975f5.md) | 379 | `result-track:0364c2a10ecd84aa870975f51758655f1bdab41a14f45cb102834045c64c869f` |
| 16 | `theorem` | [aux₁](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/aux--3a7b944af3f983c39dbcda31.md) | 390 | `result-track:3a7b944af3f983c39dbcda3117fe25a4e01455813bb08d4f4060d1cd96d92fb9` |
| 17 | `theorem` | [aux₂](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/aux--2d2335695c4f55664953b535.md) | 408 | `result-track:2d2335695c4f55664953b5355f3849315d368769620b3bbc60a46dff378886fb` |
| 18 | `theorem` | [aux₃](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/aux--185ab6b2af7286b95dce28d5.md) | 443 | `result-track:185ab6b2af7286b95dce28d587f8a2fbe4d678acaa6e6824ded81130c4e301bf` |
| 19 | `theorem` | [invariant](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/invariant--53dbb30c85ddd94e3c0484c5.md) | 482 | `result-track:53dbb30c85ddd94e3c0484c508d62c9ef9570d5f8d1e2d24f64ae4843199aee1` |
| 20 | `theorem` | [exists_rat_eq_convergent'](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/exists-rat-eq-convergent--794ddd50c8a8d719d426bcc5.md) | 504 | `result-track:794ddd50c8a8d719d426bcc5d90881ae41587f328324c60cb3c418e173b5b477` |
| 21 | `theorem` | [exists_rat_eq_convergent](../../../../mathematics/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/declarations/exists-rat-eq-convergent--6dc7a7dffd493b3ff05ef832.md) | 550 | `result-track:6dc7a7dffd493b3ff05ef832d0800f85de1946d6b42897cbd0c09a3cc9d4f205` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
