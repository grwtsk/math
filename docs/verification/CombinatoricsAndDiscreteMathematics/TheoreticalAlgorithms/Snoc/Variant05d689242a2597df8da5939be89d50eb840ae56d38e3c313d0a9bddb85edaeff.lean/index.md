# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Snoc.Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8a9f136b63b25c457ddb0725459dd990554ecb0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8a9f136b63b25c457ddb0725459dd990554ecb0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/snoc--6913d80740e030467806c29e.md) | 34 | `declaration-track:6913d80740e030467806c29ea91f361f9dca8c5bcc31b028c14141a956174043` |
| 2 | `theorem` | [snoc_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/snoc-cons--6580ddb06b74fad6f482a0dc.md) | 44 | `result-track:6580ddb06b74fad6f482a0dc4eb0cfda233b5777a2b916a64f9166a52b546ecb` |
| 3 | `theorem` | [snoc_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/snoc-nil--2885dcd06ce71a31496344ba.md) | 48 | `result-track:2885dcd06ce71a31496344ba889e861980ca42d19d8eb0602992bed64fc36aa0` |
| 4 | `theorem` | [reverse_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/reverse-cons--f511ea26220f98880f29e6f8.md) | 52 | `result-track:f511ea26220f98880f29e6f86a011b6c60bfa14f0d8da2a2e9f5399d98011483` |
| 5 | `theorem` | [reverse_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/reverse-snoc--800f005493e7c86c71768dc1.md) | 58 | `result-track:800f005493e7c86c71768dc1ce9989025d5478e1f9be2b07bd4235d6a383c24e` |
| 6 | `theorem` | [replicate_succ_to_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/replicate-succ-to-snoc--cb98fd524aa2cc83efb05ecd.md) | 64 | `result-track:cb98fd524aa2cc83efb05ecd2424ade3f6c434ba1f753b15d15dc0012e2a859a` |
| 7 | `def` | [revInductionOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/revinductionon--b4bca2ca901b82ae2df5458b.md) | 87 | `declaration-track:b4bca2ca901b82ae2df5458b308f53ebac0700357563325bdafec9cf6a7b022d` |
| 8 | `def` | [revInductionOn₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/revinductionon--746f742c4b11d555bfd4f686.md) | 100 | `declaration-track:746f742c4b11d555bfd4f6864cad9dcdb9759f21d30c4b64521a2797c475fbb5` |
| 9 | `def` | [revCasesOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/revcaseson--f9ab2aa3dda8b8f5d17b7a02.md) | 117 | `declaration-track:f9ab2aa3dda8b8f5d17b7a02d4d184f11bb325c9226dccb08b2c9e2fc52c4f37` |
| 10 | `theorem` | [map_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/map-snoc--20b7c2ab6aae694d3164a5c9.md) | 130 | `result-track:20b7c2ab6aae694d3164a5c9ca70aed71663f69981f882ec42e0785ca0e85ff4` |
| 11 | `theorem` | [mapAccumr_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/mapaccumr-nil--dbb9b2b0b1317538a9c2182e.md) | 134 | `result-track:dbb9b2b0b1317538a9c2182ea4fb045ff9a1266934ccf0787c3282baae64c5e8` |
| 12 | `theorem` | [mapAccumr_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/mapaccumr-snoc--dd0114150136dbe0d320557c.md) | 138 | `result-track:dd0114150136dbe0d320557ca603c8532d2fb83ac391d3014a0f91b114bd3f3f` |
| 13 | `theorem` | [map₂_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/map-snoc--43f5c610985949a75aabe127.md) | 150 | `result-track:43f5c610985949a75aabe1270ec68cca1c85d0b657b12193851f0131156a6829` |
| 14 | `theorem` | [mapAccumr₂_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/mapaccumr-nil--fcb90de7ec30c5cac5ce449b.md) | 155 | `result-track:fcb90de7ec30c5cac5ce449b9d68be1a9ebe93339113f3daca33e2e3289469de` |
| 15 | `theorem` | [mapAccumr₂_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant05d689242a2597df8da5939be89d50eb840ae56d38e3c313d0a9bddb85edaeff.lean/declarations/mapaccumr-snoc--08a16569d267e3492222d38d.md) | 160 | `result-track:08a16569d267e3492222d38d4c9e267bc142286135f7195dce5f3eacf1069ef5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
