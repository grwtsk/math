# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TracesChi.Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "002d9e76f53226936f0854e872936b9f9316bb88",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `002d9e76f53226936f0854e872936b9f9316bb88`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.TracesHypChi` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.PrimeSideChi` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.PPChi` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.MuMuChi` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.CrossMuPChi` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.Concrete` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideA.Bridge` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [l_le_ell1q](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/l-le-ell1q--40ea0e4cbc207ca3119c8f05.md) | 55 | `result-track:40ea0e4cbc207ca3119c8f05ebee31e8b1f800ef6773c35b59b003c54a528dff` |
| 2 | `structure` | [DataChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/datachi--812b4a63f7cf34debc3201b1.md) | 66 | `declaration-track:812b4a63f7cf34debc3201b12dffbb1d88d4f6da30e28ea7c3d9d37775a86caa` |
| 3 | `structure` | [FactsChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/factschi--593820ee82bbe4ea33b6471f.md) | 83 | `declaration-track:593820ee82bbe4ea33b6471f6bae6c9a474a6ce8fcb1311437fd69cdebb7d407` |
| 4 | `theorem` | [tr1_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/tr1-chi--e0731ebee4493fe1a384cb90.md) | 109 | `result-track:e0731ebee4493fe1a384cb901e767cd0704203fee226dbf8fabe8fc43b3b77c7` |
| 5 | `lemma` | [Ncnt_lower_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/ncnt-lower-chi--94fba65d4c92aa8d37fcdef1.md) | 112 | `result-track:94fba65d4c92aa8d37fcdef14c4155cc64395d2e293fc392c4f769eb20e2351a` |
| 6 | `lemma` | [T_le_Ncnt_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/t-le-ncnt-chi--69e4d4492d57d66c235ff31a.md) | 129 | `result-track:69e4d4492d57d66c235ff31a98a71aa472664b251c730e3ad958a661a8e78d25` |
| 7 | `lemma` | [Ncnt_pos_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/ncnt-pos-chi--8ea657ef6039a97367995d84.md) | 135 | `result-track:8ea657ef6039a97367995d84ea956e7c897ac0957f02c39d2aa162fd05a26798` |
| 8 | `theorem` | [tr1'_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/tr1-chi--58dcf877046475695f9f0556.md) | 141 | `result-track:58dcf877046475695f9f055602b00722b8d3c62615df0953b93462de5cfd349f` |
| 9 | `lemma` | [regime_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/regime-chi--483e5e83bf83d5d7085cc5c7.md) | 178 | `result-track:483e5e83bf83d5d7085cc5c77e9af998cc5add2f4b4453a08797cbf351d37690` |
| 10 | `theorem` | [tr2_first_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/tr2-first-chi--3dfc60eadc1d7d81fe08825a.md) | 187 | `result-track:3dfc60eadc1d7d81fe08825acb79fa90485627c909652d4fbfc7c908149662be` |
| 11 | `theorem` | [tr2_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/tr2-chi--c795702be5d3d4d59e591a8e.md) | 225 | `result-track:c795702be5d3d4d59e591a8ee4a1f1b26a60d61f513f8261b224d9f3c051c4c2` |
| 12 | `theorem` | [ratio_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/ratio-chi--8ea93a9324456fd8d145cede.md) | 253 | `result-track:8ea93a9324456fd8d145cede977b9536ef62939a9a9ea2ba5bd399fc2cddb80a` |
| 13 | `theorem` | [tracesBoundsChi_of_factsChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/tracesboundschi-of-factschi--6d5fbcb25b310909b0144c4a.md) | 289 | `result-track:6d5fbcb25b310909b0144c4aa2c4271f5e058d8d3ee286b7060126be4676c216` |
| 14 | `lemma` | [GentryChiA_concrete](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/gentrychia-concrete--6a195d4341037bd8d49d664e.md) | 303 | `result-track:6a195d4341037bd8d49d664edc5ba1643baf2c0e8a22e837688f145886b3cb09` |
| 15 | `lemma` | [trGtChiA_concrete](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/trgtchia-concrete--111680c51a3a3c8af515b4d9.md) | 305 | `result-track:111680c51a3a3c8af515b4d99dbb728b0a0e4d86ad0fe2f405494316b25637ba` |
| 16 | `lemma` | [trGt2ChiA_concrete](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/trgt2chia-concrete--97e5d5b45fecf1f1fac80024.md) | 307 | `result-track:97e5d5b45fecf1f1fac80024b196aae4495eec601453240c2a319b81987a5cc5` |
| 17 | `def` | [concreteDataChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/concretedatachi--a32dde9719835d5699f453ce.md) | 311 | `declaration-track:a32dde9719835d5699f453ceeae1245d44095d75d18bf8a9040f918b08a5843a` |
| 18 | `lemma` | [rvm_evBound_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/rvm-evbound-chi--f1a88d7f50352b22adeb42cd.md) | 327 | `result-track:f1a88d7f50352b22adeb42cd659f8149ea8baff0e67e145b788aa3a295ebce22` |
| 19 | `theorem` | [concreteFactsChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/concretefactschi--bce2dbe56284b0e2824451ab.md) | 355 | `result-track:bce2dbe56284b0e2824451ab43d3c47692b5dbc42c0732526014b470928602a0` |
| 20 | `theorem` | [thm_traces_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/declarations/thm-traces-chi--2222013766986d38049be849.md) | 470 | `result-track:2222013766986d38049be849d4e5596f73d37fcfcf72bbc168146b6af8d1e7f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
