# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Snoc.Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "400e6191966a695f57804f9440c3a7586c74c1a8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `400e6191966a695f57804f9440c3a7586c74c1a8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/snoc--7380967c205341399be6854e.md) | 26 | `declaration-track:7380967c205341399be6854e7e0fa1b4a25b3d15973322b94c880906d7462869` |
| 2 | `theorem` | [snoc_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/snoc-cons--aa9fe2dd675ed9fec1d9122c.md) | 36 | `result-track:aa9fe2dd675ed9fec1d9122c948d84f31ac2342fb03b7b20267b64ee00308a00` |
| 3 | `theorem` | [snoc_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/snoc-nil--14e60b27ef41232aab97c7f7.md) | 40 | `result-track:14e60b27ef41232aab97c7f7fe3ef8a78f96d31b8c4ac9e5b24c597cb8a3a9d6` |
| 4 | `theorem` | [reverse_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/reverse-cons--6afd29e38e35ed3e00367c65.md) | 44 | `result-track:6afd29e38e35ed3e00367c6560da636c16197aafa19a8fe4309aaf1e11d1a2ce` |
| 5 | `theorem` | [reverse_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/reverse-snoc--66293b77551af1b07830c3d8.md) | 50 | `result-track:66293b77551af1b07830c3d8308ac8798b89bddfd45716fdecacafa1324eed87` |
| 6 | `theorem` | [replicate_succ_to_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/replicate-succ-to-snoc--a3af4c559de7f18526d3a29b.md) | 56 | `result-track:a3af4c559de7f18526d3a29be0947e98c9a6ae222a8ac7340754276c2a2fafca` |
| 7 | `def` | [revInductionOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/revinductionon--c35a593f8d458c8c7b929908.md) | 79 | `declaration-track:c35a593f8d458c8c7b9299089f2782877275cbbe127438ac856abc4e1f77410e` |
| 8 | `def` | [revInductionOn₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/revinductionon--c10878d7a3a82f1d589ccf50.md) | 92 | `declaration-track:c10878d7a3a82f1d589ccf5037cf073d6c94fb138ae899437d1600dfa5b17fb7` |
| 9 | `def` | [revCasesOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/revcaseson--b4912c15e58b42609b826615.md) | 109 | `declaration-track:b4912c15e58b42609b826615b4e936954716884433fd846af7c78b02bb9178c1` |
| 10 | `theorem` | [map_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/map-snoc--adaee2c9b883f46e33dcee20.md) | 122 | `result-track:adaee2c9b883f46e33dcee200774219b067b24fd366ec1e6220f6bb54dd3e59a` |
| 11 | `theorem` | [mapAccumr_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/mapaccumr-nil--78b25316687d3790c369fac2.md) | 126 | `result-track:78b25316687d3790c369fac2cac0c0c0436c4f97c4937e05ca18e3ee8ec9df7b` |
| 12 | `theorem` | [mapAccumr_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/mapaccumr-snoc--6245dfbc431b52f82f64bf45.md) | 130 | `result-track:6245dfbc431b52f82f64bf45ecbca2359708e014843b50e8ceb2904505987bad` |
| 13 | `theorem` | [map₂_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/map-snoc--ec83da87dc2bcd260749ecdc.md) | 142 | `result-track:ec83da87dc2bcd260749ecdc0bb1834e18d9c5ff427c9eaa659ab65f15ff9b0d` |
| 14 | `theorem` | [mapAccumr₂_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/mapaccumr-nil--c8ced1a0b3af72abb4babcfa.md) | 147 | `result-track:c8ced1a0b3af72abb4babcfafb0adbac68cd7154976e061b48a90b130059cc1d` |
| 15 | `theorem` | [mapAccumr₂_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/declarations/mapaccumr-snoc--ff0e5b153d807db3e46e4db4.md) | 152 | `result-track:ff0e5b153d807db3e46e4db41066c2e6681b06fd8a8446dff5d4b279b6eb0dfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
