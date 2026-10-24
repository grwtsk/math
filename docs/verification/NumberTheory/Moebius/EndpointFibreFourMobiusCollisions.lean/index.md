# Verification target: GRWTSK.NumberTheory.Moebius.EndpointFibreFourMobiusCollisions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51aac37245b50e6bcb14dfc10b9d35f026a6b7da",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51aac37245b50e6bcb14dfc10b9d35f026a6b7da`.

Source path: `GRWTSK/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.SignedAbelEndpointFibreQuadraticEnergy`](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensEndpointFourMobiusTerm](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfourmobiusterm--17bacdde71df135a266f2f3b.md) | 47 | `declaration-track:17bacdde71df135a266f2f3bd5668d98777c6d25ef79717aa2377f8441f13893` |
| 2 | `theorem` | [mertensTwoPointPrefix_sq_eq_fourMobiusSum](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertenstwopointprefix-sq-eq-fourmobiussum--22f073fb4ae67629b423da01.md) | 56 | `result-track:22f073fb4ae67629b423da0133da0a2c51b428062dd2a82fe4986541b9bd9ea2` |
| 3 | `inductive` | [MertensEndpointFourMobiusStratum](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfourmobiusstratum--783553dcbe78d8046ef8788c.md) | 73 | `declaration-track:783553dcbe78d8046ef8788c65c3006b14d3ff8add51be7b0d4d193a05bb1284` |
| 4 | `def` | [mertensEndpointFourMobiusStratum](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfourmobiusstratum--ac49da1397420dfbb50ac0ca.md) | 82 | `declaration-track:ac49da1397420dfbb50ac0ca1b0d4d57d17763e9d28aac03bb451d468ff20084` |
| 5 | `def` | [mertensEndpointPairSet](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointpairset--449032b4f2d166e0c72107ef.md) | 95 | `declaration-track:449032b4f2d166e0c72107ef7a5a0f6c34bfafe483493c8e3f9766ac8b588272` |
| 6 | `def` | [mertensEndpointStratumPairSet](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointstratumpairset--c9c221b5431f4b0d5a29bda6.md) | 99 | `declaration-track:c9c221b5431f4b0d5a29bda6607ddf97bca0db23c393dec4e69a4a61ae6573d6` |
| 7 | `theorem` | [sum_mertensEndpointPairSet_eq_strata](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/sum-mertensendpointpairset-eq-strata--a8b395478f9c24d20f5759cf.md) | 106 | `result-track:a8b395478f9c24d20f5759cf6ae70c964490c238c88e31470a6982c301d13a19` |
| 8 | `theorem` | [mertensEndpointFourMobiusStratum_eq_diagonal_iff](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfourmobiusstratum-eq-diagonal-iff--83f250489a4805fbc2d84d75.md) | 138 | `result-track:83f250489a4805fbc2d84d75e894c71a57d0ee81a5a1c07fe239bee575d264eb` |
| 9 | `theorem` | [mertensEndpointFourMobiusStratum_eq_forwardCross_iff](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfourmobiusstratum-eq-forwardcross-iff--f8fd4155b14b01411cb650f1.md) | 148 | `result-track:f8fd4155b14b01411cb650f1465cec3a2ac88f9ba629f212e30812b501737561` |
| 10 | `theorem` | [mertensEndpointFourMobiusStratum_eq_backwardCross_iff](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfourmobiusstratum-eq-backwardcross-iff--1dfb2221d42675ce0535e324.md) | 159 | `result-track:1dfb2221d42675ce0535e324b5db59e91b2cf493ea86473cb4d9034ce5fb4759` |
| 11 | `theorem` | [mertensEndpointFourMobiusStratum_eq_fourDistinct_iff](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfourmobiusstratum-eq-fourdistinct-iff--32f446121f95bb2979b5ee2d.md) | 170 | `result-track:32f446121f95bb2979b5ee2dd150f61f7547bbed178633a458f90427f9c4bbce` |
| 12 | `theorem` | [mertensEndpointFourMobius_fourDistinct_arguments](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfourmobius-fourdistinct-arguments--f44c9d3f1729607a119628d0.md) | 180 | `result-track:f44c9d3f1729607a119628d08eedf1fcfc2f4dbe9525b1745f953eaf0ee44aa2` |
| 13 | `theorem` | [mertensEndpointFourMobiusTerm_diagonal](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfourmobiusterm-diagonal--5ec5eb976b76d0f95a48bcb1.md) | 214 | `result-track:5ec5eb976b76d0f95a48bcb14675950a54df48468298415fa2560add60a902c7` |
| 14 | `theorem` | [mertensEndpointFourMobiusTerm_diagonal_nonneg](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfourmobiusterm-diagonal-nonneg--94590991898ffde22b383cb9.md) | 222 | `result-track:94590991898ffde22b383cb91b107ce472dd51920be0d57eb99539177afc939f` |
| 15 | `def` | [mertensEndpointFibreDiagonalEnergy](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfibrediagonalenergy--c7fdef896d2c6ea02f9ae39f.md) | 229 | `declaration-track:c7fdef896d2c6ea02f9ae39f0fda80abea6cbf3973e3503de3f4d659bc63e621` |
| 16 | `def` | [mertensEndpointFibreCrossCollisionEnergy](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfibrecrosscollisionenergy--546f25c39304e7b4c87ce4ed.md) | 236 | `declaration-track:546f25c39304e7b4c87ce4edc77e39c7fb69fe510b9ff8be0f3ee20643602d28` |
| 17 | `def` | [mertensEndpointFibreFourDistinctCorrelation](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfibrefourdistinctcorrelation--1512b8bc2e9141f30024c2cb.md) | 245 | `declaration-track:1512b8bc2e9141f30024c2cbb2a9d06d6215a0a9fbc073cefb3fde7e1642f52b` |
| 18 | `theorem` | [mertensEndpointFibreDiagonalEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertensendpointfibrediagonalenergy-nonneg--ceea0537ff53b73390e3dce6.md) | 252 | `result-track:ceea0537ff53b73390e3dce69649697b06e74b0d2fc5dd4d9c69eda7e9e5fe26` |
| 19 | `theorem` | [mertensTwoPointEndpointFibreQuadraticEnergy_eq_collisionDecomposition](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/mertenstwopointendpointfibrequadraticenergy-eq-collisiondecomposition--251fd2086db632a54bdaca43.md) | 273 | `result-track:251fd2086db632a54bdaca432f055e09edc9dbbd45143cfbf7fd33a3897933cc` |
| 20 | `def` | [weightedMertensEndpointDiagonalEnergy](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/weightedmertensendpointdiagonalenergy--28962fdb209432a2ac643b99.md) | 301 | `declaration-track:28962fdb209432a2ac643b993603bcf62cbda96dc7f577a28e3607ecf3dd4bcd` |
| 21 | `def` | [weightedMertensEndpointCrossCollisionEnergy](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/weightedmertensendpointcrosscollisionenergy--3ba09a80a878abe9a383123e.md) | 308 | `declaration-track:3ba09a80a878abe9a383123ecf39404450d8507353cdea1f0de336c521e88b45` |
| 22 | `def` | [weightedMertensEndpointFourDistinctCorrelation](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/weightedmertensendpointfourdistinctcorrelation--4ac76ccc11749eee2fb1c8c3.md) | 315 | `declaration-track:4ac76ccc11749eee2fb1c8c3268ffd2f0c884b042c28e5a3a65bb0a4d0d84af5` |
| 23 | `theorem` | [weightedMertensSignedAbelEndpointFibreQuadraticEnergy_eq_strata](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/declarations/weightedmertenssignedabelendpointfibrequadraticenergy-eq-strata--f937ea8342c550ed38d44ff8.md) | 323 | `result-track:f937ea8342c550ed38d44ff89f5c17c763fb1a8efcc4c5a6f5ef6596f1114930` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
