# Verification target: GRWTSK.Algebra.IsIntegrallyClosed.Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73355f0866bc13bb7e86dce47396c28e7aa443fc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73355f0866bc13bb7e86dce47396c28e7aa443fc`.

Source path: `GRWTSK/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdjoinRoot` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.GaussLemma` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIntegrallyClosed_eq_field_fractions](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/isintegrallyclosed-eq-field-fractions--e426fc0bf5391dfc3abbd926.md) | 58 | `result-track:e426fc0bf5391dfc3abbd926b8c8789720ad91d140d297c98ec4121c3a6f4935` |
| 2 | `theorem` | [isIntegrallyClosed_eq_field_fractions'](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/isintegrallyclosed-eq-field-fractions--3025a2bc84628215cf9c74d2.md) | 70 | `result-track:3025a2bc84628215cf9c74d225c44fa554c4ea271abeb0f6e54cf75d5a7bca39` |
| 3 | `theorem` | [isIntegrallyClosed_dvd](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/isintegrallyclosed-dvd--1a0723bb1e375ecb7214b212.md) | 87 | `result-track:1a0723bb1e375ecb7214b21265614e093fbe7c4902164537bfc33358a739cc17` |
| 4 | `theorem` | [isIntegrallyClosed_dvd_iff](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/isintegrallyclosed-dvd-iff--92b1db3ec90cd815091c03bd.md) | 105 | `result-track:92b1db3ec90cd815091c03bd08fd3b40f4eac06c20142e2bbf7e114e6e7b0e85` |
| 5 | `theorem` | [ker_eval](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/ker-eval--1d3f21a9a1e9c38b9645fbcf.md) | 113 | `result-track:1d3f21a9a1e9c38b9645fbcf471dcea7de44c7448f8e2ee755739024bb52ed33` |
| 6 | `theorem` | [IsIntegrallyClosed.degree_le_of_ne_zero](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/isintegrallyclosed-degree-le-of-ne-zero--45be48248a558edd5657ad63.md) | 124 | `result-track:45be48248a558edd5657ad632dad53a5daee0384338660379357897e8746a3ab` |
| 7 | `theorem` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.IsIntegrallyClosed.minpoly.unique](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant4dca2acd4d--a407da021481138a533c423e.md) | 135 | `result-track:a407da021481138a533c423edc8bb6cb45e1d5d734a45e96708ecd0af522096a` |
| 8 | `theorem` | [prime_of_isIntegrallyClosed](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/prime-of-isintegrallyclosed--d0ced8f094a049da627eb495.md) | 149 | `result-track:d0ced8f094a049da627eb495b5fa96904d5baef3088082bc721f6b501145c5a8` |
| 9 | `theorem` | [ToAdjoin.injective](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/toadjoin-injective--dd5d2a4b11c73b3256d193cd.md) | 165 | `result-track:dd5d2a4b11c73b3256d193cd3b830805b886db608ea6f9dccd95cde7a7fe1896` |
| 10 | `def` | [equivAdjoin](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/equivadjoin--593194a405ae2a736737eff1.md) | 178 | `declaration-track:593194a405ae2a736737eff1bb6f93a6b667701dac691ad7c0aed2b50bcc378b` |
| 11 | `def` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.Algebra.adjoin.powerBasis'](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant4dca2acd4d--049ac294b3aa24e8c991923f.md) | 185 | `declaration-track:049ac294b3aa24e8c991923fa8530b60bedb0b6dba9b8cace2fbf7f3169101a7` |
| 12 | `theorem` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.Algebra.adjoin.powerBasis'_dim](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant4dca2acd4d--9b9186bfa11c0e9dd2999fb3.md) | 191 | `result-track:9b9186bfa11c0e9dd2999fb365ff87c8261b9e94728294ec33f6af95aa5c2cfa` |
| 13 | `theorem` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.Algebra.adjoin.powerBasis'_gen](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant4dca2acd4d--6b8d23c994c72feecc00b882.md) | 196 | `result-track:6b8d23c994c72feecc00b882194a99f6c6d7b0fdb58bae99bfd9b332440ddab9` |
| 14 | `def` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.PowerBasis.ofGenMemAdjoin'](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant4dca2acd4d--29d3bbeb5707e64d772946ca.md) | 203 | `declaration-track:29d3bbeb5707e64d772946ca4db3c11ddc7337cff8bebf9fe4af91ae49655c14` |
| 15 | `theorem` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.PowerBasis.ofGenMemAdjoin'_dim](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant4dca2acd4d--2ffd5d2ca72a2b2779a3b8b9.md) | 211 | `result-track:2ffd5d2ca72a2b2779a3b8b9eb9bdd05a832823f6ab18afad4de1d2b7cbed3f4` |
| 16 | `theorem` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.PowerBasis.ofGenMemAdjoin'_gen](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/declarations/root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant4dca2acd4d--23b683e859394869b6026096.md) | 217 | `result-track:23b683e859394869b60260962f6f52e7f99a7b2d60b461cc210319156e39fae2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
