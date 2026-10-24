# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Mult.Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a36b073fd6b04b568aac377026eafcce129946d1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a36b073fd6b04b568aac377026eafcce129946d1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmD.Final` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly.SeamMult` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.FinalMult` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nd_lower_c3](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/declarations/nd-lower-c3--2d34ce6bf2ff7c716682d4e7.md) | 32 | `result-track:2d34ce6bf2ff7c716682d4e7b89ceaf65753c0e8cb183202ef2a1b545279e150` |
| 2 | `theorem` | [thmD_mult2_abstract](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/declarations/thmd-mult2-abstract--58a7f9d8b974924f4e94b1da.md) | 48 | `result-track:58a7f9d8b974924f4e94b1da1c820aa62f78ba3d5c708d5d3dc3508e5a911d53` |
| 3 | `theorem` | [thmD_mult3_abstract](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/declarations/thmd-mult3-abstract--6c29170104d258a709f3ed9e.md) | 206 | `result-track:6c29170104d258a709f3ed9e2fa31640c11f96f4827957327e373f61a3267e47` |
| 4 | `def` | [GD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/declarations/gd--c12f828308edbac88275b9d8.md) | 381 | `declaration-track:c12f828308edbac88275b9d8651e51428bf6cbc8bf28ef3075ea47919cd79427` |
| 5 | `lemma` | [GD_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/declarations/gd-eq--a2d99d1169fbe063e09de08b.md) | 383 | `result-track:a2d99d1169fbe063e09de08b63e12c209fbcb370cf30aecd438bbf909a22d28c` |
| 6 | `theorem` | [thmD_mult_lam_abstract](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/declarations/thmd-mult-lam-abstract--bbc333915081bce3f516ca88.md) | 386 | `result-track:bbc333915081bce3f516ca884d415e8cd4532ace33f659f5d3fa932b1e0e473c` |
| 7 | `theorem` | [thmD_simple_mult_lam](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/declarations/thmd-simple-mult-lam--5ed45306af038d3655bd7fb3.md) | 417 | `result-track:5ed45306af038d3655bd7fb3b590ee804829a435cf01799fc1479009b183bb6d` |
| 8 | `theorem` | [thmD_dist_mult_lam](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/declarations/thmd-dist-mult-lam--021d6bc54df443f0396d9eac.md) | 425 | `result-track:021d6bc54df443f0396d9eac321e8770007b343e08cdd086ff69175222193b9c` |
| 9 | `theorem` | [thmD₀_simple_mult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/declarations/thmd-simple-mult--22e739d07f07cd420b5a1889.md) | 435 | `result-track:22e739d07f07cd420b5a1889859963f2dca32ae9a5f3343cf09cb732eefbeac7` |
| 10 | `theorem` | [thmD₀_simple_mult'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/declarations/thmd-simple-mult--95cff98a0cc43eb264faff51.md) | 441 | `result-track:95cff98a0cc43eb264faff51fb72f93aac5c524f53f5463500a91335870e48c3` |
| 11 | `theorem` | [thmD₀_dist_mult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/declarations/thmd-dist-mult--81c87277da100e22a499c695.md) | 449 | `result-track:81c87277da100e22a499c6951e7bd35eb3b4541e73eba3a71feef501c628a96e` |
| 12 | `theorem` | [thmD₀_simple_mult_cumulative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/declarations/thmd-simple-mult-cumulative--4fadefe1308167ea5906a80f.md) | 468 | `result-track:4fadefe1308167ea5906a80fb57adbddc8e32324cb5b515ac90b2187d37a0240` |
| 13 | `theorem` | [thmD₀_dist_mult_cumulative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/declarations/thmd-dist-mult-cumulative--d5023dce981a55eb162f8a35.md) | 474 | `result-track:d5023dce981a55eb162f8a35f0dce3333432d1034921a50ac49f7fb0726872b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
