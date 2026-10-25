# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Arithmetic.Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80113af484c588239e673efe5d17a2f8db376c20",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80113af484c588239e673efe5d17a2f8db376c20`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Card` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Finset.exists_disjoint_union_of_even_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean/declarations/finset-exists-disjoint-union-of-even-card--394a4f27ca19887ba7b74660.md) | 35 | `result-track:394a4f27ca19887ba7b74660c1f90b1555fe5420de3530a4bba671bd7d07497a` |
| 2 | `theorem` | [Finset.exists_disjoint_union_of_even_card_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean/declarations/finset-exists-disjoint-union-of-even-card-iff--2feb9132bd7748d5d51faf27.md) | 41 | `result-track:2feb9132bd7748d5d51faf271b3c46e43784ddb3facf734bb7bf19c47f96285a` |
| 3 | `theorem` | [Infinite.exists_union_disjoint_cardinal_eq_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean/declarations/infinite-exists-union-disjoint-cardinal-eq-of-infinite--16a5602904363106c2631df2.md) | 53 | `result-track:16a5602904363106c2631df262e1fb2fbd00356a49adabce4224cc1fb9a4db33` |
| 4 | `theorem` | [exists_union_disjoint_cardinal_eq_of_even](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean/declarations/exists-union-disjoint-cardinal-eq-of-even--a80d38f5d588aac7089164c3.md) | 64 | `result-track:a80d38f5d588aac7089164c37bd8bf33a207e8590e56a3bffd9bf232f8d72d05` |
| 5 | `theorem` | [exists_union_disjoint_ncard_eq_of_even](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean/declarations/exists-union-disjoint-ncard-eq-of-even--c463fb2f80afc2b59cd0772f.md) | 74 | `result-track:c463fb2f80afc2b59cd0772fb1b055070522eeb792ac967fa28b0ccf1d00f4c2` |
| 6 | `theorem` | [exists_union_disjoint_cardinal_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean/declarations/exists-union-disjoint-cardinal-eq-iff--42852770024498a6b759eb2f.md) | 79 | `result-track:42852770024498a6b759eb2f50a4700561de6848673dd422aec351340fab123f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
