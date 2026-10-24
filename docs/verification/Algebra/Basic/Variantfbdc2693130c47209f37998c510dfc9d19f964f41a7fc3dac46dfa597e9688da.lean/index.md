# Verification target: GRWTSK.Algebra.Basic.Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "152c6c70403a104029f09e17b870bde34c604eb1",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `152c6c70403a104029f09e17b870bde34c604eb1`.

Source path: `GRWTSK/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Galois.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.MinpolyDiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Minpoly` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Vandermonde` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace.Defs` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Algebra.traceForm_toMatrix_powerBasis](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/algebra-traceform-tomatrix-powerbasis--c89b38eccefbf17e136e6faa.md) | 68 | `result-track:c89b38eccefbf17e136e6faacf64c87be110b7adc419ee863eb6de5db075c4fc` |
| 2 | `theorem` | [PowerBasis.trace_gen_eq_nextCoeff_minpoly](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/powerbasis-trace-gen-eq-nextcoeff-minpoly--633c483443ce441b3a2a34d9.md) | 80 | `result-track:633c483443ce441b3a2a34d923b6c7a20da14009932cd95d3115fd4235447576` |
| 3 | `theorem` | [PowerBasis.trace_gen_eq_sum_roots](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/powerbasis-trace-gen-eq-sum-roots--bf80cd013c618fc65ae786a3.md) | 90 | `result-track:bf80cd013c618fc65ae786a37b49b8173602008b8a6d8d5f15363164dd55e813` |
| 4 | `theorem` | [trace_gen_eq_zero](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/trace-gen-eq-zero--71390c5316d95965f86d4243.md) | 103 | `result-track:71390c5316d95965f86d4243bbfeb4fc1a3c44accb0f1e3863cd24dd0819f02f` |
| 5 | `theorem` | [trace_gen_eq_sum_roots](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/trace-gen-eq-sum-roots--e044bdc0e5bcd30a73723f58.md) | 112 | `result-track:e044bdc0e5bcd30a73723f5820f8ace81ce18f5ebae950fa0f8f41069b3cdbff` |
| 6 | `theorem` | [trace_eq_trace_adjoin](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/trace-eq-trace-adjoin--c155bab96b4c620ee01f0546.md) | 129 | `result-track:c155bab96b4c620ee01f05461948abf662ceb44c365b6741985ffd24aaed3863` |
| 7 | `theorem` | [trace_adjoinSimpleGen](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/trace-adjoinsimplegen--3ecb75b5addf73d4264f62c6.md) | 138 | `result-track:3ecb75b5addf73d4264f62c62de52a91fc9579a6ddc1c06b6d64e96dbd0e1d85` |
| 8 | `theorem` | [trace_eq_finrank_mul_minpoly_nextCoeff](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/trace-eq-finrank-mul-minpoly-nextcoeff--0172637e06417b1e88d3740e.md) | 142 | `result-track:0172637e06417b1e88d3740e5d7eb7925b25a52287015a96d58aafd0346642d5` |
| 9 | `theorem` | [trace_eq_sum_roots](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/trace-eq-sum-roots--a11454f0042134c62e0f8d09.md) | 148 | `result-track:a11454f0042134c62e0f8d0914f5b76bda37380fedf8261e5fec36f48fe7c611` |
| 10 | `theorem` | [Algebra.isIntegral_trace](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/algebra-isintegral-trace--6ed2ea7606971fe542464f8a.md) | 164 | `result-track:6ed2ea7606971fe542464f8a037f4b6f0fa945d1c1c61116dec3bd11f30ef6cf` |
| 11 | `lemma` | [Algebra.trace_eq_of_algEquiv](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/algebra-trace-eq-of-algequiv--2fa0c762a4cad02eb5cb3d99.md) | 176 | `result-track:2fa0c762a4cad02eb5cb3d992c6daadcca1aeb14da7657d4c1c75f627f48f40f` |
| 12 | `lemma` | [Algebra.trace_eq_of_ringEquiv](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/algebra-trace-eq-of-ringequiv--4ede0d7cc5992cd3b4fc8c97.md) | 182 | `result-track:4ede0d7cc5992cd3b4fc8c9766d924a9842985ccf45249bf77f2c8c802b01c87` |
| 13 | `lemma` | [Algebra.trace_eq_of_equiv_equiv](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/algebra-trace-eq-of-equiv-equiv--d092bfed9da821c83648c25f.md) | 202 | `result-track:d092bfed9da821c83648c25f6db3a5ac4e6ae4542b432c09e1657dee2727ca98` |
| 14 | `theorem` | [trace_eq_sum_embeddings_gen](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/trace-eq-sum-embeddings-gen--8356d29f1c2002064764ddb7.md) | 220 | `result-track:8356d29f1c2002064764ddb7b7e69605aab035d6047a89126958fb24229752fc` |
| 15 | `theorem` | [sum_embeddings_eq_finrank_mul](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/sum-embeddings-eq-finrank-mul--b3692d98ba41fc3f006c74b1.md) | 239 | `result-track:b3692d98ba41fc3f006c74b195c1e1f13ae91e84db5a7c5cabd9965a13d6a6a0` |
| 16 | `theorem` | [trace_eq_sum_embeddings](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/trace-eq-sum-embeddings--54332f6be42ad3c1c0c1917b.md) | 261 | `result-track:54332f6be42ad3c1c0c1917b87e7d45c14044c5b2f9262ead0dc446b29397918` |
| 17 | `theorem` | [trace_eq_sum_automorphisms](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/trace-eq-sum-automorphisms--ce9646845da1ce70a0e88e19.md) | 272 | `result-track:ce9646845da1ce70a0e88e19af5dde7a48baf9036a1df67281adced66e7eade4` |
| 18 | `def` | [traceMatrix](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/tracematrix--05008a3d24bdffa3a3696236.md) | 296 | `declaration-track:05008a3d24bdffa3a369623647f32e9d5882d38d2dd8640fdad175c9bc63517a` |
| 19 | `theorem` | [traceMatrix_apply](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/tracematrix-apply--2107b140ee354ef7f013d27e.md) | 301 | `result-track:2107b140ee354ef7f013d27ec1aea24aa29be7d6bad31ce9ab1d6105f40208ca` |
| 20 | `theorem` | [traceMatrix_reindex](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/tracematrix-reindex--c7ba11798087da1a25a1b1ca.md) | 304 | `result-track:c7ba11798087da1a25a1b1caa2011d65efd8b0e97b12224e3babdd09bbb0bdff` |
| 21 | `theorem` | [traceMatrix_of_matrix_vecMul](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/tracematrix-of-matrix-vecmul--c534d3bcb10ed345a0b7a15e.md) | 309 | `result-track:c534d3bcb10ed345a0b7a15e3801b7791869f605ba433e3f0749a2a55b0376f3` |
| 22 | `theorem` | [traceMatrix_of_matrix_mulVec](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/tracematrix-of-matrix-mulvec--d8c1cfadec752dfa9273025d.md) | 329 | `result-track:d8c1cfadec752dfa9273025d7aceb723e6f6c905b62f0bd8b7ac832d90310ca7` |
| 23 | `theorem` | [traceMatrix_of_basis](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/tracematrix-of-basis--688306410af15bcab44f986a.md) | 335 | `result-track:688306410af15bcab44f986a2fb988810dcfd52175be1675600a668308a45ca6` |
| 24 | `theorem` | [traceMatrix_of_basis_mulVec](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/tracematrix-of-basis-mulvec--69f9f92f6fbb90f7c3a38eb9.md) | 340 | `result-track:69f9f92f6fbb90f7c3a38eb9b91d8bef8bccd895ad9f2c2bfd0bb5777c43a91d` |
| 25 | `def` | [embeddingsMatrix](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/embeddingsmatrix--5794dca0d63d7eded1015ebb.md) | 367 | `declaration-track:5794dca0d63d7eded1015ebbc77c3ec7086d1dbc837a51eaa6336c7a2635432d` |
| 26 | `theorem` | [embeddingsMatrix_apply](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/embeddingsmatrix-apply--8aa4cb6a4cf0f46c2f4b6cac.md) | 372 | `result-track:8aa4cb6a4cf0f46c2f4b6cac86b4d1ba91293cfa217d4bb92917a9bfd68fb142` |
| 27 | `def` | [embeddingsMatrixReindex](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/embeddingsmatrixreindex--3b0224b44e21d2e2a8c7de8a.md) | 381 | `declaration-track:3b0224b44e21d2e2a8c7de8aeaad4243875f0b908f360c3bb8cd90babf295fdc` |
| 28 | `theorem` | [embeddingsMatrixReindex_eq_vandermonde](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/embeddingsmatrixreindex-eq-vandermonde--c58005d95ec468922fccc931.md) | 386 | `result-track:c58005d95ec468922fccc9317f62045de5700222f57cdfe14a71b3885609f3a4` |
| 29 | `theorem` | [traceMatrix_eq_embeddingsMatrix_mul_trans](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/tracematrix-eq-embeddingsmatrix-mul-trans--243ab7844e2e2b2741325a39.md) | 399 | `result-track:243ab7844e2e2b2741325a3916e272f8763f7b8661e9a81ffa0938e06aba4da2` |
| 30 | `theorem` | [traceMatrix_eq_embeddingsMatrixReindex_mul_trans](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/tracematrix-eq-embeddingsmatrixreindex-mul-trans--2e554de15bf6cef580a958d0.md) | 403 | `result-track:2e554de15bf6cef580a958d01cc436081715a72d6b12884b5dac5f24cd697d84` |
| 31 | `theorem` | [det_traceMatrix_ne_zero'](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/det-tracematrix-ne-zero--1dfe044b178c6dba230316c1.md) | 417 | `result-track:1dfe044b178c6dba230316c1032e0b59be26d8e88e3cb5d9d71d02abdcf55205` |
| 32 | `theorem` | [det_traceForm_ne_zero](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/det-traceform-ne-zero--8c4ebbcec0684c356c7e24b1.md) | 432 | `result-track:8c4ebbcec0684c356c7e24b135753776fd6edd610c935d9bd61a442af6eb0131` |
| 33 | `theorem` | [traceForm_nondegenerate](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/traceform-nondegenerate--a604449125f71d62d3a424a4.md) | 458 | `result-track:a604449125f71d62d3a424a49941c7817881fe53c9445da00252522de83cef7a` |
| 34 | `theorem` | [Algebra.trace_ne_zero](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/algebra-trace-ne-zero--501dee875e1b6a0834c48744.md) | 463 | `result-track:501dee875e1b6a0834c4874430b5fd3508e809fe5eaeeb4efbeb338304e9955a` |
| 35 | `theorem` | [Algebra.trace_surjective](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/algebra-trace-surjective--6078a646d36ceb4c3a3fc7d9.md) | 472 | `result-track:6078a646d36ceb4c3a3fc7d97de6dbc2ddf1b4a4eb592536b72e64216ba669c1` |
| 36 | `lemma` | [traceForm_dualBasis_powerBasis_eq](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/traceform-dualbasis-powerbasis-eq--09df66e87622e4acfb645df5.md) | 485 | `result-track:09df66e87622e4acfb645df515dc0af2214978dcb174cb76e84e6ef563c4c6a1` |
| 37 | `lemma` | [trace_isNilpotent_of_isNilpotent](../../../../mathematics/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/declarations/trace-isnilpotent-of-isnilpotent--0e234ac3db7af86836e35213.md) | 515 | `result-track:0e234ac3db7af86836e35213cee4cebd8b4590bff325163f3beb08c165556883` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
