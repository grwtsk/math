# Verification target: GRWTSK.Analysis.ComplexAnalysis.StrongPNTPrefix.Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61d2b21c5e2eb2ba1b8f51b31fde3207433917e9",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61d2b21c5e2eb2ba1b8f51b31fde3207433917e9`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Prelude.InstancePriorities` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.HasPrimitives` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.OfScientific` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Principal` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.BorelCaratheodory` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 34; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [AnalyticOn.norm_le_of_norm_le_on_sphere](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/analyticon-norm-le-of-norm-le-on-sphere--fc53c65ec14eb42f5c130453.md) | 41 | `result-track:fc53c65ec14eb42f5c13045330510d49a3ca704d52ae9fdc5503781f0091c61e` |
| 2 | `theorem` | [borelCaratheodory'](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/borelcaratheodory--f09fe399518b5d5a1132c8cb.md) | 59 | `result-track:f09fe399518b5d5a1132c8cb8cb3f86800c6e2e03def0b4bf5c47fe72c711d0a` |
| 3 | `lemma` | [cauchy_formula_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/cauchy-formula-deriv--c263287ca80237f8d5806c2e.md) | 80 | `result-track:c263287ca80237f8d5806c2e92cfb6945d1986e5889a30240478c81751d57b26` |
| 4 | `lemma` | [DerivativeBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/derivativebound--378d836dcad0d6e3cd100ea4.md) | 90 | `result-track:378d836dcad0d6e3cd100ea4f61a3a81267220a0c79951b1f83c396ed7dfeb80` |
| 5 | `theorem` | [BorelCaratheodoryDeriv](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/borelcaratheodoryderiv--66e16343a7febfc0dd54438f.md) | 116 | `result-track:66e16343a7febfc0dd54438fb6fb29c1dff98b1574db34702a35c773ceb2a356` |
| 6 | `theorem` | [LogOfAnalyticFunction](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/logofanalyticfunction--3dc21d4e264481ed5fc4eec0.md) | 132 | `result-track:3dc21d4e264481ed5fc4eec00cdf76d0daf703af54d4a536cddac1532618df8e` |
| 7 | `theorem` | [LogOfAnalyticFunction'](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/logofanalyticfunction--945bc2dcf20f8ab704f836a3.md) | 191 | `result-track:945bc2dcf20f8ab704f836a3099f7228988794382e70d68b0331fa1fdeebc403` |
| 8 | `def` | [SetOfZeros](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/setofzeros--76a4257b29ae82a7d2a6cc3e.md) | 202 | `declaration-track:76a4257b29ae82a7d2a6cc3e93c162b2e177c4315e306eb6560a5dec6679094c` |
| 9 | `lemma` | [finiteSetOfZeros_mono](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/finitesetofzeros-mono--71b6dfde135183980caff9bd.md) | 204 | `result-track:71b6dfde135183980caff9bd433645d064269721345bc060957eae0fb30e731d` |
| 10 | `def` | [ZeroFactor](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/zerofactor--29def3f5c3b47138e3682398.md) | 215 | `declaration-track:29def3f5c3b47138e36823986589f05726e5c34bc6d5dc38719478cbe6f8de2e` |
| 11 | `lemma` | [ZeroFactorization](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/zerofactorization--6ad7241c7ebcf95e28b7d942.md) | 222 | `result-track:6ad7241c7ebcf95e28b7d942f246270d5fd5af0c862c179ee7b26f08319c09f3` |
| 12 | `def` | [Cf](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/cf--bbad6df57138cad6ad8e610c.md) | 249 | `declaration-track:bbad6df57138cad6ad8e610c3a0f71a1c388f40dddda84a70b7f32b826105638` |
| 13 | `lemma` | [analyticAt_finset_prod_sub_pow](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/analyticat-finset-prod-sub-pow--7c694d0e020f9f361285d194.md) | 257 | `result-track:7c694d0e020f9f361285d1941125c796229ae57d388ed50c17cf4ef65107b5d5` |
| 14 | `lemma` | [CfAnalytic](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/cfanalytic--85a0423a49ea56dbd0f62e2d.md) | 269 | `result-track:85a0423a49ea56dbd0f62e2dfa8435de51c19fe7789132bbfbee03357ba19c9e` |
| 15 | `def` | [BlaschkeB](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/blaschkeb--c30c070f5f16665d4925f064.md) | 320 | `declaration-track:c30c070f5f16665d4925f06444ccd97e3f059ce1df54060b1b0185d2d51b1b14` |
| 16 | `lemma` | [BlaschkeAnalytic](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/blaschkeanalytic--071ad1f65fbd0061df7b2c32.md) | 325 | `result-track:071ad1f65fbd0061df7b2c323384ab803886495c2e4a207fc20cec6e4f78555c` |
| 17 | `lemma` | [BlaschkeOfZero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/blaschkeofzero--6539815ceec9ae2e53a27b9c.md) | 344 | `result-track:6539815ceec9ae2e53a27b9ca11c043271407cdf51caf9206e3e74d7959d58ee` |
| 18 | `lemma` | [norm_fOfZero_le_norm_BlaschkeOfZero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/norm-fofzero-le-norm-blaschkeofzero--d366180d0a79536ae6bab42a.md) | 363 | `result-track:d366180d0a79536ae6bab42a2bfa9b3623af7918a0fc02c9d81946f3f4faa9f2` |
| 19 | `lemma` | [DiskBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/diskbound--78bc479d766372ef04a7e0ab.md) | 385 | `result-track:78bc479d766372ef04a7e0aba16231551d8b9c04e1c0e40c51ea1b3dacd6424d` |
| 20 | `lemma` | [BlaschkeNonzero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/blaschkenonzero--d2d8c85bca92629b8fdf0a09.md) | 422 | `result-track:d2d8c85bca92629b8fdf0a09753ec5a12d37546f484137bff075ed2cc010b66a` |
| 21 | `theorem` | [ZerosBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/declarations/zerosbound--26b8cf7251617c10dc46e2e9.md) | 461 | `result-track:26b8cf7251617c10dc46e2e9fefd2fee92b8ace49bbfa6ad46684858e73d77f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
