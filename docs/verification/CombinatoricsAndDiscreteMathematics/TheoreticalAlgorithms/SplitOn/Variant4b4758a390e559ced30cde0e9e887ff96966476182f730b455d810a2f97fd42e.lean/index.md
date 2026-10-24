# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SplitOn.Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6148a12d504923d2217779f31d761ebf96561168",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6148a12d504923d2217779f31d761ebf96561168`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [splitOn_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean/declarations/spliton-nil--1ba36167256998ced62dc5f3.md) | 17 | `result-track:1ba36167256998ced62dc5f3024f4cdf0737d0bef968009651f3d7ffeeb44bfe` |
| 2 | `theorem` | [splitOnP_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean/declarations/splitonp-nil--c1f84d80e9e9f5f4cd4385e5.md) | 21 | `result-track:c1f84d80e9e9f5f4cd4385e559a5b9974b97d38aa58c577ba708696320605283` |
| 3 | `theorem` | [splitOnP.go_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean/declarations/splitonp-go-ne-nil--3698407d1c0a5e80d6a68834.md) | 24 | `result-track:3698407d1c0a5e80d6a68834d0052ee3e260bf602c7d6c77213f1ce2791fb306` |
| 4 | `theorem` | [splitOnP.go_acc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean/declarations/splitonp-go-acc--d5861ca3053fd72c6f2054b3.md) | 27 | `result-track:d5861ca3053fd72c6f2054b3c40bacf764e2a45d672ca16365d6c93f2b2197ae` |
| 5 | `theorem` | [splitOnP_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean/declarations/splitonp-ne-nil--2b36228b77024f4fb97e8ae1.md) | 37 | `result-track:2b36228b77024f4fb97e8ae17b7b9eb2a7165f1a6009deacc96f463b53d3defc` |
| 6 | `theorem` | [splitOnP_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean/declarations/splitonp-cons--9111b662aeb26f27c5c13343.md) | 40 | `result-track:9111b662aeb26f27c5c133436cd6e5769d9a8cb9bc304362ccd25bfe75f66d21` |
| 7 | `theorem` | [splitOnP_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean/declarations/splitonp-spec--e19f50fe164c9c3f61759a05.md) | 47 | `result-track:e19f50fe164c9c3f61759a05490e0b5e0dd9fddda7dbec7973312ab81876624b` |
| 8 | `theorem` | [splitOnP_eq_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean/declarations/splitonp-eq-single--be10edaddb7ea94b1f60a4e5.md) | 67 | `result-track:be10edaddb7ea94b1f60a4e5b1173f9e13bd856aee30465eb6c9abb908b0e1d1` |
| 9 | `theorem` | [splitOnP_first](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean/declarations/splitonp-first--d619ffbf06fdfc13d19ec078.md) | 76 | `result-track:d619ffbf06fdfc13d19ec0788c63f439c0d5ead23fe50b800fd779d55bc4eb2d` |
| 10 | `theorem` | [intercalate_splitOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean/declarations/intercalate-spliton--e1c222275fe0e7f314879914.md) | 83 | `result-track:e1c222275fe0e7f314879914281bae72f56e386309655b7f932757835eef05e6` |
| 11 | `theorem` | [splitOn_intercalate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variant4b4758a390e559ced30cde0e9e887ff96966476182f730b455d810a2f97fd42e.lean/declarations/spliton-intercalate--a61491b012204859f8426964.md) | 97 | `result-track:a61491b012204859f8426964acaf7083504f0aacef16e8c001c06f020f21b45b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
