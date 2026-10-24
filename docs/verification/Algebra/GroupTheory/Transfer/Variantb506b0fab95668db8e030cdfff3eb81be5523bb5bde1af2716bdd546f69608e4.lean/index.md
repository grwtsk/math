# Verification target: GRWTSK.Algebra.GroupTheory.Transfer.Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "376081fd0cc9b731857052a8de498c3a46141bbf",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `376081fd0cc9b731857052a8de498c3a46141bbf`.

Source path: `GRWTSK/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Complement` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Sylow` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diff](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/diff--93419fdbeed75123124158e5.md) | 46 | `declaration-track:93419fdbeed75123124158e584cf25a1d814151b189ca5f9dfc875cb1288742a` |
| 2 | `theorem` | [diff_mul_diff](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/diff-mul-diff--a12eded72975fbb811ceca2d.md) | 58 | `result-track:a12eded72975fbb811ceca2da622a9a70242ba5d335e4c581bb524951da8bbb5` |
| 3 | `theorem` | [diff_self](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/diff-self--2495296a44b99b756973bb31.md) | 68 | `result-track:2495296a44b99b756973bb31715de7c0d950f6b471b5e445e72d753b591684d7` |
| 4 | `theorem` | [diff_inv](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/diff-inv--e0749c06ec63de3285264ffd.md) | 74 | `result-track:e0749c06ec63de3285264ffd886d62d4ccab1c5ebccbbc80775a7f2794458034` |
| 5 | `theorem` | [smul_diff_smul](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/smul-diff-smul--8c1e6db6a4b4c32fbbe600e8.md) | 80 | `result-track:8c1e6db6a4b4c32fbbe600e8753afaefc70117abe7bb86b44337d2f356790ac3` |
| 6 | `def` | [transfer](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/transfer--59e422aeae5913bbdfb5dddf.md) | 105 | `declaration-track:59e422aeae5913bbdfb5dddf9fcdb46ffdc3f47b3386f71efa4069e8bfc3371b` |
| 7 | `theorem` | [transfer_def](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/transfer-def--dd72a120f3cf26abca76c06b.md) | 116 | `result-track:dd72a120f3cf26abca76c06b3fbd43de2d3b6dcb835b32eacb524ec5939d55a4` |
| 8 | `theorem` | [transfer_eq_prod_quotient_orbitRel_zpowers_quot](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/transfer-eq-prod-quotient-orbitrel-zpowers-quot--d5cf5a424a97744ac973652a.md) | 122 | `result-track:d5cf5a424a97744ac973652a277e3c5ff2562f47148b4005a60dea4d7e8bbe74` |
| 9 | `theorem` | [transfer_eq_pow_aux](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/transfer-eq-pow-aux--9681fe1c4e12b0bfd5264633.md) | 147 | `result-track:9681fe1c4e12b0bfd52646335bef76fe0e1d7105770a908e9945da3c2a861c30` |
| 10 | `theorem` | [transfer_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/transfer-eq-pow--ac77b768a0cc17f8ea7f2811.md) | 169 | `result-track:ac77b768a0cc17f8ea7f28110c21e4aeac2f8389b5126994e9e0c39468f20339` |
| 11 | `theorem` | [transfer_center_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/transfer-center-eq-pow--a39903e405de13cb7245237a.md) | 188 | `result-track:a39903e405de13cb7245237a7d0d815fa231e9e0b75b85104f901681e15887ec` |
| 12 | `def` | [transferCenterPow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/transfercenterpow--bb16793a07acd782bcd0bef9.md) | 196 | `declaration-track:bb16793a07acd782bcd0bef966419c8a04b10c7a3d4f2ba6fd5090db73a25386` |
| 13 | `theorem` | [transferCenterPow_apply](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/transfercenterpow-apply--723f99b7fb9638d910dc9e48.md) | 205 | `result-track:723f99b7fb9638d910dc9e48aeff6bdc9afd488c1efbb946a7ed325fd16ce9b2` |
| 14 | `def` | [transferSylow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/transfersylow--36d8cabecbffeafdc8110719.md) | 215 | `declaration-track:36d8cabecbffeafdc8110719bd575a3f73a6b015dc4796f779d39d6ac4cc7336` |
| 15 | `theorem` | [transferSylow_eq_pow_aux](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/transfersylow-eq-pow-aux--93721f1b74cf76603bde8796.md) | 225 | `result-track:93721f1b74cf76603bde879691c44d02954edbd4348e9e3289acc2d856cf70ca` |
| 16 | `theorem` | [transferSylow_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/transfersylow-eq-pow--4990d9fb8fb6640e30571702.md) | 236 | `result-track:4990d9fb8fb6640e305717028464f44e613e74fe025ff0b8967a6172ca204b60` |
| 17 | `theorem` | [transferSylow_restrict_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/transfersylow-restrict-eq-pow--ee0327067611fb8b7bc15c4f.md) | 244 | `result-track:ee0327067611fb8b7bc15c4fde9536481de0280e29bfa03f41e79efdaf5cfe3a` |
| 18 | `theorem` | [ker_transferSylow_isComplement'](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/ker-transfersylow-iscomplement--29dae6ab8bd8064655340f16.md) | 250 | `result-track:29dae6ab8bd8064655340f16b7b6b3ba93e9703388ee1b9530267831b7d18344` |
| 19 | `theorem` | [not_dvd_card_ker_transferSylow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/not-dvd-card-ker-transfersylow--c0abb36e5dd2b3b2710a2241.md) | 265 | `result-track:c0abb36e5dd2b3b2710a22417df5d50ee4d192a7a0f4c7c9b0a93bbdab578b37` |
| 20 | `theorem` | [ker_transferSylow_disjoint](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/declarations/ker-transfersylow-disjoint--119c8c131a449afb74cfc7d5.md) | 270 | `result-track:119c8c131a449afb74cfc7d58fbc6a2cfcbac3f399b81bc93557b385c1f453a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
