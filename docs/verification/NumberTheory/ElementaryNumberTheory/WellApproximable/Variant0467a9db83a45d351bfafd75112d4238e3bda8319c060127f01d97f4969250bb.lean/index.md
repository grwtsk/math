# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.WellApproximable.Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a79842364041ef547caa8d2971a2d91e099837a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a79842364041ef547caa8d2971a2d91e099837a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.AddCircle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.LiminfLimsup` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [approxOrderOf](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/declarations/approxorderof--cb0cfc2e5647eaa51489a768.md) | 69 | `declaration-track:cb0cfc2e5647eaa51489a768f5694bd7c9abc948be6f34747f804c77589efb51` |
| 2 | `theorem` | [mem_approxOrderOf_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/declarations/mem-approxorderof-iff--8287ed4323f67fa9192b1098.md) | 73 | `result-track:8287ed4323f67fa9192b1098c5f1cde3e059cc0816e82c034e3af9e0e5177e04` |
| 3 | `def` | [wellApproximable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/declarations/wellapproximable--3e321f78a65574f6ef6dcab2.md) | 84 | `declaration-track:3e321f78a65574f6ef6dcab265890f11069874e72983e7c4e4a3abfc66a5ca3a` |
| 4 | `theorem` | [mem_wellApproximable_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/declarations/mem-wellapproximable-iff--7080e308b0e3f52171ecd5d1.md) | 88 | `result-track:7080e308b0e3f52171ecd5d1587a7fb7d0f8ab7acff993ad323728a7dcf15b0b` |
| 5 | `theorem` | [image_pow_subset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/declarations/image-pow-subset-of-coprime--9fad3cb439e3645b4e03830b.md) | 98 | `result-track:9fad3cb439e3645b4e03830b70282cccb9e743bbee4c7ca95c80fef8019d0f70` |
| 6 | `theorem` | [image_pow_subset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/declarations/image-pow-subset--3f2ec24aea3d90351279da0c.md) | 109 | `result-track:3f2ec24aea3d90351279da0c08305ea2d6c3703027daf5494d030b7d0531e0b7` |
| 7 | `theorem` | [smul_subset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/declarations/smul-subset-of-coprime--d4c02af51cacfdb4beb078b2.md) | 120 | `result-track:d4c02af51cacfdb4beb078b2b10b472eb8e02351e4f79d05e4a0e073b5ab1fde` |
| 8 | `theorem` | [smul_eq_of_mul_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/declarations/smul-eq-of-mul-dvd--0b19a64a75b0f7435f526207.md) | 131 | `result-track:0b19a64a75b0f7435f52620736681cd38ea5ffa6fe71121c462276cab0ca297f` |
| 9 | `theorem` | [mem_approxAddOrderOf_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/declarations/mem-approxaddorderof-iff--832ac04a7e8bcdadc5db5258.md) | 156 | `result-track:832ac04a7e8bcdadc5db5258ec0a566b257f96ba4145a2c9491e161f61b3a331` |
| 10 | `theorem` | [mem_addWellApproximable_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/declarations/mem-addwellapproximable-iff--ac635d82fb530e3e28ae595d.md) | 164 | `result-track:ac635d82fb530e3e28ae595db41986074ba81191186587f0661e37456357e744` |
| 11 | `theorem` | [addWellApproximable_ae_empty_or_univ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/declarations/addwellapproximable-ae-empty-or-univ--bc878cc881be3df5b21047d8.md) | 187 | `result-track:bc878cc881be3df5b21047d822c6310afd8f07fb011e346f81eaa3e74c425b08` |
| 12 | `lemma` | [_root_.NormedAddCommGroup.exists_norm_nsmul_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/declarations/root-normedaddcommgroup-exists-norm-nsmul-le--25c5cc58a180b602c7aa8fb0.md) | 318 | `result-track:25c5cc58a180b602c7aa8fb0c94fec43b110673cc251d4c69329e2b3ee0f8ddb` |
| 13 | `lemma` | [exists_norm_nsmul_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/declarations/exists-norm-nsmul-le--b02f0f5ce1c391284a44b2b7.md) | 355 | `result-track:b02f0f5ce1c391284a44b2b7e1f998c4e9794a86bafb226770b5bf3c7a769419` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
