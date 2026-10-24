# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Rat.Variant359cbbd45dca030b18634f298daf74ef31a4f0217af965d60b17cb3cb56bc52a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa088e54ce22843b5f0a034ed0bf2a8d8dcb4cf7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Rat/Variant359cbbd45dca030b18634f298daf74ef31a4f0217af965d60b17cb3cb56bc52a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Rat/Variant359cbbd45dca030b18634f298daf74ef31a4f0217af965d60b17cb3cb56bc52a.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Rat/Variant359cbbd45dca030b18634f298daf74ef31a4f0217af965d60b17cb3cb56bc52a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa088e54ce22843b5f0a034ed0bf2a8d8dcb4cf7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Rat/Variant359cbbd45dca030b18634f298daf74ef31a4f0217af965d60b17cb3cb56bc52a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Rat/Variant359cbbd45dca030b18634f298daf74ef31a4f0217af965d60b17cb3cb56bc52a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Int` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Rat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNormedAddCommGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Rat/Variant359cbbd45dca030b18634f298daf74ef31a4f0217af965d60b17cb3cb56bc52a.lean/declarations/instnormedaddcommgroup--68bf2a8122cc8e175b10195b.md) | 22 | `declaration-track:68bf2a8122cc8e175b10195b41997b06f579000669ebc2cc576f9f829df8c6fb` |
| 2 | `theorem` | [norm_cast_real](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Rat/Variant359cbbd45dca030b18634f298daf74ef31a4f0217af965d60b17cb3cb56bc52a.lean/declarations/norm-cast-real--48bb438a5c6286c9babc55f6.md) | 28 | `result-track:48bb438a5c6286c9babc55f69fc5b4d1c3124f85cc3571e25024de2177966574` |
| 3 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormCastReal.Variant8a9bd062ee38105c85cba48eac8edf726cb8ef3678d316fdbf9514103dfda690.Int.norm_cast_rat](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Rat/Variant359cbbd45dca030b18634f298daf74ef31a4f0217af965d60b17cb3cb56bc52a.lean/declarations/root-grwtsk-analysis-functionalanalysis-banachspaces-normedspaces-normca--bda7cfc2b51888ac980b5fe6.md) | 32 | `result-track:bda7cfc2b51888ac980b5fe68c54b44505d64bfc428c1581ba7a68a10e0486df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
