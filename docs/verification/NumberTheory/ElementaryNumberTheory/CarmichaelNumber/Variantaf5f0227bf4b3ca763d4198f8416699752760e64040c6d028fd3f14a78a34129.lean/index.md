# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.CarmichaelNumber.Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ae7760b938a24cdab0a3825a1de25842a74d86b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ae7760b938a24cdab0a3825a1de25842a74d86b`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean.json)

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
| 1 | `def` | [IsCarmichael](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael--ed9071cb5f1af9214e359d4e.md) | 47 | `declaration-track:ed9071cb5f1af9214e359d4eafe381b7bcb1cce66bced9effb565b433103b36c` |
| 2 | `theorem` | [IsCarmichael.two_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-two-lt--15cb2021a66fa95a1e88a655.md) | 52 | `result-track:15cb2021a66fa95a1e88a655cb0aa9f5817a7d29ca49494b77d496c2a7870ea6` |
| 3 | `theorem` | [IsCarmichael.neZero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-nezero--0a30a64c20091ec9b41a4aee.md) | 54 | `result-track:0a30a64c20091ec9b41a4aee44e41dd2dacaa1568b79c9a8cf5c0612fb58e71b` |
| 4 | `theorem` | [IsCarmichael.not_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-not-prime--8f12f4cd7db5e135603fd4f0.md) | 57 | `result-track:8f12f4cd7db5e135603fd4f0b769e96af8ddc4a0ddb79f590eb60121a96e1266` |
| 5 | `theorem` | [IsCarmichael.probablePrime_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-probableprime-of-coprime--c58e94aaedc4edf82f2de42e.md) | 59 | `result-track:c58e94aaedc4edf82f2de42e42ce2c8938d037e91db2fb943acbabec57bab2a1` |
| 6 | `theorem` | [Prime.not_isCarmichael](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/prime-not-iscarmichael--7a9bd0a61bcaa5d6d7d6a3d1.md) | 62 | `result-track:7a9bd0a61bcaa5d6d7d6a3d1b1d86f2f345f79c4232434ebec4d9b88c97601c8` |
| 7 | `theorem` | [not_isCarmichael_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/not-iscarmichael-zero--1be3ee0e7523f487c59e9539.md) | 67 | `result-track:1be3ee0e7523f487c59e95391f44d05e74cb6e0a0b1ccd931f3d397384bdd1f7` |
| 8 | `theorem` | [not_isCarmichael_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/not-iscarmichael-one--7e1e67a7d9ed53f9fdcdf130.md) | 72 | `result-track:7e1e67a7d9ed53f9fdcdf13059b17dcf672298a7716f6de1e7b5bf2f06bfa1df` |
| 9 | `lemma` | [IsCarmichael.zmod_unit_pow_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-zmod-unit-pow-sub-one--910b313d845e71cf6d6a77de.md) | 76 | `result-track:910b313d845e71cf6d6a77de897f7f7aed50da8223038f7484109855021dd0a3` |
| 10 | `theorem` | [IsCarmichael.odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-odd--1be620f0680bd7ab5eba59a2.md) | 86 | `result-track:1be620f0680bd7ab5eba59a26833fc367f19cc21802cea45fde93ef89930a2f6` |
| 11 | `theorem` | [IsCarmichael.squarefree](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-squarefree--b073f8b2a812f3c22f87c3b0.md) | 98 | `result-track:b073f8b2a812f3c22f87c3b04e951010bfac4fe4c5fc4fe3480a29f43e10a47a` |
| 12 | `theorem` | [IsCarmichael.carmichael_dvd_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-carmichael-dvd-sub-one--6048de94871f66a0379d448a.md) | 115 | `result-track:6048de94871f66a0379d448a69858169cd75c89dbf098c57d9f7be912844e736` |
| 13 | `theorem` | [IsCarmichael.prime_sub_one_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-prime-sub-one-dvd--7aad3ab6560963bffe38a58e.md) | 119 | `result-track:7aad3ab6560963bffe38a58eb20d4a927406f932d87cfdb9d2143e25a07be092` |
| 14 | `theorem` | [isCarmichael_iff_korselt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-iff-korselt--dbac3fffaf4fd79dea3d407d.md) | 128 | `result-track:dbac3fffaf4fd79dea3d407d83e90a428bcf582ae0838587efa1905b4e05ffbc` |
| 15 | `theorem` | [IsCarmichael.three_le_card_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-three-le-card-primefactors--1b6505661b4d78bc49784c27.md) | 143 | `result-track:1b6505661b4d78bc49784c277922057de0d1afc34e8194e41c6582768fa64f8e` |
| 16 | `theorem` | [isCarmichael_iff_korselt_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-iff-korselt-primefactorslist--806a13a2b4ccf03ceea1306b.md) | 160 | `result-track:806a13a2b4ccf03ceea1306b48ce03552df130859290d57218c50225d1be6f9b` |
| 17 | `theorem` | [isCarmichael_561](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-561--e88f0dc161f5ecfecfde7434.md) | 168 | `result-track:e88f0dc161f5ecfecfde7434061be8e33d6238c40eebf19eaa820af301c5007b` |
| 18 | `theorem` | [isCarmichael_1105](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/declarations/iscarmichael-1105--b28a6b0d7f3e1b188f3e93f7.md) | 173 | `result-track:b28a6b0d7f3e1b188f3e93f7a0dd18993e8ff48c65ff2d95dc15e6834e6ab616` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
