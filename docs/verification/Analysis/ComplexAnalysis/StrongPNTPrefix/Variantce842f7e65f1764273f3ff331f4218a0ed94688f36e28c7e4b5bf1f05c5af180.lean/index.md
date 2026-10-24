# Verification target: GRWTSK.Analysis.ComplexAnalysis.StrongPNTPrefix.Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3edad168ab314e283c54b58da800fcc076946b18",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3edad168ab314e283c54b58da800fcc076946b18`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Prelude.InstancePriorities` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.HasPrimitives` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.OfScientific` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Principal` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.BorelCaratheodory` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [AnalyticOn.norm_le_of_norm_le_on_sphere](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/analyticon-norm-le-of-norm-le-on-sphere--9874b25ca8877eb857dee67f.md) | 33 | `result-track:9874b25ca8877eb857dee67f91fc95c9116758af8d594889a1e1958668df8044` |
| 2 | `theorem` | [borelCaratheodory'](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/borelcaratheodory--df6eb9ffe2e0067ca746981c.md) | 51 | `result-track:df6eb9ffe2e0067ca746981c9dba39d8dd9ae395fabec38971b6b6dc334e3d32` |
| 3 | `lemma` | [cauchy_formula_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/cauchy-formula-deriv--ef6cd9f6cfafdbb5ce98c445.md) | 72 | `result-track:ef6cd9f6cfafdbb5ce98c445529352d1761710a5932d9adfb19112871d9100b6` |
| 4 | `lemma` | [DerivativeBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/derivativebound--2cf8b1ba12656bf5e6e97299.md) | 82 | `result-track:2cf8b1ba12656bf5e6e97299409f87aa359bdad475b5b910974d63b93ecb5fe7` |
| 5 | `theorem` | [BorelCaratheodoryDeriv](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/borelcaratheodoryderiv--6d372067728cbafd6abb8ddb.md) | 108 | `result-track:6d372067728cbafd6abb8ddb2c18e7f8bc9caf6cc85f3c99facfef04fbec56e8` |
| 6 | `theorem` | [LogOfAnalyticFunction](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/logofanalyticfunction--33a43116dda9d33c8e345b45.md) | 124 | `result-track:33a43116dda9d33c8e345b457c47b32414b0d8cc1526c22707e4aac9385f5d64` |
| 7 | `theorem` | [LogOfAnalyticFunction'](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/logofanalyticfunction--93483164e5d554dfcc303adf.md) | 183 | `result-track:93483164e5d554dfcc303adfed370defd52d5240d38462ce94cc5f2ab5fa942c` |
| 8 | `def` | [SetOfZeros](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/setofzeros--e59bf0c7ff1bc51793644f75.md) | 194 | `declaration-track:e59bf0c7ff1bc51793644f753ba85cb00e722088873e92f3ca41de5f7940596b` |
| 9 | `lemma` | [finiteSetOfZeros_mono](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/finitesetofzeros-mono--968ae8d457cf3bc3263d43c5.md) | 196 | `result-track:968ae8d457cf3bc3263d43c5af15bfb542e862d8211e508bfeecb689eef7ee3a` |
| 10 | `def` | [ZeroFactor](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/zerofactor--11f6a033f5bd7ddf934c0996.md) | 207 | `declaration-track:11f6a033f5bd7ddf934c0996f1b1629c668ff29f1b77672bfec7ff9531a6c88e` |
| 11 | `lemma` | [ZeroFactorization](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/zerofactorization--c247daebb842be93a9b1fbf3.md) | 214 | `result-track:c247daebb842be93a9b1fbf32abe38925ce6c0bd2ac47b84b7e24a76992f6ca7` |
| 12 | `def` | [Cf](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/cf--53dc296f9120be0877b5cf77.md) | 241 | `declaration-track:53dc296f9120be0877b5cf77838f72ac6615ce46ecc0fa383c3cf0a696a77e24` |
| 13 | `lemma` | [analyticAt_finset_prod_sub_pow](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/analyticat-finset-prod-sub-pow--694fd1099d457200396e3df4.md) | 249 | `result-track:694fd1099d457200396e3df441854b9528ffac0d70ab0b68b78a6f45ad9f2c98` |
| 14 | `lemma` | [CfAnalytic](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/cfanalytic--bf25bf7388e9b32aaea2affa.md) | 261 | `result-track:bf25bf7388e9b32aaea2affa5ab42b8ac48123201bf83e567b899b3a3d8ca543` |
| 15 | `def` | [BlaschkeB](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/blaschkeb--864933d50d296fc5f4e36793.md) | 312 | `declaration-track:864933d50d296fc5f4e3679313a19bf4317159550156d1bc90dee388e2043a3c` |
| 16 | `lemma` | [BlaschkeAnalytic](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/blaschkeanalytic--425d8038671f385ec0c27225.md) | 317 | `result-track:425d8038671f385ec0c2722542b7ebea68716c63d1a1b6d4532f2484ced99e8d` |
| 17 | `lemma` | [BlaschkeOfZero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/blaschkeofzero--96492f5aca12bc1210cae7fa.md) | 336 | `result-track:96492f5aca12bc1210cae7facda3f6e4cfda7441107caf1229751c71f37f7b02` |
| 18 | `lemma` | [norm_fOfZero_le_norm_BlaschkeOfZero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/norm-fofzero-le-norm-blaschkeofzero--534c0c695e6e0264c7650d61.md) | 355 | `result-track:534c0c695e6e0264c7650d6103e312ec52ac200b299fd43fdfa20e62a6d1211a` |
| 19 | `lemma` | [DiskBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/diskbound--99e1e37daf015cff1f1a5cfa.md) | 377 | `result-track:99e1e37daf015cff1f1a5cfaf1e52216b7abdf6afba01c82cdfd425bafd50caa` |
| 20 | `lemma` | [BlaschkeNonzero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/blaschkenonzero--2f095a1033c6efb3470e5bea.md) | 414 | `result-track:2f095a1033c6efb3470e5bea2aab82149bb18ffabbff2f9b55b811db9f557f79` |
| 21 | `theorem` | [ZerosBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Variantce842f7e65f1764273f3ff331f4218a0ed94688f36e28c7e4b5bf1f05c5af180.lean/declarations/zerosbound--46a794f9dd4c59e2be329ad0.md) | 453 | `result-track:46a794f9dd4c59e2be329ad030c8457a25505126db03e2fbd131a4cce4985863` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
