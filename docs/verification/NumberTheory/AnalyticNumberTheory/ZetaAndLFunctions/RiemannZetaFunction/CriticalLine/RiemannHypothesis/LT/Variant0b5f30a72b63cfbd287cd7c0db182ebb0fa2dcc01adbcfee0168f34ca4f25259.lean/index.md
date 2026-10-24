# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LT.Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ab55b45baabea0bbf3b43dcb104900ab981777e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LT/Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LT/Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LT/Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ab55b45baabea0bbf3b43dcb104900ab981777e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LT/Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LT/Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [re_LT](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LT/Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259.lean/declarations/re-lt--dcfbd786b0d5f1b871692f54.md) | 17 | `result-track:dcfbd786b0d5f1b871692f54e30d87211d00eba1902f40aa5f9dd54f366bbe96` |
| 2 | `lemma` | [im_LT](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LT/Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259.lean/declarations/im-lt--5f0960a5baad9273c5959f4e.md) | 19 | `result-track:5f0960a5baad9273c5959f4ee6834e685c48fd5184cfb1b7fe9c7cc7cbd3c42f` |
| 3 | `lemma` | [abs_im_LT_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LT/Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259.lean/declarations/abs-im-lt-le--3aba4b2fd95e4ba3dfbf12ca.md) | 21 | `result-track:3aba4b2fd95e4ba3dfbf12ca50610be9377c622e1eadd50233a342c31f94e5bb` |
| 4 | `lemma` | [norm_LT_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LT/Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259.lean/declarations/norm-lt-ge--8a2f0636acdc62da95a1cc40.md) | 25 | `result-track:8a2f0636acdc62da95a1cc40d2ef462ee3414919afb97306e193c0f994a4cb1d` |
| 5 | `lemma` | [LT_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LT/Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259.lean/declarations/lt-ne-zero--3bacbc70f7674590aea0a84e.md) | 29 | `result-track:3bacbc70f7674590aea0a84eb267f9fcc2528f908b990b257ba355e2287fc9e9` |
| 6 | `lemma` | [LT_add_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LT/Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259.lean/declarations/lt-add-ne-zero--fd281aaf329f14546df91ae4.md) | 35 | `result-track:fd281aaf329f14546df91ae46539e309d4ad7a26c6083a8c60af1f38901924cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
