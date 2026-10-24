# Verification target: GRWTSK.Topology.GeneralTopology.IsPowMulFaithful.Variant4e3c8b135faac4b662732b085084cc24a5526ea3b2aec391d94494f12757ef74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b98594e903287b40cbcd617b83c670ff6bec4ef",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsPowMulFaithful/Variant4e3c8b135faac4b662732b085084cc24a5526ea3b2aec391d94494f12757ef74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsPowMulFaithful/Variant4e3c8b135faac4b662732b085084cc24a5526ea3b2aec391d94494f12757ef74.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsPowMulFaithful/Variant4e3c8b135faac4b662732b085084cc24a5526ea3b2aec391d94494f12757ef74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b98594e903287b40cbcd617b83c670ff6bec4ef`.

Source path: `GRWTSK/Topology/GeneralTopology/IsPowMulFaithful/Variant4e3c8b135faac4b662732b085084cc24a5526ea3b2aec391d94494f12757ef74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsPowMulFaithful/Variant4e3c8b135faac4b662732b085084cc24a5526ea3b2aec391d94494f12757ef74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Unbundled.AlgebraNorm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contraction_of_isPowMul_of_boundedWrt](../../../../../mathematics/Topology/GeneralTopology/IsPowMulFaithful/Variant4e3c8b135faac4b662732b085084cc24a5526ea3b2aec391d94494f12757ef74.lean/declarations/contraction-of-ispowmul-of-boundedwrt--afbe6abdde19aba7375d53ed.md) | 40 | `result-track:afbe6abdde19aba7375d53ede81075ca35182cd049e9e99f7b11167c49ce9ef4` |
| 2 | `theorem` | [contraction_of_isPowMul](../../../../../mathematics/Topology/GeneralTopology/IsPowMulFaithful/Variant4e3c8b135faac4b662732b085084cc24a5526ea3b2aec391d94494f12757ef74.lean/declarations/contraction-of-ispowmul--97a3c2eddea6b80a269aa9b0.md) | 64 | `result-track:97a3c2eddea6b80a269aa9b0d93af0987580fe62240cd9d6f216fc2264522518` |
| 3 | `theorem` | [eq_seminorms](../../../../../mathematics/Topology/GeneralTopology/IsPowMulFaithful/Variant4e3c8b135faac4b662732b085084cc24a5526ea3b2aec391d94494f12757ef74.lean/declarations/eq-seminorms--22e092ad7611a98433092d4f.md) | 70 | `result-track:22e092ad7611a98433092d4f801d124b3bc3b0f259486f6c9b89c95e0d7bd9b5` |
| 4 | `theorem` | [eq_of_powMul_faithful](../../../../../mathematics/Topology/GeneralTopology/IsPowMulFaithful/Variant4e3c8b135faac4b662732b085084cc24a5526ea3b2aec391d94494f12757ef74.lean/declarations/eq-of-powmul-faithful--b0d5e3a72a70359a192c04d5.md) | 88 | `result-track:b0d5e3a72a70359a192c04d59c249361733553787f220999c5848fe4414b18b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
