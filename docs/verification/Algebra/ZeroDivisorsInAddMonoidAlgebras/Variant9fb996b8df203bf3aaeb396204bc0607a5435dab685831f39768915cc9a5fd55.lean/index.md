# Verification target: GRWTSK.Algebra.ZeroDivisorsInAddMonoidAlgebras.Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a354e7ca431a6ee372411fd93d0c9e9e70501db8",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/index.md) · [Full source](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a354e7ca431a6ee372411fd93d0c9e9e70501db8`.

Source path: `GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.UniqueProds` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Lex` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_divisors_of_periodic](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/zero-divisors-of-periodic--96685d2a33eaae81e5974319.md) | 69 | `result-track:96685d2a33eaae81e5974319efcbdb50eafd2196266ef4eb64ae410c55cb74ee` |
| 2 | `theorem` | [single_zero_one](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/single-zero-one--5d423ef825fd082ada5c0881.md) | 78 | `result-track:5d423ef825fd082ada5c08817ee4a61e62415ad3833fe67e70f3bf15f6a63e5b` |
| 3 | `theorem` | [zero_divisors_of_torsion](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/zero-divisors-of-torsion--ab10a8040eb684df6d4d45ae.md) | 91 | `result-track:ab10a8040eb684df6d4d45ae73dbb4bcf0f524cb7e41f8a7ee6bf0363989477e` |
| 4 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/example--3119bfedeedb6ed250531f23.md) | 119 | `declaration-track:3119bfedeedb6ed250531f23209c2c5c6105a353d3b2df808e78f1fe4982da1e` |
| 5 | `inductive` | [F](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/f--b15450c6d4256208e6969e56.md) | 125 | `declaration-track:b15450c6d4256208e6969e560aff62cc22d72b86ff3587ac9a63ce24ab10c08e` |
| 6 | `def` | [List.dropUntil](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/list-dropuntil--4e30c29c0e3d6eca5a0297d8.md) | 137 | `declaration-track:4e30c29c0e3d6eca5a0297d8735d1bb1c925a94fd69fc50152480276f0c5065a` |
| 7 | `elab` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/elab--a7a230e792afafe0658dc73c.md) | 153 | `declaration-track:a7a230e792afafe0658dc73cabebed69c076bd9b741eeb49e3d8ffc7b41d09d3` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/instance--de23364f5fcb5f7de4a7dbbb.md) | 167 | `declaration-track:de23364f5fcb5f7de4a7dbbbffb0b10b9c1e4ccc1c852bdbb263d3fc8441354a` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/instance--3f777d8fc251c56af3349f69.md) | 171 | `declaration-track:3f777d8fc251c56af3349f692fb437662a36d4a118b3ffe8efc27993d20ae190` |
| 10 | `macro` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/macro--04f5c5b2db372dd9bdfa18da.md) | 175 | `declaration-track:04f5c5b2db372dd9bdfa18daba604d70878d302bb549cd076f3a4925134b1d97` |
| 11 | `def` | [val](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/val--4e812319015e4d8b1ba0b354.md) | 179 | `declaration-track:4e812319015e4d8b1ba0b354d5c221149ce0e3f560f2f4e98281e463804f2505` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/instance--62b9373b1d15b3cbf3a79269.md) | 184 | `declaration-track:62b9373b1d15b3cbf3a7926910d68a3ebf863b94c03978c20c24e0bd05b8bda4` |
| 13 | `theorem` | [z01](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/z01--b50327e7a7c5b4b312c905dd.md) | 188 | `result-track:b50327e7a7c5b4b312c905dd0a6652aa9eae44afbcff772dbf1750e1309521bd` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/instance--884df872a151c67fff3d4068.md) | 192 | `declaration-track:884df872a151c67fff3d40685f7b54b282f75109c1fb6264ea6efe6277cea16a` |
| 15 | `instance` | [covariantClass_add_le](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/covariantclass-add-le--d19f036d834840b7b7e5e24c.md) | 201 | `declaration-track:d19f036d834840b7b7e5e24c3f1d00d2752ad5e966d827c49fda1fd040584765` |
| 16 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/example--2fb44200ccec7bf1921c9bf0.md) | 205 | `declaration-track:2fb44200ccec7bf1921c9bf07d96823dd6ef61e8b58f49bf634e32cc740e5753` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/example--d2b2bbb6a7a5dc13c7be5531.md) | 209 | `declaration-track:d2b2bbb6a7a5dc13c7be55318351e3ea0e04dddd43822d06a3e880a88c64dfcf` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/example--eb8b11dbdbedc9ac606d89c1.md) | 211 | `declaration-track:eb8b11dbdbedc9ac606d89c1fac783cf02bdf3be138ed29ec888b46e6ebb7a9e` |
| 19 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/example--4057e5699089c01b38f266ea.md) | 214 | `declaration-track:4057e5699089c01b38f266ea45f59d5f63237de7a55d60c49ce45a97ab25b6cd` |
| 20 | `theorem` | [f1](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/f1--17c37bc18758e6e09be39078.md) | 219 | `result-track:17c37bc18758e6e09be390785dbbe8957de8501a28c6200b2125381c6396a527` |
| 21 | `theorem` | [f011](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/f011--939e9d10b0513f148a7cdbc5.md) | 223 | `result-track:939e9d10b0513f148a7cdbc5c71891f6712b9f4ba8a3ea746d42e0f822b3d611` |
| 22 | `theorem` | [f010](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/f010--8655728f826c51a3d26a4f50.md) | 228 | `result-track:8655728f826c51a3d26a4f50d0c9cf55bc21c1d9996dafefd70c3b0539740eb8` |
| 23 | `theorem` | [f111](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/f111--a638ae85c8ea5f9de5d91243.md) | 233 | `result-track:a638ae85c8ea5f9de5d9124353faefeb2c0b267711554e316618309c8ed18aad` |
| 24 | `theorem` | [f110](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/f110--3594af80cddba38369ea0378.md) | 238 | `result-track:3594af80cddba38369ea0378d6e7d9b11ab7f4c171b4e3b5e02aa022052893ec` |
| 25 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/example--053138b54aeda476b0acdcf8.md) | 245 | `declaration-track:053138b54aeda476b0acdcf8159902c2f179f7ef8267666636f2b18bfef8fcb4` |
| 26 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/example--a94be71eac2c00c836d0080a.md) | 254 | `declaration-track:a94be71eac2c00c836d0080a51d3706c8a70f39f91937c71ef8ecf4d29eb29bc` |
| 27 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/example--79d6365e5a4b135e58593ace.md) | 257 | `declaration-track:79d6365e5a4b135e58593ace932d9453cd6f5ac89a5c205c1405922c29098604` |
| 28 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/example--3eaca9e558eb1c1013d8961e.md) | 264 | `declaration-track:3eaca9e558eb1c1013d8961e74c955b993aa3bff9e1ad2919040aee8c4b0de9f` |
| 29 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/declarations/example--f4b52f9dbe7282693b9f1160.md) | 271 | `declaration-track:f4b52f9dbe7282693b9f1160b18ea1b51a84448997e22326d2c033b7155ec95b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
