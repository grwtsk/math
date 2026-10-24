# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogCoordinateAttempt06.Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79adbcd010f2ab63346ee4c99c1f7fa5fa7907b2",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79adbcd010f2ab63346ee4c99c1f7fa5fa7907b2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LogL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logl2--a9dcd812c2578145cb8ce509.md) | 15 | `declaration-track:a9dcd812c2578145cb8ce5098e84638f8298f0f118f6aaaf5aa9db44d1ab9f22` |
| 2 | `theorem` | [integral_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/integral-exp-jacobian--dee215065e0343afade31b99.md) | 17 | `result-track:dee215065e0343afade31b9976b4906d3244a24411b0a9665bf2211b47f24849` |
| 3 | `theorem` | [integrable_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/integrable-exp-jacobian--fbef55b5f7d49e97ba5d7f68.md) | 26 | `result-track:fbef55b5f7d49e97ba5d7f68ed347bdf558711ab909fbe838115c3ad2aee7dd6` |
| 4 | `theorem` | [exp_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/exp-quasi--8526345b246b0757f693e68b.md) | 35 | `result-track:8526345b246b0757f693e68b40d6482e12c8d1d3da496f7f5749307a1fcc2423` |
| 5 | `theorem` | [log_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/log-quasi--b6dab280221a749ef1186ed2.md) | 57 | `result-track:b6dab280221a749ef1186ed2159ec419df1fafc7c327e286b3a0754ef46276c0` |
| 6 | `def` | [logFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logfunc--6032a38d8f801a5e1629938b.md) | 76 | `declaration-track:6032a38d8f801a5e1629938b041f9f629e20bbfcecd88033fd00f79efe44c0df` |
| 7 | `def` | [positiveFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/positivefunc--7c415986f58a4d1b608c3e0d.md) | 77 | `declaration-track:7c415986f58a4d1b608c3e0d2815ff98a3b2944f1c5534e12481b9ee89e6131e` |
| 8 | `theorem` | [logFunc_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logfunc-norm-sq--13faf04ba0fd74bf42e375e7.md) | 80 | `result-track:13faf04ba0fd74bf42e375e717619e09c2750e4e36cea566193950966a87803f` |
| 9 | `theorem` | [logFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logfunc-memlp--84b82a35bf98296127cdc01d.md) | 88 | `result-track:84b82a35bf98296127cdc01dd45603b36714d1d9c2afd29f8aef4bdf42d9427d` |
| 10 | `theorem` | [positiveFunc_norm_sq_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/positivefunc-norm-sq-exp--94ace42a58360a2988c4c349.md) | 98 | `result-track:94ace42a58360a2988c4c3495fb38ac9ee6df5c8e8dab69e2e718e94023009e0` |
| 11 | `theorem` | [positiveFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/positivefunc-memlp--76b39919ccfc5290cdb3b183.md) | 108 | `result-track:76b39919ccfc5290cdb3b18362e7c4acff63a08a475f38e20739114c9313ccc3` |
| 12 | `def` | [logMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logmap--60c6088c7c73c582e1139d42.md) | 119 | `declaration-track:60c6088c7c73c582e1139d42c38db9f796bc9c85dcfcb5a1a5c3146d5fedef13` |
| 13 | `def` | [positiveMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/positivemap--c5a8ab457a75915d045852b5.md) | 121 | `declaration-track:c5a8ab457a75915d045852b5fe681919c511e7c5763c2b0979b7297316ff51cf` |
| 14 | `theorem` | [logMap_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logmap-ae--ce522aa3882a2e66cb458672.md) | 124 | `result-track:ce522aa3882a2e66cb458672ff688cddc28e35d59321becb8ec6c0a5ed3bb760` |
| 15 | `theorem` | [positiveMap_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/positivemap-ae--dc71dbd299f12f3721ae1ee5.md) | 126 | `result-track:dc71dbd299f12f3721ae1ee5a98cfad68bda8da930b077c54a1297b5c5a14635` |
| 16 | `theorem` | [logMap_leftInverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logmap-leftinverse--889032a81e53d240884fe2ad.md) | 129 | `result-track:889032a81e53d240884fe2ad5e394d653389f9e710dec095db9966ea5dcfd230` |
| 17 | `theorem` | [logMap_rightInverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logmap-rightinverse--ecea3c3db5168341bae07f43.md) | 139 | `result-track:ecea3c3db5168341bae07f43170e7135d9204de3cf5746fa9ddc1d4f10f2f88c` |
| 18 | `theorem` | [logL2_norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logl2-norm-sq-integral--c91a543d44d2a4465f1335fb.md) | 149 | `result-track:c91a543d44d2a4465f1335fb5783defe57185c05a1a3171cdb41cf3063f34fd4` |
| 19 | `theorem` | [logMap_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logmap-norm--3e74c1dbde14cd551a396a20.md) | 164 | `result-track:3e74c1dbde14cd551a396a20bfb80c0e1c0437685dc28dd8a31ad41a1aa50beb` |
| 20 | `theorem` | [logMap_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logmap-add--90c6f2d7164c8952a86f2cf0.md) | 175 | `result-track:90c6f2d7164c8952a86f2cf09a32c9da1dbae2756a1be205d0334540e1a989f3` |
| 21 | `theorem` | [logMap_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logmap-smul--355f72217c2543406e32d764.md) | 184 | `result-track:355f72217c2543406e32d764ddcfcb598036af0084e050cdedab611983091e40` |
| 22 | `def` | [logIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logisometry--e828497f099d0706ecbcbc38.md) | 193 | `declaration-track:e828497f099d0706ecbcbc38e845352268ea9286d1685fab33ac2de7412aef68` |
| 23 | `def` | [logEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logequiv--458f09f7dff6f4593d951c6f.md) | 199 | `declaration-track:458f09f7dff6f4593d951c6fe9a1ddcd51b978438cb20cfaf5601c8cf9c07291` |
| 24 | `theorem` | [positiveMap_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/positivemap-norm--51abd390fb8b2690c3e673eb.md) | 205 | `result-track:51abd390fb8b2690c3e673ebabcd347e6b4dfa55a8d7aa3d8f0da2aadb4b018b` |
| 25 | `def` | [translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/translate--367aa4aa6588f5532a89b9ed.md) | 209 | `declaration-track:367aa4aa6588f5532a89b9ed956e6d7085848fc53255d0eae8b74a6f3397ef85` |
| 26 | `theorem` | [translate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/translate-ae--31e738599087e27ff8903ea6.md) | 212 | `result-track:31e738599087e27ff8903ea6e5c4187bdb77e22159060dc699561bdc5810352c` |
| 27 | `theorem` | [logMap_dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/declarations/logmap-dilate--eb015afa79d4a6caffdda1ab.md) | 216 | `result-track:eb015afa79d4a6caffdda1abc05afb468d89077a285b17d393405e1d26a2081f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
