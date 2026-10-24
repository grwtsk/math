# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Ring.Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3adca6b0d39f5c1a331f9688098de16ae7a10db1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3adca6b0d39f5c1a331f9688098de16ae7a10db1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powMulProdOneSubPow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean/declarations/powmulprodonesubpow--ca3f8dc5656041f6a9a02960.md) | 46 | `declaration-track:ca3f8dc5656041f6a9a02960bd1aae98fac74fd0389188721098c332107849be` |
| 2 | `def` | [aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean/declarations/aux--ddc9c90b7bf91b24fc29e657.md) | 52 | `declaration-track:ddc9c90b7bf91b24fc29e657710e3d1348eddf9184392642b432bd9e8323f7b0` |
| 3 | `theorem` | [aux_sub_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean/declarations/aux-sub-aux--03c7b2831dc1136e08429151.md) | 58 | `result-track:03c7b2831dc1136e08429151a40e698a9bd72415351aee18592cb4f1735c7b29` |
| 4 | `theorem` | [tsum_powMulProdOneSubPow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean/declarations/tsum-powmulprodonesubpow--462ca6baac7fdfa2c1439771.md) | 71 | `result-track:462ca6baac7fdfa2c1439771f368e32a608645c901473d6c0c74577850b0b3e0` |
| 5 | `theorem` | [tprod_one_sub_pow_eq_powMulProdOneSubPow_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean/declarations/tprod-one-sub-pow-eq-powmulprodonesubpow-zero--e9aac4ca76890a6ae6019870.md) | 93 | `result-track:e9aac4ca76890a6ae601987003ddf9ae6e7139ed124726feda849092597b9740` |
| 6 | `theorem` | [tprod_one_sub_pow_eq_powMulProdOneSubPow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean/declarations/tprod-one-sub-pow-eq-powmulprodonesubpow--b4f7da4141b8942833db1354.md) | 118 | `result-track:b4f7da4141b8942833db1354fe14b74d3d667cc5d8afa9f32f76a69df2818cd8` |
| 7 | `theorem` | [tprod_one_sub_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean/declarations/tprod-one-sub-pow--22da880c7b03d61b54404040.md) | 146 | `result-track:22da880c7b03d61b54404040497ad8d055bdd4287c8bc04256710cc21b18dd0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
