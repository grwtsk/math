# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogCoordinateAttempt06.Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95468cc9efe224c3a8f42d25f99b1fa4fb861009",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95468cc9efe224c3a8f42d25f99b1fa4fb861009`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LogL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logl2--4d79aeec0d297b6fca52a894.md) | 23 | `declaration-track:4d79aeec0d297b6fca52a894ac4874f32a870f0d371188df6a83ae6a6ee41232` |
| 2 | `theorem` | [integral_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/integral-exp-jacobian--8e5115a955a72994e8a5e9aa.md) | 25 | `result-track:8e5115a955a72994e8a5e9aa1577f90e107fc1cda0e2da3828c595f45d4d04c2` |
| 3 | `theorem` | [integrable_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/integrable-exp-jacobian--3b58568e53228b0fcf6248da.md) | 34 | `result-track:3b58568e53228b0fcf6248dacd628f87a77800a92c5e4905740b323f61f4e8c2` |
| 4 | `theorem` | [exp_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/exp-quasi--6cc725f9bcb4ec20e1eee0fe.md) | 43 | `result-track:6cc725f9bcb4ec20e1eee0fec3c18c34e28eafe6c836ed4e5344c6020abe4987` |
| 5 | `theorem` | [log_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/log-quasi--e46c112fd8a9b15325f92589.md) | 65 | `result-track:e46c112fd8a9b15325f925893e319e915d6508027c951d65311bd437b29faa19` |
| 6 | `def` | [logFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logfunc--2f271b66bfccbacb4963f05f.md) | 84 | `declaration-track:2f271b66bfccbacb4963f05f0cdb6c27bd52d2a46d657159d94081eea22dad01` |
| 7 | `def` | [positiveFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/positivefunc--d092a82f0b209906a7cf7999.md) | 85 | `declaration-track:d092a82f0b209906a7cf7999acd3673db8bfbfd19eaaf9ce799d71c41d6f55e5` |
| 8 | `theorem` | [logFunc_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logfunc-norm-sq--980b729acae17d5c68692cb9.md) | 88 | `result-track:980b729acae17d5c68692cb96e88a577561c3e2eaffa41c708053b865b11f137` |
| 9 | `theorem` | [logFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logfunc-memlp--b095a40a71b2de6a60f8714b.md) | 96 | `result-track:b095a40a71b2de6a60f8714b143af564aaf6da9e29c6474107845237efc41123` |
| 10 | `theorem` | [positiveFunc_norm_sq_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/positivefunc-norm-sq-exp--c99b97d249a6593f3f570a91.md) | 106 | `result-track:c99b97d249a6593f3f570a91733cb7ba7d6d2e6e5e8c17f62a02f27110ba312b` |
| 11 | `theorem` | [positiveFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/positivefunc-memlp--0eee682a05e6821a7d5d07dd.md) | 116 | `result-track:0eee682a05e6821a7d5d07ddeace1c7a82bb34ad132ca9f9ef0d1780f0ae9ff7` |
| 12 | `def` | [logMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logmap--9a18fe060f3b3f3fcd0c2044.md) | 127 | `declaration-track:9a18fe060f3b3f3fcd0c2044f685d88c0ead8a5fa5c506f17561c5448c7a8421` |
| 13 | `def` | [positiveMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/positivemap--e755f91eecbf92ab32d380c7.md) | 129 | `declaration-track:e755f91eecbf92ab32d380c7068d4667a009c65484611666a17ae597442dd925` |
| 14 | `theorem` | [logMap_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logmap-ae--fc85e392e333da699d17e8c7.md) | 132 | `result-track:fc85e392e333da699d17e8c7bcaef3e4c4454169ccb0abc7d5c2187b4228c649` |
| 15 | `theorem` | [positiveMap_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/positivemap-ae--e9a00605cc281554bf93b6c1.md) | 134 | `result-track:e9a00605cc281554bf93b6c1b49446c41fcd236643502f4f4b072477ab286f7b` |
| 16 | `theorem` | [logMap_leftInverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logmap-leftinverse--a99ad385c4127750803d51bc.md) | 137 | `result-track:a99ad385c4127750803d51bc2b26482150caf4a6bb67b7f70aeb061da7f73ff1` |
| 17 | `theorem` | [logMap_rightInverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logmap-rightinverse--b07c2768d1c9c0d0ba72d996.md) | 147 | `result-track:b07c2768d1c9c0d0ba72d9965701ac3f9827875acce828d8b6ea4dd22ba6c9b2` |
| 18 | `theorem` | [logL2_norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logl2-norm-sq-integral--b9543cc3c13401a23f157a6f.md) | 157 | `result-track:b9543cc3c13401a23f157a6f54143fe74ad7846bd5affa3ae135d52b619839bd` |
| 19 | `theorem` | [logMap_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logmap-norm--ffcebb62ba75de30fa163a66.md) | 172 | `result-track:ffcebb62ba75de30fa163a66bb45bcc5f65b617c3b889181e88f8c20a3cd7793` |
| 20 | `theorem` | [logMap_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logmap-add--f4374874773324604650d2a6.md) | 183 | `result-track:f4374874773324604650d2a6cf0d0cc02ff346156c45df4af6a3ef207942d229` |
| 21 | `theorem` | [logMap_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logmap-smul--afd93013a3495a17cb821804.md) | 192 | `result-track:afd93013a3495a17cb821804ec77b10d0c0cf743f3814f92f47b032ed7dbf023` |
| 22 | `def` | [logIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logisometry--7d31da0b3e31db938b1e435c.md) | 201 | `declaration-track:7d31da0b3e31db938b1e435c8fe15d99e0592d88655c2447304a4aabe18fa08d` |
| 23 | `def` | [logEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logequiv--a2005c724a456dbf45f1ea70.md) | 207 | `declaration-track:a2005c724a456dbf45f1ea701b1749296a68cb0b6be6bacb2b04f27d86383c0a` |
| 24 | `theorem` | [positiveMap_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/positivemap-norm--dcc61e1f48f30eec693a4494.md) | 213 | `result-track:dcc61e1f48f30eec693a449414b2b47a9e139f7fbbad381db5d67164bd0f7b63` |
| 25 | `def` | [translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/translate--a6673f51840cf9435368b7d5.md) | 217 | `declaration-track:a6673f51840cf9435368b7d520b8a1876ebbe3d07e3c09dabd04fdb881903a07` |
| 26 | `theorem` | [translate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/translate-ae--1aa65cde281a6a1ac8de397b.md) | 220 | `result-track:1aa65cde281a6a1ac8de397b92a35458db1731e11ca43c83a7f67a8e55953d17` |
| 27 | `theorem` | [logMap_dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/declarations/logmap-dilate--6a5261f99bba2ac1e39b80a9.md) | 224 | `result-track:6a5261f99bba2ac1e39b80a97af85b58ff98eecfb780f18484dc681b9e6f7e7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
