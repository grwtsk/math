# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.Defs.Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6103e7d56f6d12407bacb1498426e317eaf047f6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6103e7d56f6d12407bacb1498426e317eaf047f6`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ModularForms.SlashInvariantForms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.CongruenceSubgroups` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gammaSet](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/declarations/gammaset--e9b34000967819e7002d7b7e.md) | 39 | `declaration-track:e9b34000967819e7002d7b7eba8711c6463223c1c35ea29f4f823ed0c181f276` |
| 2 | `lemma` | [pairwise_disjoint_gammaSet](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/declarations/pairwise-disjoint-gammaset--23a3ea0b3516951156ea0193.md) | 42 | `result-track:23a3ea0b3516951156ea01936c9edd972bb4b2924dc030b902d348e098f48d33` |
| 3 | `lemma` | [gammaSet_one_eq](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/declarations/gammaset-one-eq--4dc669b57e524edc4ea05a52.md) | 49 | `result-track:4dc669b57e524edc4ea05a529e1001fa05473483fa0ce1ef0205efd1f71e293e` |
| 4 | `def` | [gammaSet_one_equiv](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/declarations/gammaset-one-equiv--faf81d0ac759bad69b5f4283.md) | 53 | `declaration-track:faf81d0ac759bad69b5f428385fbe0409f645eb0676f3a38ea8c68bb540b9ff3` |
| 5 | `lemma` | [vecMul_SL2_mem_gammaSet](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/declarations/vecmul-sl2-mem-gammaset--c4d312a501c2e56326099c0a.md) | 63 | `result-track:c4d312a501c2e56326099c0afa841350240c81e90ebf3b9e0f26ad9ba5c6fec0` |
| 6 | `def` | [gammaSetEquiv](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/declarations/gammasetequiv--d78a7f5b0672469906b618fd.md) | 73 | `declaration-track:d78a7f5b0672469906b618fd228448d7b7dbc5ad88d1ca7dd2adef4083b8056e` |
| 7 | `def` | [eisSummand](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/declarations/eissummand--97270363060515fdd23947f8.md) | 90 | `declaration-track:97270363060515fdd23947f8946ea427f124688539f5bd1fab34d9e4b810d163` |
| 8 | `theorem` | [eisSummand_SL2_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/declarations/eissummand-sl2-apply--9c7e2f396c34164a4d7034b9.md) | 93 | `result-track:9c7e2f396c34164a4d7034b9f531ee756831670f7b21c8d33ca5744dfb3a541d` |
| 9 | `def` | [_root_.eisensteinSeries](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/declarations/root-eisensteinseries--b3469c7e6db56d22089b573d.md) | 107 | `declaration-track:b3469c7e6db56d22089b573d176ecbb6938f5a70fa674554235e60fff8247694` |
| 10 | `lemma` | [eisensteinSeries_slash_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/declarations/eisensteinseries-slash-apply--16aad001445a5780f56dd61c.md) | 109 | `result-track:16aad001445a5780f56dd61c4d2bcb7fb18855550c336b8ee1bf227d2571c764` |
| 11 | `def` | [eisensteinSeries_SIF](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/declarations/eisensteinseries-sif--35e27bd73c6e9a8dc4556dcc.md) | 120 | `declaration-track:35e27bd73c6e9a8dc4556dcc6f3a3646370b1b5f1265265298a183b27d6b4e94` |
| 12 | `lemma` | [eisensteinSeries_SIF_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.lean/declarations/eisensteinseries-sif-apply--7ad77246d56c883c3e9e4efe.md) | 125 | `result-track:7ad77246d56c883c3e9e4efe55f736cab2bcdec26565aecf740560ff9c3ca94e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
