# Verification target: GRWTSK.Analysis.ErrorBounds.ComplexExpScaling

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f346671610e4c06e4cb5befd909e7b6ff792218",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/ComplexExpScaling.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f346671610e4c06e4cb5befd909e7b6ff792218`.

Source path: `GRWTSK/Analysis/ErrorBounds/ComplexExpScaling.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/ComplexExpScaling.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure`](../../../../mathematics/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squaredValue](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/squaredvalue--b2fdbee25c302ea0f4dd7946.md) | 28 | `declaration-track:b2fdbee25c302ea0f4dd7946fe4737bc27b3227fe5d29eeb74070a4c79cfce6f` |
| 2 | `def` | [squaringRadius](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/squaringradius--540a3445e25bb042288bfcfc.md) | 31 | `declaration-track:540a3445e25bb042288bfcfca95ad695b50139a4b9ba84ef4c48ab14ca6492da` |
| 3 | `def` | [roundedRadius](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/roundedradius--5e661f85336aad1035ea6536.md) | 36 | `declaration-track:5e661f85336aad1035ea65365531cb1b662c4ac0206e4d0fb3219c7afb08df26` |
| 4 | `def` | [scaledTaylor](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/scaledtaylor--3bc33891744c4c2006c34dfc.md) | 41 | `declaration-track:3bc33891744c4c2006c34dfc6b2afdac5b16b6d1653d912a5c2d7ed3e6eef404` |
| 5 | `def` | [scaledRadius](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/scaledradius--1c224c83e0586e34393f8806.md) | 45 | `declaration-track:1c224c83e0586e34393f8806897e457093d8e4021b59c65af182dab79e9e868b` |
| 6 | `theorem` | [squaredValue_zero](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/squaredvalue-zero--da182a7559776396a08cfc7b.md) | 48 | `result-track:da182a7559776396a08cfc7bd197a8aefa3198ade52af9b0d2f52ce37dd057af` |
| 7 | `theorem` | [squaredValue_succ](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/squaredvalue-succ--6251ad94378e033c2d8a5eb1.md) | 51 | `result-track:6251ad94378e033c2d8a5eb1002fa78171087e9d069f1f12d8db9263a17377d9` |
| 8 | `theorem` | [squaringRadius_nonneg](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/squaringradius-nonneg--5355ad0972814c3df0aa23e0.md) | 56 | `result-track:5355ad0972814c3df0aa23e0a1311a4c62ef5f67c59edb1b22493ee8794117c5` |
| 9 | `theorem` | [squaringRadius_eq](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/squaringradius-eq--f76cc46e1e8b901abd1668c9.md) | 63 | `result-track:f76cc46e1e8b901abd1668c910f0ea2a9bde26720f75c701cce589a968359189` |
| 10 | `theorem` | [roundedRadius_zero_rounding](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/roundedradius-zero-rounding--3cb5c0708464014b6451ae0e.md) | 71 | `result-track:3cb5c0708464014b6451ae0e9408df3c3239595afc75a3ffd1b79d8698fa80bf` |
| 11 | `theorem` | [square_error](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/square-error--c3e26b41aa3d50d1eb573519.md) | 78 | `result-track:c3e26b41aa3d50d1eb5735192edf428d4fba86d48feceecad99d5d24fce2219e` |
| 12 | `theorem` | [norm_squaredValue_le_one](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/norm-squaredvalue-le-one--73d7d10f08905ee3e1cec3dc.md) | 94 | `result-track:73d7d10f08905ee3e1cec3dc2b2ce06f060efbd775616f59ff9c57ba8a11564c` |
| 13 | `theorem` | [squaring_error](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/squaring-error--b33453e12e33c337109dbcb5.md) | 105 | `result-track:b33453e12e33c337109dbcb556e02aea24cee1997c152a4ddbdd9f6483f6d976` |
| 14 | `theorem` | [squaring_trace_error](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/squaring-trace-error--7c6e0dfbb98dc34cb9bea31b.md) | 116 | `result-track:7c6e0dfbb98dc34cb9bea31b8a1843a331d7bca37ebd2cc88b4074dd1d3d3118` |
| 15 | `theorem` | [norm_exp_le_one](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/norm-exp-le-one--1043d842e8c67a56dbd4bd7f.md) | 135 | `result-track:1043d842e8c67a56dbd4bd7f92f542aa4276d9a17e292842aaf9ca4e1a3dc6fe` |
| 16 | `theorem` | [scaled_re_nonpos](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/scaled-re-nonpos--0acf9c9e76be60d136000115.md) | 139 | `result-track:0acf9c9e76be60d136000115d92ddefa83774f96960e2f17326bad6a88c01bc2` |
| 17 | `theorem` | [exponential_reconstruct](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/exponential-reconstruct--c8c182036b2c95157e09a6f7.md) | 145 | `result-track:c8c182036b2c95157e09a6f7db2ae551577da151637f92224fb1c821ce268d1c` |
| 18 | `theorem` | [scaled_seed_error](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/scaled-seed-error--407f2abd2ecdfd3ab4bc7432.md) | 155 | `result-track:407f2abd2ecdfd3ab4bc7432b3692f7252e53ae6d54f6a873aed6f9663e62120` |
| 19 | `theorem` | [scaled_exp_error](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/scaled-exp-error--2b97333d8121e775cf3c837b.md) | 164 | `result-track:2b97333d8121e775cf3c837b49d43eb9bd30583d2cf24f633e04a02951a4dd4c` |
| 20 | `theorem` | [scaled_exp_trace_error](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/scaled-exp-trace-error--193dfdf4d29a80eb82aa4b00.md) | 173 | `result-track:193dfdf4d29a80eb82aa4b00b8d5aed17d05b10b6850b721452038372b7a1142` |
| 21 | `theorem` | [one_add_pow_mul_remaining_le_one](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/one-add-pow-mul-remaining-le-one--acaad4fdc440dc6a2ceb85d8.md) | 191 | `result-track:acaad4fdc440dc6a2ceb85d8cb75440a21eb838220da31f34e79cd4ed956c17f` |
| 22 | `theorem` | [squaringRadius_le_fraction](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/squaringradius-le-fraction--ac3910d18b0ae3d7d6419acb.md) | 203 | `result-track:ac3910d18b0ae3d7d6419acbb6e4b38cfddc10a2f51bd7f326d086e3b6a3617d` |
| 23 | `theorem` | [squaringRadius_le_twice](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/squaringradius-le-twice--7b68a108c3f7d3c5eac2c37a.md) | 211 | `result-track:7b68a108c3f7d3c5eac2c37a349ec6d8cf3632cb932b305d16cfb0be7024ebd1` |
| 24 | `theorem` | [scaled_exp_error_le_twice](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/scaled-exp-error-le-twice--5b6788a8594ea949c5ebd68d.md) | 220 | `result-track:5b6788a8594ea949c5ebd68d19476d070ba4cbb38915aa91c97ebcfde7497cbb` |
| 25 | `theorem` | [quadratic_radius_control](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/quadratic-radius-control--c1ddfdf939f574595ad1d64e.md) | 230 | `result-track:c1ddfdf939f574595ad1d64e8f487f3e85a9cca905e7b74288571dd93f3effaf` |
| 26 | `theorem` | [outside_unit_disk_control](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/outside-unit-disk-control--550fdd8c6637052642f0ae6a.md) | 235 | `result-track:550fdd8c6637052642f0ae6aadd08c9bd71425a9125bb1908d9dd260aa1b27ec` |
| 27 | `theorem` | [early_rounding_control](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/early-rounding-control--b61d1da5ab1e27a1faa606e3.md) | 239 | `result-track:b61d1da5ab1e27a1faa606e3916ac3d40ca7b6ca5338974249064bdcd198430b` |
| 28 | `theorem` | [empty_seed_control](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/empty-seed-control--e0c7a5c9abec001c7e7e1d4f.md) | 244 | `result-track:e0c7a5c9abec001c7e7e1d4f10f14f0699d5ec3f6cca7d4bb8d9cb45dca1d0b9` |
| 29 | `theorem` | [zero_exponent_exact](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/declarations/zero-exponent-exact--75b7eff2341e52cb2842cf25.md) | 249 | `result-track:75b7eff2341e52cb2842cf25737776f1755a8bd705c320dc3582402d506892da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
