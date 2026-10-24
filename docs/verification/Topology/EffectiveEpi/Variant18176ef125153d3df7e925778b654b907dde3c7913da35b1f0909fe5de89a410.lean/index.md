# Verification target: GRWTSK.Topology.EffectiveEpi.Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c014885ff7e9dcd3875ba6cdbe5721715b00849c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/EffectiveEpi/Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/EffectiveEpi/Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410.lean/index.md) · [Full source](../../../../mathematics/Topology/EffectiveEpi/Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c014885ff7e9dcd3875ba6cdbe5721715b00849c`.

Source path: `GRWTSK/Topology/EffectiveEpi/Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/EffectiveEpi/Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.Comparison` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.Limits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [effectiveEpiStruct](../../../../mathematics/Topology/EffectiveEpi/Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410.lean/declarations/effectiveepistruct--ec526afede43dcf559ca432f.md) | 40 | `declaration-track:ec526afede43dcf559ca432f35429ad7d8bd92281a05cfdbcc1c313c2f92166e` |
| 2 | `theorem` | [preregular](../../../../mathematics/Topology/EffectiveEpi/Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410.lean/declarations/preregular--c919ceff57ad1698cd5fe3b2.md) | 70 | `result-track:c919ceff57ad1698cd5fe3b2d4ac801a6fc7bbff299e5becc4e97238bab5b7e3` |
| 3 | `theorem` | [precoherent](../../../../mathematics/Topology/EffectiveEpi/Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410.lean/declarations/precoherent--dc443ebfdbbb9f1cb0e033ad.md) | 81 | `result-track:dc443ebfdbbb9f1cb0e033ad96cb272f1fdbc409cf0339cf36ec3d995e8bffbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
