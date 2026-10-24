# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Quasiconvex.Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef20ac0f1feb269fb7106872f41e8bc71cdbb76f",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef20ac0f1feb269fb7106872f41e8bc71cdbb76f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuasiconvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasiconvexon--91519832b3dc6582fc116f2e.md) | 48 | `declaration-track:91519832b3dc6582fc116f2e45342f98b90e89112e60ce1a0eee81b605fd587b` |
| 2 | `def` | [QuasiconcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasiconcaveon--e7e912f7e7a551e460d2a45d.md) | 53 | `declaration-track:e7e912f7e7a551e460d2a45da7d65124e432112ba7cd434c531b9120edf3b4bf` |
| 3 | `def` | [QuasilinearOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasilinearon--3435f5cd7008cf8741f8458c.md) | 59 | `declaration-track:3435f5cd7008cf8741f8458c618891e0ffd8708bf71e6992d458b2042b4cabb0` |
| 4 | `theorem` | [QuasiconvexOn.dual](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasiconvexon-dual--292cf2f2733b0c7d1e43cec2.md) | 64 | `result-track:292cf2f2733b0c7d1e43cec24cdafab28ae8e1598141da078d0d84ef06cbc4f3` |
| 5 | `theorem` | [QuasiconcaveOn.dual](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasiconcaveon-dual--99c151283bf3fd032fa85d4e.md) | 67 | `result-track:99c151283bf3fd032fa85d4e4ba233120bc5b5ca998bc3201c9ed97b569368fa` |
| 6 | `theorem` | [QuasilinearOn.dual](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasilinearon-dual--adcef81417e06c6a9f396d73.md) | 70 | `result-track:adcef81417e06c6a9f396d73d31cba10f8aedd7633a8474513e0c9174123102f` |
| 7 | `theorem` | [Convex.quasiconvexOn_of_convex_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/convex-quasiconvexon-of-convex-le--0e25673fc5fe4c4fdc4b9dda.md) | 73 | `result-track:0e25673fc5fe4c4fdc4b9dda20e7aa1e6c83bc379a1e96b74a16282098c1eee0` |
| 8 | `theorem` | [Convex.quasiconcaveOn_of_convex_ge](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/convex-quasiconcaveon-of-convex-ge--ce5e91f70557a1ce1a614144.md) | 76 | `result-track:ce5e91f70557a1ce1a61414441f9217e60b04d6309f9e29fca4c538621b53507` |
| 9 | `theorem` | [QuasiconvexOn.convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasiconvexon-convex--f916c744aa9465b8d37a52dd.md) | 80 | `result-track:f916c744aa9465b8d37a52ddf12a4f6c7eb15c5ff72b22f699ab1eddeaf3ab6b` |
| 10 | `theorem` | [QuasiconcaveOn.convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasiconcaveon-convex--afe03ee88fac3d5eb583c411.md) | 85 | `result-track:afe03ee88fac3d5eb583c4110f51cc441e02ba390348dc6d63892244836eaa5c` |
| 11 | `theorem` | [QuasiconvexOn.sup](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasiconvexon-sup--d0af952536071a4d02af1e3a.md) | 94 | `result-track:d0af952536071a4d02af1e3ac1f4e9e00960190b1396f82e41e31c1ac4e41a29` |
| 12 | `theorem` | [QuasiconcaveOn.inf](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasiconcaveon-inf--b344e23e372024bcc441e7e7.md) | 100 | `result-track:b344e23e372024bcc441e7e76729b781c7cc650f6bb52242b3316afd8e16705b` |
| 13 | `theorem` | [quasiconvexOn_iff_le_max](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasiconvexon-iff-le-max--e8abb14c852984f25d14f4b2.md) | 110 | `result-track:e8abb14c852984f25d14f4b2e12c01f3ec0a6fa71aa65d530373c4cc0910e321` |
| 14 | `theorem` | [quasiconcaveOn_iff_min_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasiconcaveon-iff-min-le--4a684610fdd822c45edf8f80.md) | 118 | `result-track:4a684610fdd822c45edf8f80d0296780ffa3cf28dd384c748c66e345ccf0f631` |
| 15 | `theorem` | [quasilinearOn_iff_mem_uIcc](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasilinearon-iff-mem-uicc--ba8083dc0e8baf9e53d939b0.md) | 122 | `result-track:ba8083dc0e8baf9e53d939b019c11213da83c77809aef1539eece8854b107c20` |
| 16 | `theorem` | [QuasiconvexOn.convex_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasiconvexon-convex-lt--b671afcf7c7efcd0a72bb134.md) | 129 | `result-track:b671afcf7c7efcd0a72bb134bd5846b585b733c23b28f31d98baeabfe9d43348` |
| 17 | `theorem` | [QuasiconcaveOn.convex_gt](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasiconcaveon-convex-gt--a70d63ec0048a3884aaa9b16.md) | 135 | `result-track:a70d63ec0048a3884aaa9b167d8460048ceaaa1d8bedace375678c9e10700c55` |
| 18 | `theorem` | [ConvexOn.quasiconvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/convexon-quasiconvexon--60e22709778eb45d7ea07367.md) | 147 | `result-track:60e22709778eb45d7ea07367bd4cc8f315012f0448214962d22bb9e7f4c4c851` |
| 19 | `theorem` | [ConcaveOn.quasiconcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/concaveon-quasiconcaveon--c54b8da469ef966431889a3d.md) | 150 | `result-track:c54b8da469ef966431889a3d072bcad60cb84cc61da9b6ae6f20355df7b280d1` |
| 20 | `theorem` | [MonotoneOn.quasiconvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/monotoneon-quasiconvexon--019ed93f4cd1d2647848bfa3.md) | 163 | `result-track:019ed93f4cd1d2647848bfa3d38c10822f5fa5b515869a8ce3bb7256422dd74d` |
| 21 | `theorem` | [MonotoneOn.quasiconcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/monotoneon-quasiconcaveon--80653d8b9bb32701c3e4ebdb.md) | 166 | `result-track:80653d8b9bb32701c3e4ebdb201f12fe05b7d96d54d740d93265bd4439cd2486` |
| 22 | `theorem` | [MonotoneOn.quasilinearOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/monotoneon-quasilinearon--e8f12125221ac18ab369b307.md) | 169 | `result-track:e8f12125221ac18ab369b3077ce1d253b49ccd8f9bc4ab8d2bf8566715827e9a` |
| 23 | `theorem` | [AntitoneOn.quasiconvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/antitoneon-quasiconvexon--a404884e9a376e07b41080dd.md) | 172 | `result-track:a404884e9a376e07b41080dd0e109d02ab757ab9b91acaa1a7c7cc683a3acfad` |
| 24 | `theorem` | [AntitoneOn.quasiconcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/antitoneon-quasiconcaveon--37d1d282651d18cef9eb23fc.md) | 175 | `result-track:37d1d282651d18cef9eb23fc469eee17a307572acd050eeaa6e3e45a5eeb12f1` |
| 25 | `theorem` | [AntitoneOn.quasilinearOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/antitoneon-quasilinearon--d0d3b6ab7bd31f624336e349.md) | 178 | `result-track:d0d3b6ab7bd31f624336e3498c502bd535dc30db24c3339d86945b40d22214ea` |
| 26 | `theorem` | [Monotone.quasiconvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/monotone-quasiconvexon--d421b1cea78addba849100df.md) | 181 | `result-track:d421b1cea78addba849100dfe4b5556b12109c6b9a25963a08ddc0d95f89c6a3` |
| 27 | `theorem` | [Monotone.quasiconcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/monotone-quasiconcaveon--25c47249eb4d7eec85c43b8e.md) | 184 | `result-track:25c47249eb4d7eec85c43b8efb8708402bea1e960f24372af922d4356f6f38f2` |
| 28 | `theorem` | [Monotone.quasilinearOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/monotone-quasilinearon--feca9fc119db1e69d654e49d.md) | 187 | `result-track:feca9fc119db1e69d654e49db6b1a735a11df9f18df4e0d33985a66433a76190` |
| 29 | `theorem` | [Antitone.quasiconvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/antitone-quasiconvexon--39083ede7d551f030cebcb10.md) | 190 | `result-track:39083ede7d551f030cebcb10a53deae6f2a50fa734f0be65b653589432864c51` |
| 30 | `theorem` | [Antitone.quasiconcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/antitone-quasiconcaveon--6810d357bb3dd5016b1109d0.md) | 193 | `result-track:6810d357bb3dd5016b1109d0e493832ba379361510d559b75beba06159e1c63e` |
| 31 | `theorem` | [Antitone.quasilinearOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/antitone-quasilinearon--956571802adc15d12ac86af3.md) | 196 | `result-track:956571802adc15d12ac86af38ac097723131c3bab00a3ea490959b546df2b0f8` |
| 32 | `theorem` | [QuasilinearOn.monotoneOn_or_antitoneOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasilinearon-monotoneon-or-antitoneon--27a0991376840ace04a28fbe.md) | 207 | `result-track:27a0991376840ace04a28fbe9aaa5f266360cd0fe1d33557e25c1d818acf2e24` |
| 33 | `theorem` | [quasilinearOn_iff_monotoneOn_or_antitoneOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variant106332b87b09ffee224b119a692598595b354323429c772c4924602fcc611c36.lean/declarations/quasilinearon-iff-monotoneon-or-antitoneon--ffe0d432e74ee8253b0e8056.md) | 213 | `result-track:ffe0d432e74ee8253b0e8056f03d4a559c61e83eef414487ba3201e161a3a2da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
