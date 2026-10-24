# Verification target: GRWTSK.Algebra.LinearAlgebra.SingularValues.Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8865473821c20caa662baf8dc97dce47c3929001",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8865473821c20caa662baf8dc97dce47c3929001`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean.json)

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
| 1 | `def` | [singularValues](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/singularvalues--6fcf779172be92cd493c452c.md) | 102 | `declaration-track:6fcf779172be92cd493c452c8f98049c86c7be02a05f3c3dc05739344d31da7b` |
| 2 | `theorem` | [singularValues_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/singularvalues-nonneg--a22e7030d6e770a6d4fa7f78.md) | 108 | `result-track:a22e7030d6e770a6d4fa7f7841ba1bcc65bac241de1f0f754d137962c32e7a92` |
| 3 | `theorem` | [singularValues_pos_iff_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/singularvalues-pos-iff-ne-zero--93762f64a64966a8d4027ff4.md) | 112 | `result-track:93762f64a64966a8d4027ff4a4bf62357bf34ef9ffaed47d53ebc4ed613e087f` |
| 4 | `theorem` | [singularValues_fin](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/singularvalues-fin--eb8783df5404e53ebb85dc73.md) | 123 | `result-track:eb8783df5404e53ebb85dc738fbbbb5bc8a7ad420fefc1b5398bbde87a19409c` |
| 5 | `theorem` | [singularValues_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/singularvalues-of-lt--a0f86ce640f47b6c33c5df94.md) | 128 | `result-track:a0f86ce640f47b6c33c5df9440b065d74e29976ba34d51c59d83ec0129de2835` |
| 6 | `theorem` | [singularValues_of_finrank_le](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/singularvalues-of-finrank-le--6e9f2aac2c4e7af9f5530912.md) | 132 | `result-track:6e9f2aac2c4e7af9f553091217504440d9bd43a30388ab7974a2d40c54ac172c` |
| 7 | `theorem` | [sq_singularValues_fin](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/sq-singularvalues-fin--fed6fdfc2ab52d88e8717c5a.md) | 136 | `result-track:fed6fdfc2ab52d88e8717c5a632904ac757757dc7e063ee8b846eb295830e1fc` |
| 8 | `theorem` | [sq_singularValues_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/sq-singularvalues-of-lt--f8d3eb46dd09ae6f6e11fd61.md) | 140 | `result-track:f8d3eb46dd09ae6f6e11fd612470feb93e22b6824f0e6634948db7c063f42d13` |
| 9 | `theorem` | [hasEigenvalue_adjoint_comp_self_sq_singularValues](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/haseigenvalue-adjoint-comp-self-sq-singularvalues--c54f9fae14ce33cd3b25c0f2.md) | 144 | `result-track:c54f9fae14ce33cd3b25c0f28c483e0f8ae6b4e3baff80978906ebf0218a149c` |
| 10 | `theorem` | [singularValues_antitone](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/singularvalues-antitone--91cc9fceb78e0497c512b13b.md) | 149 | `result-track:91cc9fceb78e0497c512b13b980468835b118a088596e2a687a0f4e06ecc4419` |
| 11 | `theorem` | [injective_iff_forall_lt_finrank_singularValues_pos](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/injective-iff-forall-lt-finrank-singularvalues-pos--275211f40c9d1ee72e163994.md) | 163 | `result-track:275211f40c9d1ee72e163994f9ea5856abddc512b688ff1fed7c25b05e16cfc9` |
| 12 | `theorem` | [card_support_singularValues](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/card-support-singularvalues--12e0875d727861640812eccc.md) | 181 | `result-track:12e0875d727861640812eccceac1eca23cc2fdfb421f17db7ba1a7ae010f397b` |
| 13 | `theorem` | [isLowerSet_support_singularValues](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/islowerset-support-singularvalues--e785e8157207c91a23557c75.md) | 192 | `result-track:e785e8157207c91a23557c75ae1d9f2863a135b08052492563dad1128bf2796e` |
| 14 | `theorem` | [support_singularValues](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/support-singularvalues--f7f932299daa630255e73ffc.md) | 198 | `result-track:f7f932299daa630255e73ffc0ad3ac0f678fde810ae15ee320e434318a1e5a60` |
| 15 | `theorem` | [singularValues_pos_iff_lt_finrank_range](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/singularvalues-pos-iff-lt-finrank-range--3d1c8ec7785781b4597e0723.md) | 204 | `result-track:3d1c8ec7785781b4597e0723b0b361fad536006aa9a4545560fd774c7752a9be` |
| 16 | `theorem` | [singularValues_finrank_range_self](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/singularvalues-finrank-range-self--0393235905ba7c9dae31a9c2.md) | 209 | `result-track:0393235905ba7c9dae31a9c2e1f00902e627a4eebf236d1d818b470de6cd55ba` |
| 17 | `theorem` | [singularValues_eq_zero_iff_le_finrank_range](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/singularvalues-eq-zero-iff-le-finrank-range--26d686596104d1f2ea85189b.md) | 213 | `result-track:26d686596104d1f2ea85189b5613a7bcfed2f429bc33a0cb5301f77bbc3246e7` |
| 18 | `theorem` | [singularValues_zero](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/singularvalues-zero--55b2c30f84ba7e4126959944.md) | 218 | `result-track:55b2c30f84ba7e4126959944b3e27fc097766aa0a35b3ee1308b385519013f5f` |
| 19 | `theorem` | [singularValues_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/declarations/singularvalues-eq-zero-iff--7f2dee28aaae9171d2bf64bc.md) | 224 | `result-track:7f2dee28aaae9171d2bf64bc8931150f4632ed79d4edcd99372c905f5253335e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
