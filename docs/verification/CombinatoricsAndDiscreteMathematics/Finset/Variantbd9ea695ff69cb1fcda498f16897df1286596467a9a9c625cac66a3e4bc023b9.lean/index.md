# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7af647d1d4adb29fecef39d6b80209b55afb853",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7af647d1d4adb29fecef39d6b80209b55afb853`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.MinMax` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Prod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [toFinset_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/declarations/tofinset-nsmul--5dcf45b25064c4161cc60f28.md) | 24 | `result-track:5dcf45b25064c4161cc60f28931177b48abac561db1655e16d1ea7dcdecd6c9b` |
| 2 | `lemma` | [toFinset_eq_singleton_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/declarations/tofinset-eq-singleton-iff--0df905d9eaa9464a243736f7.md) | 31 | `result-track:0df905d9eaa9464a243736f7b8cb5f3647180786f577f6d124b4c803a7531009` |
| 3 | `lemma` | [toFinset_card_eq_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/declarations/tofinset-card-eq-one-iff--6cc01c61a5bbd651f5fbe07b.md) | 46 | `result-track:6cc01c61a5bbd651f5fbe07b35f795e65aaf5e32244d2f6e5238ae6f6c138178` |
| 4 | `lemma` | [fold_max_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/declarations/fold-max-add--aed1d42f2b36ec9754a7917e.md) | 55 | `result-track:aed1d42f2b36ec9754a7917ee5638aeb2765f0de24559623d5862b0e33df319b` |
| 5 | `lemma` | [inf'_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/declarations/inf-pow--6dc02bbc8ecf5b65b27f69e1.md) | 61 | `result-track:6dc02bbc8ecf5b65b27f69e161569d09c8e83d9688afdf3b466ad420d203f85b` |
| 6 | `lemma` | [sup'_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/declarations/sup-pow--653eeb0ad87da3e6129c9360.md) | 66 | `result-track:653eeb0ad87da3e6129c936014bd0c950bb028c60a5104c71274ca0f11187a6d` |
| 7 | `lemma` | [sup'_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/declarations/sup-mul--8adfee4244df56c372d8e0d3.md) | 74 | `result-track:8adfee4244df56c372d8e0d33338fbb39640eabd8fed568227a9c3a7e1f877f4` |
| 8 | `lemma` | [mul_sup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/declarations/mul-sup--f4b8f3ea8f024663cdbac114.md) | 79 | `result-track:f4b8f3ea8f024663cdbac114bcc27bd023843bf4fd30c36f36699a89bbb1835a` |
| 9 | `lemma` | [sup'_add'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/declarations/sup-add--ef1cb7b2953b7c7448ec4448.md) | 89 | `result-track:ef1cb7b2953b7c7448ec4448a481f9792995b64cea74b939b3a44cbe1f02c8bc` |
| 10 | `lemma` | [add_sup''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/declarations/add-sup--82f88cef9d771be505152256.md) | 98 | `result-track:82f88cef9d771be505152256fe409e5d6da88e13aa0feb1680ad9df0b7863e47` |
| 11 | `lemma` | [sup_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/declarations/sup-add--d126a63dec376641ef9c978b.md) | 103 | `result-track:d126a63dec376641ef9c978bc571c7d6a2d88e0b1068926509736be5c5451621` |
| 12 | `lemma` | [add_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/declarations/add-sup--46262acca8ab8936cf37755e.md) | 107 | `result-track:46262acca8ab8936cf37755ed12dfff7b2a5c61dcceac07d4dcff562c962f331` |
| 13 | `lemma` | [sup_add_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantbd9ea695ff69cb1fcda498f16897df1286596467a9a9c625cac66a3e4bc023b9.lean/declarations/sup-add-sup--418241d38f24769b2dc8a076.md) | 111 | `result-track:418241d38f24769b2dc8a076c4c74fed227e24745556f96b2a807aeb8828a877` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
