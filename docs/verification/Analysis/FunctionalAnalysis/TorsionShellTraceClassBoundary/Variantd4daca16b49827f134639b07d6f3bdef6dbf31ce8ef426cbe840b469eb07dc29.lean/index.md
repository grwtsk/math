# Verification target: GRWTSK.Analysis.FunctionalAnalysis.TorsionShellTraceClassBoundary.Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "130eb860889e69015485de56c66ebafeebd47f1c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `130eb860889e69015485de56c66ebafeebd47f1c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.ConnesTaoCheckedTheoremImports` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Arithmetic.GNSDeterminantExactnessBoundary` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TorsionShell](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/torsionshell--765cf4e0f1944d80efcf7548.md) | 18 | `declaration-track:765cf4e0f1944d80efcf754890ee83f15e3620c5363e5f3cc3e1c4ccbfdbc093` |
| 2 | `def` | [regularTorsionShell](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/regulartorsionshell--2f307f29425ad331636298c7.md) | 32 | `declaration-track:2f307f29425ad331636298c7aca88e931c1567667f22677f33103179cb259d4d` |
| 3 | `def` | [singularTorsionShell](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/singulartorsionshell--351c9499c64c59b810100b17.md) | 46 | `declaration-track:351c9499c64c59b810100b1751eb5549bdf6f7d6d57eaf2af053b42813bc8ab8` |
| 4 | `def` | [TorsionShell.boundaryRouted](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/torsionshell-boundaryrouted--f4b3b3cf4ae80d8960bb95b2.md) | 61 | `declaration-track:f4b3b3cf4ae80d8960bb95b2fe6a91f395de165e12ed3dc9440a196c95c8dc49` |
| 5 | `theorem` | [regular_shell_routes_to_connes_positive](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/regular-shell-routes-to-connes-positive--676d799cafd197f1b804345d.md) | 65 | `result-track:676d799cafd197f1b804345da8cec9a893845cbfa8d65920d2c486e6704e6e88` |
| 6 | `theorem` | [singular_shell_routes_to_tao_negative](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/singular-shell-routes-to-tao-negative--00a3663239d36b58cc552da5.md) | 72 | `result-track:00a3663239d36b58cc552da5b319ee3e2195de637d134d8099e0271bae3b7177` |
| 7 | `structure` | [TorsionShellTraceClassBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/torsionshelltraceclassboundary--a7b5f898e3d85855f2f8c184.md) | 79 | `declaration-track:a7b5f898e3d85855f2f8c1844a918f81204eea2fa13374004b1b5b65bb07b7ec` |
| 8 | `def` | [defaultTorsionShellTraceClassBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/defaulttorsionshelltraceclassboundary--39b44562a5e22afd9526582e.md) | 115 | `declaration-track:39b44562a5e22afd9526582ee7f56441958d68dd5033cb62e00dae9e79eeaf2d` |
| 9 | `def` | [completedTorsionShellTraceClassBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/completedtorsionshelltraceclassboundary--a9191343f96015f58d10dd2f.md) | 142 | `declaration-track:a9191343f96015f58d10dd2f8b3223ff947b2cbedfc74c2fdf2a0b76b2a3e77f` |
| 10 | `theorem` | [torsion_shell_factorial_decay_admits_trace_class](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/torsion-shell-factorial-decay-admits-trace-class--8b05d29aa35662a0ceef4ef4.md) | 169 | `result-track:8b05d29aa35662a0ceef4ef46bc93ac912be322b7fd8255c11ad5e4f5d3ff9df` |
| 11 | `theorem` | [ordering_alone_does_not_admit_trace_class](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/ordering-alone-does-not-admit-trace-class--623ff715ab0655d0b175f6d3.md) | 185 | `result-track:623ff715ab0655d0b175f6d3803c780b365a58b87bf7337c40b0cfaa69cd32d7` |
| 12 | `theorem` | [completed_torsion_shell_boundary_admits_trace_and_determinant_class](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/completed-torsion-shell-boundary-admits-trace-and-determinant-class--1a57090a02bb6556247359a6.md) | 193 | `result-track:1a57090a02bb6556247359a6bcf3a528a0e861cb48753bee9b808b328be84d5f` |
| 13 | `theorem` | [default_torsion_shell_boundary_blocks_trace_class](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/default-torsion-shell-boundary-blocks-trace-class--c8e0b9ce90156885b85cd04e.md) | 200 | `result-track:c8e0b9ce90156885b85cd04ee9216ddc18b567ed2f9ee5879148bf34769ade95` |
| 14 | `theorem` | [completed_trace_class_boundary_feeds_determinant_gate](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/completed-trace-class-boundary-feeds-determinant-gate--506aab980e7d919aa8f52d33.md) | 208 | `result-track:506aab980e7d919aa8f52d33abb031736fe6fb501e39b4c2aad8c4b324dbce1c` |
| 15 | `theorem` | [checked_connes_tao_imports_feed_trace_class_boundary](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/checked-connes-tao-imports-feed-trace-class-boundary--b425611c57f80cb0b4388011.md) | 215 | `result-track:b425611c57f80cb0b43880114e8a9d781788fd6a2a30640be53f39767fefac44` |
| 16 | `theorem` | [completed_trace_class_boundary_does_not_claim_hilbert_polya](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/completed-trace-class-boundary-does-not-claim-hilbert-polya--c6570caa02ac9461ccefd0ff.md) | 225 | `result-track:c6570caa02ac9461ccefd0fffc382afc7103911c42b3debe34c86953c7d4bcfa` |
| 17 | `structure` | [TorsionShellDeterminantTransferBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/torsionshelldeterminanttransferboundary--963be9c6a427b93c830d5228.md) | 232 | `declaration-track:963be9c6a427b93c830d5228e31621c38754a51fc97a10bd42223ab97941b23d` |
| 18 | `def` | [defaultTorsionShellDeterminantTransferBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/defaulttorsionshelldeterminanttransferboundary--3bb5f255d6237e15b67dcfae.md) | 248 | `declaration-track:3bb5f255d6237e15b67dcfaebe248e14e54d1f48bb20062ec103d31730f9119e` |
| 19 | `def` | [completedTorsionShellDeterminantTransferBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/completedtorsionshelldeterminanttransferboundary--8729daf40042929acefbfc75.md) | 261 | `declaration-track:8729daf40042929acefbfc75c761d58939dfae8bf580cbe89abd68df29646bb9` |
| 20 | `theorem` | [shell_trace_class_alone_does_not_complete_determinant_exactness](../../../../../mathematics/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/declarations/shell-trace-class-alone-does-not-complete-determinant-exactness--dad6a36224e5f84997f0fa5a.md) | 274 | `result-track:dad6a36224e5f84997f0fa5aaefff23d9bb9c066ef09a0db62597bea77d505c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
