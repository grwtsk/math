# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Minpoly.Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6ad26402bf698df4afe96a2ae319a388fac27a5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6ad26402bf698df4afe96a2ae319a388fac27a5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.IntegrallyClosed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.IsIntegrallyClosed` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Nat` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/declarations/isintegral--793e99f7c41a6d6069e170ef.md) | 40 | `result-track:793e99f7c41a6d6069e170ef42b4f9c045e830adbd30b80f3eb823cfce6e34fa` |
| 2 | `theorem` | [minpoly_dvd_x_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/declarations/minpoly-dvd-x-pow-sub-one--692653d0348f22c69eaf774c.md) | 52 | `result-track:692653d0348f22c69eaf774c196d7ac65a2427446a1b0a26cf3f22b3ec01bb28` |
| 3 | `theorem` | [separable_minpoly_mod](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/declarations/separable-minpoly-mod--ffa281505e5d673b1af30e02.md) | 60 | `result-track:ffa281505e5d673b1af30e0216c234065a54caa5af681cc073a7cd7f0707b27a` |
| 4 | `theorem` | [squarefree_minpoly_mod](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/declarations/squarefree-minpoly-mod--f4ea8be54266a76416bebe53.md) | 71 | `result-track:f4ea8be54266a76416bebe53c0bced21677983e2556aaa762124b31e50578c52` |
| 5 | `theorem` | [minpoly_dvd_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/declarations/minpoly-dvd-expand--39239826ab0b2d4394246508.md) | 77 | `result-track:39239826ab0b2d4394246508cb81949c079dcbf3876ed8b15b57547848bf3072` |
| 6 | `theorem` | [minpoly_dvd_pow_mod](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/declarations/minpoly-dvd-pow-mod--a850de8abd9bfed86102145c.md) | 89 | `result-track:a850de8abd9bfed86102145cfce15e5f19a34c8e036279186a406791ecc69b4b` |
| 7 | `theorem` | [minpoly_dvd_mod_p](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/declarations/minpoly-dvd-mod-p--483bc062510c74449bc38fc6.md) | 102 | `result-track:483bc062510c74449bc38fc695126304967de353bd143113be6415219679ded0` |
| 8 | `theorem` | [minpoly_eq_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/declarations/minpoly-eq-pow--cb5fe20f9cab8ac8ffc3064d.md) | 110 | `result-track:cb5fe20f9cab8ac8ffc3064df177e52c804b05844dbaa74997d2404dc94b3413` |
| 9 | `theorem` | [minpoly_eq_pow_coprime](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/declarations/minpoly-eq-pow-coprime--11106a0354cf6b3844f652e4.md) | 164 | `result-track:11106a0354cf6b3844f652e4eebeafaac600f0c2bd3a70be2e1f4b7a452b3466` |
| 10 | `theorem` | [pow_isRoot_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/declarations/pow-isroot-minpoly--c1f7235db8d21b3dd2b1451d.md) | 187 | `result-track:c1f7235db8d21b3dd2b1451d9c7e9aeb13a78c2483a77c05a0d93767e4d761cc` |
| 11 | `theorem` | [is_roots_of_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/declarations/is-roots-of-minpoly--ed5680de3d7ce19187cf5f4e.md) | 194 | `result-track:ed5680de3d7ce19187cf5f4ec9aba6bf9b9facc378995a9e0c607ff89b82d640` |
| 12 | `theorem` | [totient_le_degree_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/declarations/totient-le-degree-minpoly--f2b1dda467f714ab991a655f.md) | 207 | `result-track:f2b1dda467f714ab991a655fd97a933aa0835fea2d54da888dd73fe5e81983db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
