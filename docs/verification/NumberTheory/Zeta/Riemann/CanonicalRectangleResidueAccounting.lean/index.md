# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleResidueAccounting

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba22b0eb9b79e107675cf0940bd1fcb87f6a80f1",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba22b0eb9b79e107675cf0940bd1fcb87f6a80f1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCauchyGoursat`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalLogarithmicResidues`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.TrivialZeroResidues`](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nontrivial_logDeriv_scaled_limit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/nontrivial-logderiv-scaled-limit--94252cb0a77c7a2fcb269056.md) | 56 | `result-track:94252cb0a77c7a2fcb2690562800e16739cbb165ee870c96ee719050691666d7` |
| 2 | `theorem` | [trivial_logDeriv_scaled_limit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/trivial-logderiv-scaled-limit--edceb172b35e2347f9beeb2c.md) | 63 | `result-track:edceb172b35e2347f9beeb2c04d819d2f98607810a6adaefb8fe5054079ec384` |
| 3 | `theorem` | [pole_logDeriv_scaled_limit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/pole-logderiv-scaled-limit--23e28193d52d981559828c5e.md) | 70 | `result-track:23e28193d52d981559828c5e3efdd99a00700800ea6e11253490b77c8ef82382` |
| 4 | `def` | [nontrivialPrincipalPart](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/nontrivialprincipalpart--a0d10859f851d3f941952c36.md) | 76 | `declaration-track:a0d10859f851d3f941952c36b5ad92283fc0e813e080d2f562a9b122b0e1c377` |
| 5 | `def` | [trivialPrincipalPart](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/trivialprincipalpart--d9247de715cc2e36e77dbcd4.md) | 81 | `declaration-track:d9247de715cc2e36e77dbcd4669a58c939a44259b5d237a301e6525eb5486e45` |
| 6 | `def` | [polePrincipalPart](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/poleprincipalpart--83499661ba4d9818b26d0bc3.md) | 85 | `declaration-track:83499661ba4d9818b26d0bc3af4270b1ea4900d0dd091d499cf22be1e8d24838` |
| 7 | `def` | [rectanglePrincipalPart](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/rectangleprincipalpart--e6ab56e022da88baa2cc2336.md) | 89 | `declaration-track:e6ab56e022da88baa2cc2336971aa1804f5a29241b6905c86f90315439ed2a3c` |
| 8 | `def` | [nontrivialResidueMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/nontrivialresiduemass--f622e5493c25c6db69d21112.md) | 93 | `declaration-track:f622e5493c25c6db69d21112289d4dc9fdcd16c8662760dd49f6277d06c792fe` |
| 9 | `def` | [trivialResidueMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/trivialresiduemass--8476afc0c3074c819f89d5cf.md) | 97 | `declaration-track:8476afc0c3074c819f89d5cf43cd7674fe5a7d179d0a1ef5b5c392af0f976a33` |
| 10 | `def` | [rectangleResidueMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/rectangleresiduemass--925b77ad933fe4ce5f853611.md) | 101 | `declaration-track:925b77ad933fe4ce5f85361189bb3f2b6332856e3a192da3f07213a599db367a` |
| 11 | `theorem` | [nontrivialResidueMass_eq_heightCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/nontrivialresiduemass-eq-heightcount--53d818b633dc5b30fa2258de.md) | 104 | `result-track:53d818b633dc5b30fa2258dee4801313611b107e04ade32055c5751aaa6d69bf` |
| 12 | `theorem` | [trivialResidueMass_eq_nat](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/trivialresiduemass-eq-nat--25d2c9f3984810699aa782c1.md) | 109 | `result-track:25d2c9f3984810699aa782c10b1ecaae0c75fe6059ed5dcbb48763fdb606c2ae` |
| 13 | `theorem` | [rectangleResidueMass_eq_expected](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/rectangleresiduemass-eq-expected--11130c55f2241c54897866fc.md) | 115 | `result-track:11130c55f2241c54897866fcca15d5df2edab99ebf70c212ec2ed0ec2bdcfeec` |
| 14 | `structure` | [RectangleRegularizationCertificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/rectangleregularizationcertificate--3f69fb34aa46d28ede75b983.md) | 129 | `declaration-track:3f69fb34aa46d28ede75b983e70ef88b8832a39446354ab80b1498d5c7665e6f` |
| 15 | `structure` | [RectanglePrincipalPartWindingCertificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/rectangleprincipalpartwindingcertificate--b267b54f2a101d14bc060fd9.md) | 142 | `declaration-track:b267b54f2a101d14bc060fd9fddbf258a42a9cf0c45638d131eb39a9975b2e6a` |
| 16 | `theorem` | [regular_boundary_integral_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/regular-boundary-integral-eq-zero--52ce790dbf57b3c20275a11e.md) | 150 | `result-track:52ce790dbf57b3c20275a11e25657fd51ed5b8f1e2472f93041e937b08ef5656` |
| 17 | `theorem` | [rectangle_integral_eq_residue_mass](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/rectangle-integral-eq-residue-mass--52eeab381b5a8cd0097b8fa2.md) | 158 | `result-track:52eeab381b5a8cd0097b8fa2205468e79076765c339b17a2b40eb6ec2e91710f` |
| 18 | `theorem` | [normalizedRectangleIndex_eq_expected](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/normalizedrectangleindex-eq-expected--a03da2a2ff874564321c1e32.md) | 169 | `result-track:a03da2a2ff874564321c1e3235d226627b2ef1d7962b951e7a6718480fda7907` |
| 19 | `def` | [toCanonicalRectangleIndexEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/tocanonicalrectangleindexenclosure--a8bac90e8e358bfedf2d08c0.md) | 191 | `declaration-track:a8bac90e8e358bfedf2d08c08b0dbdd55ad2d60d737c8ed3a149e13a37510c25` |
| 20 | `theorem` | [omitted_trivial_residue_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/omitted-trivial-residue-fixture--34684d8cfc6f1f0c52d9648b.md) | 206 | `result-track:34684d8cfc6f1f0c52d9648b1f889eea6541bed64ec1ae5caec8543497ad49aa` |
| 21 | `theorem` | [omitted_pole_residue_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/declarations/omitted-pole-residue-fixture--7322444d77e90eebb2877f15.md) | 213 | `result-track:7322444d77e90eebb2877f15fd0b0976cd6d2087fccdc59e2df4e8eef8085ed4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
