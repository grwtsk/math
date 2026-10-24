# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16f701681542386359767ac1035c5deb11bc26ba",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16f701681542386359767ac1035c5deb11bc26ba`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.InsertIdx` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [setOf_mem_eq_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b.lean/declarations/setof-mem-eq-empty-iff--9c8a0142ef93c11ed8a430b1.md) | 29 | `result-track:9c8a0142ef93c11ed8a430b162ba3637673645d8c18d0e91f29ec33df87989ca` |
| 2 | `theorem` | [injOn_insertIdx_index_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b.lean/declarations/injon-insertidx-index-of-notmem--d95ef87b4791ebdbdae6c34d.md) | 34 | `result-track:d95ef87b4791ebdbdae6c34d5e12daf7a9cf732611f1b40b18a907e9dc4729be` |
| 3 | `theorem` | [foldr_range_subset_of_range_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b.lean/declarations/foldr-range-subset-of-range-subset--3525588e51786dd7ea9cec10.md) | 55 | `result-track:3525588e51786dd7ea9cec104c476125e00727e0c21ee294681c345466a81faa` |
| 4 | `theorem` | [foldl_range_subset_of_range_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b.lean/declarations/foldl-range-subset-of-range-subset--3616a3617b5475bf68d15ff6.md) | 65 | `result-track:3616a3617b5475bf68d15ff6b32973e806cbd82aeb207a4005ebb04362377ef3` |
| 5 | `theorem` | [foldr_range_eq_of_range_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b.lean/declarations/foldr-range-eq-of-range-eq--02efdeb769c75eb7c5fe2f21.md) | 74 | `result-track:02efdeb769c75eb7c5fe2f21a8f16045830a229d049f27996777b0b0a0872a13` |
| 6 | `theorem` | [foldl_range_eq_of_range_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b.lean/declarations/foldl-range-eq-of-range-eq--868b98840542aaea20542950.md) | 79 | `result-track:868b98840542aaea20542950b8682013fd2f617877518574d6aba54c052d7aee` |
| 7 | `theorem` | [mapAccumr_eq_foldr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b.lean/declarations/mapaccumr-eq-foldr--2cec2c6a3ad964a473ed9b24.md) | 93 | `result-track:2cec2c6a3ad964a473ed9b248d17a483061fa735398c962d5251f54090cd836a` |
| 8 | `theorem` | [mapAccumr₂_eq_foldr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant59def187edcd61ce78c65ae2c9190b75c5130e8ed57133d95753c9594e06bc8b.lean/declarations/mapaccumr-eq-foldr--fb8d20bcf84818b05a524572.md) | 102 | `result-track:fb8d20bcf84818b05a524572429773d9bad05c536030dc89b8c6f127547568f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
