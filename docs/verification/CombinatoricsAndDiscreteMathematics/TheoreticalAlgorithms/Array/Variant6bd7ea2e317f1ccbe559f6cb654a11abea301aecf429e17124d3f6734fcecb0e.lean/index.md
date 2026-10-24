# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c96bc83e7bcc177a15ba92e38d1a3dbff7c7dc35",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c96bc83e7bcc177a15ba92e38d1a3dbff7c7dc35`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compareLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean/declarations/comparelex--930a3e2bdab522cda9b1d7e5.md) | 28 | `declaration-track:930a3e2bdab522cda9b1d7e54acb0062da6c4672eb9896b6cf19df03edff775f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean/declarations/instance--618b7680fa7ab2ff2ba8110c.md) | 42 | `declaration-track:618b7680fa7ab2ff2ba8110c08b6a49a30931ccd9e2d73fd57e56bc344edaca7` |
| 3 | `theorem` | [compare_eq_compareLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean/declarations/compare-eq-comparelex--5526b4380ac5dc2918e33fc1.md) | 45 | `result-track:5526b4380ac5dc2918e33fc10b3f7ec043c886e03f018ffba160c1cdbe6e8bf2` |
| 4 | `theorem` | [compareLex.go_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean/declarations/comparelex-go-succ--878f2395df4cca9f7e1fde69.md) | 48 | `result-track:878f2395df4cca9f7e1fde6912209e845985bf56f23a5136f37b3497b2a67e9e` |
| 5 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompareLex.Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.List.compareLex_eq_compareLex_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-co--4217572acf07afc924bfc536.md) | 57 | `result-track:4217572acf07afc924bfc536ee48370a0b6aede742453d3373d30cd5c35bbf0f` |
| 6 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompareLex.Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.List.compare_eq_compare_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-co--4f195312b7fd1a06e7d60761.md) | 73 | `result-track:4f195312b7fd1a06e7d60761c6143e2227ca0e6956f5df17de5a1819edb1b671` |
| 7 | `theorem` | [compareLex_eq_compareLex_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean/declarations/comparelex-eq-comparelex-tolist--1e0e89a08bbc33190e3c87bb.md) | 77 | `result-track:1e0e89a08bbc33190e3c87bb14bba726fd7a3ac44da71e43294895dc94939251` |
| 8 | `theorem` | [compare_eq_compare_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean/declarations/compare-eq-compare-tolist--c1d0d671483c05900189d282.md) | 81 | `result-track:c1d0d671483c05900189d28215b4e56749944787d8e599e9fe258d6234fcd82a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
