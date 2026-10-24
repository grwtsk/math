# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Arctan.Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d6ffd8c3539aa225796b0f39a9e208bff708c4d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d6ffd8c3539aa225796b0f39a9e208bff708c4d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.LogBounds` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/declarations/arctan--732b3745636f28125baf3baf.md) | 24 | `declaration-track:732b3745636f28125baf3baf47e9a2313c804c935460a8ab4af74057056d79f7` |
| 2 | `theorem` | [tan_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/declarations/tan-arctan--f9ab519644be744ed433ef8d.md) | 26 | `result-track:f9ab519644be744ed433ef8d0b80e8117fef643f9f6df47d9cf67123c8a3f2dd` |
| 3 | `lemma` | [cos_ne_zero_of_arctan_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/declarations/cos-ne-zero-of-arctan-bounds--fd7bef7422d8781a10688f39.md) | 50 | `result-track:fd7bef7422d8781a10688f397e6ec135d02cffd7c6fff85f8d2d3bb299c4ddb6` |
| 4 | `theorem` | [arctan_tan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/declarations/arctan-tan--de2812e9cffe3fb1d941c9ef.md) | 64 | `result-track:de2812e9cffe3fb1d941c9ef571505508c0607526e1e21bfeef59607b4b3d3e8` |
| 5 | `theorem` | [ofReal_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/declarations/ofreal-arctan--dd8b4afe2ed8488b364838dc.md) | 80 | `result-track:dd8b4afe2ed8488b364838dc8f61633e345e31f08a9da71ae9edc2507fe1c013` |
| 6 | `lemma` | [arg_one_add_mem_Ioo](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/declarations/arg-one-add-mem-ioo--3143ac8be89687a3ca2e2fdb.md) | 89 | `result-track:3143ac8be89687a3ca2e2fdba20c732391601609567744e03a83a1489a05c777` |
| 7 | `lemma` | [hasSum_arctan_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/declarations/hassum-arctan-aux--75f433fbd9255df23ea10f57.md) | 95 | `result-track:75f433fbd9255df23ea10f57c1d7cfc5e58ff6bb3b1459009767936c380d8795` |
| 8 | `theorem` | [hasSum_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/declarations/hassum-arctan--34e7cd19ff8a5d75da68abc0.md) | 115 | `result-track:34e7cd19ff8a5d75da68abc0a3a6853d56dff8019ae99186dbb8c6c69b4eaf81` |
| 9 | `theorem` | [Real.hasSum_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/declarations/real-hassum-arctan--31b08eb4080ec55289fe9a4b.md) | 137 | `result-track:31b08eb4080ec55289fe9a4bc6c4b029b9cb0ba52ebbfd5719fcebae9bf4c206` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
