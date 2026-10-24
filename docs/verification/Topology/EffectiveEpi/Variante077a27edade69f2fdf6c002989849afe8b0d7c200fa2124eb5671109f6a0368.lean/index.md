# Verification target: GRWTSK.Topology.EffectiveEpi.Variante077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91a9ffc3bf187f486ef58ce817e240f52900e3e8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/EffectiveEpi/Variante077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/EffectiveEpi/Variante077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368.lean/index.md) · [Full source](../../../../mathematics/Topology/EffectiveEpi/Variante077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91a9ffc3bf187f486ef58ce817e240f52900e3e8`.

Source path: `GRWTSK/Topology/EffectiveEpi/Variante077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/EffectiveEpi/Variante077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.Comparison` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.Limits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [effectiveEpiStruct](../../../../mathematics/Topology/EffectiveEpi/Variante077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368.lean/declarations/effectiveepistruct--81e9a5544383a59263f04885.md) | 32 | `declaration-track:81e9a5544383a59263f0488596743e195380ea3ddfef1e5c92504896c0d1b192` |
| 2 | `theorem` | [preregular](../../../../mathematics/Topology/EffectiveEpi/Variante077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368.lean/declarations/preregular--aad11a2ec7ef21bbc963ab6f.md) | 62 | `result-track:aad11a2ec7ef21bbc963ab6fd2d1a5e08adf7d389a5e00fc4191f528f6727560` |
| 3 | `theorem` | [precoherent](../../../../mathematics/Topology/EffectiveEpi/Variante077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368.lean/declarations/precoherent--e755efcd44f2d3ae2ee9316d.md) | 73 | `result-track:e755efcd44f2d3ae2ee9316decff01e80a72e2b37934e02d113a1335d35216f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
