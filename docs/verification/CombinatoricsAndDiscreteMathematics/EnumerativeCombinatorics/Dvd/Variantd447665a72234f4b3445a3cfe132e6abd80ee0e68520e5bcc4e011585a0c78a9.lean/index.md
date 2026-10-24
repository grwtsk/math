# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Dvd.Variantd447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37ff1fb69906d18eb8fc22625fce4c220008fac3",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Dvd/Variantd447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Dvd/Variantd447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Dvd/Variantd447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37ff1fb69906d18eb8fc22625fce4c220008fac3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Dvd/Variantd447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Dvd/Variantd447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Factorial` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dvd_choose_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Dvd/Variantd447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9.lean/declarations/dvd-choose-add--b7345ee5c27dc48bd6cf5010.md) | 20 | `result-track:b7345ee5c27dc48bd6cf501088479c12bc8c03b4219993943a9a8c567b6be1b2` |
| 2 | `lemma` | [dvd_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Dvd/Variantd447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9.lean/declarations/dvd-choose--5e0e9f91e9116aa5e7608a3b.md) | 27 | `result-track:5e0e9f91e9116aa5e7608a3b37a14998996b5f9e98d09e2123ab18572308dba9` |
| 3 | `lemma` | [dvd_choose_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Dvd/Variantd447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9.lean/declarations/dvd-choose-self--e4d33e5b221ffd5c240e746c.md) | 31 | `result-track:e4d33e5b221ffd5c240e746c46b583558d7457ce45225be87dabaf6c34537787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
