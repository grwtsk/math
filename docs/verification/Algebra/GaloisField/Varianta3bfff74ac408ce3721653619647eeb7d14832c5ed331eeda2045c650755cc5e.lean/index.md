# Verification target: GRWTSK.Algebra.GaloisField.Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23bf9d35893133026a646aa2677f4f87dd7b1a29",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23bf9d35893133026a646aa2677f4f87dd7b1a29`.

Source path: `GRWTSK/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.ZMod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [FiniteField.isSplittingField_sub](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/finitefield-issplittingfield-sub--5a33818ea440268896297c97.md) | 38 | `declaration-track:5a33818ea440268896297c979e49e556074284616129ba8096f2a8b639864169` |
| 2 | `theorem` | [galois_poly_separable](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/galois-poly-separable--547843c6f1921ca86cbe11c5.md) | 51 | `result-track:547843c6f1921ca86cbe11c515e6c86bf881eb5a153b99f9031a20b00df0da2a` |
| 3 | `def` | [GaloisField](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/galoisfield--6ef130b505f298dd620357d8.md) | 63 | `declaration-track:6ef130b505f298dd620357d87bc8370b301a4b96f8638eae9c0c6214c3d52c29` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/instance--550d203b433f265549beac54.md) | 67 | `declaration-track:550d203b433f265549beac5483603d7896e0416c61e717ee5e24b5230500996d` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/instance--af03d6805210ffcf5efa484b.md) | 70 | `declaration-track:af03d6805210ffcf5efa484b027db602871e891f5b9db7e9c43fd5215111b982` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/instance--1f68dda7eb91a38ef30a68fc.md) | 76 | `declaration-track:1f68dda7eb91a38ef30a68fc7c5b47b0286e84e7aa78fa4013d210084b09dd93` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/instance--e69120522ec7ed0b16a6c51d.md) | 78 | `declaration-track:e69120522ec7ed0b16a6c51dc1bf214008e5e4c6b2df93521461dfde5c875262` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/instance--d7507e718c528fbfb542cad6.md) | 81 | `declaration-track:d7507e718c528fbfb542cad6ec808c5f2cab5d5e718c1484321e501d312de542` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/instance--e7072c50641e705f586b7ad3.md) | 84 | `declaration-track:e7072c50641e705f586b7ad3d07770c20f1f8e3417bff04ecea159dadaa6dd82` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/instance--ab8e20942a8010f5611f127a.md) | 87 | `declaration-track:ab8e20942a8010f5611f127a88a6c7b26a979ed891d49e0c4ba1e628856d6d13` |
| 11 | `theorem` | [finrank](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/finrank--15570496808f90e5bbf01f85.md) | 90 | `result-track:15570496808f90e5bbf01f85d5741a9aee00af1c6954faed352d22a56f63678d` |
| 12 | `theorem` | [card](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/card--cd8a213ae8c98b4e9a9ee985.md) | 140 | `result-track:cd8a213ae8c98b4e9a9ee985490add0548153fa16592888ed09cebdb79d8b361` |
| 13 | `theorem` | [splits_zmod_X_pow_sub_X](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/splits-zmod-x-pow-sub-x--7339ac17875dd41064d3cbdc.md) | 146 | `result-track:7339ac17875dd41064d3cbdcf6664e96c72ba70b3623c97b65b6e27dcbf8d2b1` |
| 14 | `def` | [equivZmodP](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/equivzmodp--5c449dc4b611c99c60be5a11.md) | 157 | `declaration-track:5c449dc4b611c99c60be5a11faf383f52d14631c2e93478a288fae76d9f56eff` |
| 15 | `theorem` | [_root_.FiniteField.splits_X_pow_card_sub_X](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/root-finitefield-splits-x-pow-card-sub-x--9ab394540f21b6381aa26cb1.md) | 166 | `result-track:9ab394540f21b6381aa26cb181253ff28606b87f55ce65d7ee917687a879a346` |
| 16 | `theorem` | [_root_.FiniteField.isSplittingField_of_card_eq](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/root-finitefield-issplittingfield-of-card-eq--caf5f184175c713bedee4e42.md) | 173 | `result-track:caf5f184175c713bedee4e421e88ceb1415b0da46a76cbd483961a579fb04ce4` |
| 17 | `def` | [algEquivGaloisFieldOfFintype](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/algequivgaloisfieldoffintype--0897a1aff5036cc861a1de76.md) | 181 | `declaration-track:0897a1aff5036cc861a1de76d898bf9171bfd4b7f38230e3e8e5ca2003a9fa0a` |
| 18 | `theorem` | [_root_.FiniteField.splits_X_pow_nat_card_sub_X](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/root-finitefield-splits-x-pow-nat-card-sub-x--7af6b5caf62628d04c7f2a54.md) | 191 | `result-track:7af6b5caf62628d04c7f2a54f03f1216bd1bd3a2f2ca4d02d9dcd380062c8713` |
| 19 | `theorem` | [_root_.FiniteField.isSplittingField_of_nat_card_eq](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/root-finitefield-issplittingfield-of-nat-card-eq--2363318a4c87086c758c07d1.md) | 197 | `result-track:2363318a4c87086c758c07d1e0289a5ea0d3ab513419e6b81fd45c3f45ebdbad` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/instance--dbbb182c9680fec0508aa6b6.md) | 204 | `declaration-track:dbbb182c9680fec0508aa6b6a666f6dbc15cc630d46b81cb691c6b48231286c8` |
| 21 | `def` | [algEquivGaloisField](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/algequivgaloisfield--e009b96a03d0977a5b6aecd4.md) | 216 | `declaration-track:e009b96a03d0977a5b6aecd45edfbdd69b5eb78344a365bb173824b0b9cf5818` |
| 22 | `theorem` | [algebraMap_norm_eq_pow](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/algebramap-norm-eq-pow--dbcc501d1ed40761338456c3.md) | 232 | `result-track:dbcc501d1ed40761338456c31b437f1aff34ea01d7466d93e62252a7468e7754` |
| 23 | `theorem` | [unitsMap_norm_surjective](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/unitsmap-norm-surjective--af406ef87c57beb989a3c8d6.md) | 244 | `result-track:af406ef87c57beb989a3c8d6948324bfdce76aa743a76a8e7f0201baf3a14362` |
| 24 | `theorem` | [norm_surjective](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/norm-surjective--67ef746f5513ef05500ce4c7.md) | 256 | `result-track:67ef746f5513ef05500ce4c74199e8a9540308ac7fab2445805157d5bedb1696` |
| 25 | `def` | [algEquivOfCardEq](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/algequivofcardeq--4c827b97faecec51ed929927.md) | 268 | `declaration-track:4c827b97faecec51ed92992788bde7dfafc5f59360d80e9a55bc8ce1dff9418e` |
| 26 | `def` | [ringEquivOfCardEq](../../../../mathematics/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/declarations/ringequivofcardeq--53548b68451d05e423c8c1b0.md) | 282 | `declaration-track:53548b68451d05e423c8c1b0aab8df41c63975f73531696e5abae2b5a9eb937e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
