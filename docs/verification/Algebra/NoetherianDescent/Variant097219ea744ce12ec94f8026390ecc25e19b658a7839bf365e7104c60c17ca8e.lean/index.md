# Verification target: GRWTSK.Algebra.NoetherianDescent.Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2755b2b19d3f590bf08e0342c37f71ba9a7974d9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/index.md) · [Full source](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2755b2b19d3f590bf08e0342c37f71ba9a7974d9`.

Source path: `GRWTSK/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DescentAux](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/descentaux--006e08b78def633eca80a9eb.md) | 42 | `declaration-track:006e08b78def633eca80a9eb41618f5754cc2d80a3582742857d8d3fec8da9bb` |
| 2 | `def` | [subalgebra](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/subalgebra--acd09ad8d8f62dbaf5e65416.md) | 64 | `declaration-track:acd09ad8d8f62dbaf5e654165ca01aa46d21a0d535f80b161e2a214578c5dfc1` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/instance--e58a5d14ae50a20b694fbba1.md) | 73 | `declaration-track:e58a5d14ae50a20b694fbba165353474ef7a6b05d8a32edc2ee89a5c2e775d4f` |
| 4 | `instance` | [algebra₀](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/algebra--3337a2ad3195152dcebb9188.md) | 78 | `declaration-track:3337a2ad3195152dcebb918846d9681800f6ee419011489db05fe2deb7eb3702` |
| 5 | `instance` | [algebra₁](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/algebra--3178701bf84162f981d1ba9a.md) | 83 | `declaration-track:3178701bf84162f981d1ba9af322675817e193d6843d8be804f96ada0f9bab18` |
| 6 | `instance` | [algebra₂](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/algebra--bdd495a90c4c84f12e8cb33c.md) | 88 | `declaration-track:bdd495a90c4c84f12e8cb33c992a005d86eef2f32c54a49579a98f1fc5910965` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/instance--83ab33ff5c045f47dfcd182f.md) | 91 | `declaration-track:83ab33ff5c045f47dfcd182f193a556bdf88e70e1dca7c5e26e3b623c832b698` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/instance--e71343c8691a95d829080d3a.md) | 94 | `declaration-track:e71343c8691a95d829080d3a8e0536b52766b505c9cb3aa030242d0b76c297e1` |
| 9 | `lemma` | [fg_subalgebra](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/fg-subalgebra--5f14398b35e5287f4a4d4493.md) | 96 | `result-track:5f14398b35e5287f4a4d44932e0859a75a18dc619f308af15f09adc6ebfceb20` |
| 10 | `instance` | [hasCoeffs](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/hascoeffs--b0be49913f1d6c9accee7073.md) | 107 | `declaration-track:b0be49913f1d6c9accee7073c740759d4e49899b94f024535d587f04c37b6c8b` |
| 11 | `lemma` | [coeffs_h_subset](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/coeffs-h-subset--de3c51b3220e7a181e0f50cb.md) | 123 | `result-track:de3c51b3220e7a181e0f50cb86e604a8befb24b75be2e2a687c7ec9d01689fd2` |
| 12 | `lemma` | [coeffs_p_subset](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/coeffs-p-subset--1a5076e8f7dbe3f023b7181d.md) | 135 | `result-track:1a5076e8f7dbe3f023b7181d18837c0d4397e48b011eedf7147175ae4b545dcb` |
| 13 | `lemma` | [coeffs_q_subset](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/coeffs-q-subset--a0975941c7135e79f7afc567.md) | 151 | `result-track:a0975941c7135e79f7afc5677fb2231909cf6028cd30a60c1aa84c76be80a7f5` |
| 14 | `lemma` | [exists_kerSquareLift_comp_eq_id](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/exists-kersquarelift-comp-eq-id--3270da6018bf4e8c47158bac.md) | 167 | `result-track:3270da6018bf4e8c47158bac7da00d59782060233b9e7bf13c3039deb6dabe49` |
| 15 | `theorem` | [exists_subalgebra_fg](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/exists-subalgebra-fg--ee2c81b0b76489d0c113b40d.md) | 222 | `result-track:ee2c81b0b76489d0c113b40d4674ebed2de3a1e9cf302c6fbb0cbb62002d8a6a` |
| 16 | `theorem` | [exists_finiteType](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/exists-finitetype--a47a9bac18352d1cbdba85a6.md) | 269 | `result-track:a47a9bac18352d1cbdba85a63c2717cfe201ad2c34931784a9d4df24b5325b2c` |
| 17 | `theorem` | [_root_.GRWTSK.Algebra.DescentAux.Variantadb740c2a8de4d5284e0c523d18a5e78a29bcea8442f974998e0e5d8f4c5dec9.Algebra.IsStandardSmoothOfRelativeDimension.exists_subalgebra_fg](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/root-grwtsk-algebra-descentaux-variantadb740c2a8de4d5284e0c523d18a5e78a2--e5d8419f4c45b8f388d723ad.md) | 278 | `result-track:e5d8419f4c45b8f388d723ad08dc2b223671eeaf6454b5bede00a8b34b1c8dd8` |
| 18 | `theorem` | [_root_.GRWTSK.Algebra.DescentAux.Variantadb740c2a8de4d5284e0c523d18a5e78a29bcea8442f974998e0e5d8f4c5dec9.Algebra.Etale.exists_subalgebra_fg](../../../../mathematics/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean/declarations/root-grwtsk-algebra-descentaux-variantadb740c2a8de4d5284e0c523d18a5e78a2--01321de8f975f4d59a36b3d1.md) | 295 | `result-track:01321de8f975f4d59a36b3d132fcd342d637d23031447233a937de923dd15201` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
