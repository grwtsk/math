# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Lemmas.Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3c76238c61f09776c780581707348ccd7e97037",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3c76238c61f09776c780581707348ccd7e97037`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Nonneg.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean/declarations/cast-pow--5852f4d53e72498cf0e035ff.md) | 34 | `result-track:5852f4d53e72498cf0e035fff804ca296db1394c5da91a797cab14d8c41bf499` |
| 2 | `theorem` | [cast_inv_nat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean/declarations/cast-inv-nat--1f924ff99d654eb6c2bd39a9.md) | 39 | `result-track:1f924ff99d654eb6c2bd39a97be30a1c04896295ec451dbe7a517ffc337bc341` |
| 3 | `theorem` | [cast_inv_int](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean/declarations/cast-inv-int--ae1e4e23d48a78d56548e691.md) | 46 | `result-track:ae1e4e23d48a78d56548e69157eea458cf6408596038dd535996c89bd2ffa068` |
| 4 | `theorem` | [cast_nnratCast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean/declarations/cast-nnratcast--b2b260bd3880179f95170f4d.md) | 52 | `result-track:b2b260bd3880179f95170f4da28c0b41025f8465dd4597ed592e157b07e2c008` |
| 5 | `theorem` | [cast_ofScientific](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean/declarations/cast-ofscientific--55f10888ac2a4c78b13ff280.md) | 63 | `result-track:55f10888ac2a4c78b13ff280f7728af2e35eab46cee8d231c205c1dcef581013` |
| 6 | `theorem` | [cast_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean/declarations/cast-pow--4d243235a7d8d7aa746f6d6d.md) | 72 | `result-track:4d243235a7d8d7aa746f6d6d7dc2bac0f1ee1180980d462348e7fa71adedfdca` |
| 7 | `theorem` | [cast_zpow_of_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean/declarations/cast-zpow-of-ne-zero--24f2c01d12e54abb0e487a0b.md) | 77 | `result-track:24f2c01d12e54abb0e487a0b6cd89f33759bd840f21c29371115378f070c0024` |
| 8 | `theorem` | [Nonneg.coe_ofScientific](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean/declarations/nonneg-coe-ofscientific--415425e8fc9b6173b4f0e144.md) | 86 | `result-track:415425e8fc9b6173b4f0e1440d956b412b3109057ecd8f253e093dae21f4a675` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
