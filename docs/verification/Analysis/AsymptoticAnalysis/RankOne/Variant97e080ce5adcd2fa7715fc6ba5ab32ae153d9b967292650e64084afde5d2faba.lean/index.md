# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.RankOne.Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd65943f873b3960a7f3e6b510c440bf77910cd1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd65943f873b3960a7f3e6b510c440bf77910cd1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.Sylvester` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceNorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean/declarations/tracenorm--04ce26f0ec5b8fee52343286.md) | 44 | `declaration-track:04ce26f0ec5b8fee523432865fe5c0d82b82c983bb07d27d9b18fad5032facae` |
| 2 | `lemma` | [traceNorm_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean/declarations/tracenorm-def--6bd94252e45b7f72d110e89f.md) | 47 | `result-track:6bd94252e45b7f72d110e89f95129ebba6d601519f3823cbfaf72d650102be54` |
| 3 | `lemma` | [traceNorm_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean/declarations/tracenorm-nonneg--20e666ef733d35581e59c6a6.md) | 50 | `result-track:20e666ef733d35581e59c6a6248a6696cfe11720805d4d3a932f3cb6fb3a70cc` |
| 4 | `lemma` | [abs_rtrace_le_traceNorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean/declarations/abs-rtrace-le-tracenorm--50aa101929d48629d80b59db.md) | 54 | `result-track:50aa101929d48629d80b59dba109dbf1030d29151f118f82b106984175833146` |
| 5 | `lemma` | [frobSq_le_traceNorm_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean/declarations/frobsq-le-tracenorm-sq--9d1629071d1eb10e8e80f703.md) | 60 | `result-track:9d1629071d1eb10e8e80f703b0c44108f50a56607ceac8b56f56e08404b8f2f4` |
| 6 | `lemma` | [abs_eigenvalues_le_traceNorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean/declarations/abs-eigenvalues-le-tracenorm--9bfa9fc65b5844e373d867d7.md) | 69 | `result-track:9bfa9fc65b5844e373d867d722def8e1221314b62f50a1125305bc68fd216f5f` |
| 7 | `lemma` | [mul_le_half_sq_add_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean/declarations/mul-le-half-sq-add-sq--b671a813754584038b60376a.md) | 74 | `result-track:b671a813754584038b60376a4ed88ebbd7eb58dac6fcdeb4c58120660e872f33` |
| 8 | `theorem` | [traceNorm_le_of_hasSum_vecMulVec](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean/declarations/tracenorm-le-of-hassum-vecmulvec--07ab6ae4dab594bbb329bc31.md) | 81 | `result-track:07ab6ae4dab594bbb329bc314871bdca9ea12973b2e358899258425c17a2900d` |
| 9 | `theorem` | [abs_eigenvalues_le_of_hasSum_vecMulVec](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean/declarations/abs-eigenvalues-le-of-hassum-vecmulvec--df0f9342edde1d49f8685010.md) | 169 | `result-track:df0f9342edde1d49f8685010cc11ceb5d180ce52db16b90a71a71bc39bef52ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
