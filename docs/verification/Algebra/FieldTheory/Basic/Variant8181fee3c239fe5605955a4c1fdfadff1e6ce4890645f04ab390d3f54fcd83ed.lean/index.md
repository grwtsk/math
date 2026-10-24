# Verification target: GRWTSK.Algebra.FieldTheory.Basic.Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c986a3b8a28245a0cae2016b82d2b84a4ef6e9dc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c986a3b8a28245a0cae2016b82d2b84a4ef6e9dc`.

Source path: `GRWTSK/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.MapCoeffs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logDeriv](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/logderiv--4474e8fa5009f19564db286a.md) | 25 | `declaration-track:4474e8fa5009f19564db286aafd0feeb07edad9b6154f48e2afa76c73d39af66` |
| 2 | `lemma` | [logDeriv_zero](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/logderiv-zero--2b5cac802c08cbf27c93cf51.md) | 28 | `result-track:2b5cac802c08cbf27c93cf515dfe9d096d0aa12e925a773058d9432cf238bb53` |
| 3 | `lemma` | [logDeriv_one](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/logderiv-one--ffaf2b7721bbf54974bfecfc.md) | 32 | `result-track:ffaf2b7721bbf54974bfecfcfa19edb2c1226b2b50f982ecf82d96d87f0f89a0` |
| 4 | `lemma` | [logDeriv_mul](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/logderiv-mul--04f4adf270022ccdc8b1926c.md) | 35 | `result-track:04f4adf270022ccdc8b1926c338b23ff555f3c61afb4e85fd85977e3fac890c3` |
| 5 | `lemma` | [logDeriv_div](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/logderiv-div--4e515236a1ac9a43f515ddcd.md) | 40 | `result-track:4e515236a1ac9a43f515ddcd24e9000d164535d105aace692646a1c056973f29` |
| 6 | `lemma` | [logDeriv_pow](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/logderiv-pow--ea26efaebaf6d9b659f07779.md) | 46 | `result-track:ea26efaebaf6d9b659f07779d05d251e824ea02925cfa63e4b3e5f024f4b256d` |
| 7 | `lemma` | [logDeriv_eq_zero](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/logderiv-eq-zero--7b4091f55f2caf3964f5ff1d.md) | 55 | `result-track:7b4091f55f2caf3964f5ff1dfc07659f6814b22de520e82e11b34d6b74442d25` |
| 8 | `lemma` | [logDeriv_multisetProd](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/logderiv-multisetprod--d76b5ee28aa77a6be7216a56.md) | 59 | `result-track:d76b5ee28aa77a6be7216a56a4571ecae5b0111b7bbf0663d24f2b82ad688e2b` |
| 9 | `lemma` | [logDeriv_prod](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/logderiv-prod--45e9f59ab016cf40bae72166.md) | 71 | `result-track:45e9f59ab016cf40bae72166e7c7a567aa92628fb64f1a979724211e1d27d5cb` |
| 10 | `lemma` | [logDeriv_prod_of_eq_zero](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/logderiv-prod-of-eq-zero--fdf98504521c2d0d7ec96abe.md) | 74 | `result-track:fdf98504521c2d0d7ec96abe500709b5dbd1ec90f7532bfe666a5ccfc00476eb` |
| 11 | `lemma` | [logDeriv_algebraMap](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/logderiv-algebramap--21ee3de7200fb85a16722143.md) | 79 | `result-track:21ee3de7200fb85a167221433d2509c93d8b1426dc6e91fe01b87bc93e836d85` |
| 12 | `lemma` | [_root_.algebraMap.coe_logDeriv](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/root-algebramap-coe-logderiv--d7229b5f2a1f70ff23e2fa5a.md) | 86 | `result-track:d7229b5f2a1f70ff23e2fa5ab025d1c8f45c47ad6800ea762f223ecd297c9966` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/instance--9d782df1f5b063c849771fa3.md) | 92 | `declaration-track:9d782df1f5b063c849771fa3245ab218b44993dbc00272f5f5d089606427444c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/instance--776f3acff856bb5574c701b7.md) | 119 | `declaration-track:776f3acff856bb5574c701b7343fb77150820e9453adddde109dfb2750f74857` |
| 15 | `def` | [differentialFiniteDimensional](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/differentialfinitedimensional--6d42fef4b542f94bd09460a3.md) | 135 | `declaration-track:6d42fef4b542f94bd09460a3736bc6bcf6f0bb596ace6a2f9640a5b89b5410df` |
| 16 | `lemma` | [differentialAlgebraFiniteDimensional](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/differentialalgebrafinitedimensional--3db23c91c60764fbd4693ec7.md) | 145 | `result-track:3db23c91c60764fbd4693ec79037c1d5b2399900f9ec04a5f7c0e7b7d5272bff` |
| 17 | `def` | [uniqueDifferentialAlgebraFiniteDimensional](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/uniquedifferentialalgebrafinitedimensional--7b3a169c9eaf10596ea8b18f.md) | 159 | `declaration-track:7b3a169c9eaf10596ea8b18fb8ae93baff10a46fd22a9ee72458fce178d11db9` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/instance--1b0ab80612e900b7a0fde966.md) | 180 | `declaration-track:1b0ab80612e900b7a0fde966d8d65bd7b880df0bce3025ceed2631932ee88115` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/instance--8c995b46f1507934cd5b8f3a.md) | 183 | `declaration-track:8c995b46f1507934cd5b8f3ac9d6f61716a4429f7a16e4319247b0f3d33cc202` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/declarations/instance--1f26e80633a257b32eef3be5.md) | 186 | `declaration-track:1f26e80633a257b32eef3be5c0618698c3994fcfbbc03e9a714eeb37047103da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
