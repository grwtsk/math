# Verification target: GRWTSK.Algebra.UniversalAlgebra.Defs.Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa01e789310048525a5367c181851154e13f5e23",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa01e789310048525a5367c181851154e13f5e23`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Archimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean/declarations/archimedean--378086df75a8978cb5eb2bd1.md) | 40 | `declaration-track:378086df75a8978cb5eb2bd16c880451c3369266eb062df2fac10f58581889c0` |
| 2 | `class` | [MulArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean/declarations/mularchimedean--c14c8775d4971e5a22944ef6.md) | 48 | `declaration-track:c14c8775d4971e5a22944ef65a828f0ec13f9ae62c06b25ccc45a0b5339498bb` |
| 3 | `theorem` | [exists_lt_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean/declarations/exists-lt-pow--43661bcaca74fb71dc9f8013.md) | 57 | `result-track:43661bcaca74fb71dc9f801311d6571ab838747ae6fa1d4823d1d8a9ac2fa0f4` |
| 4 | `theorem` | [exists_pow_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean/declarations/exists-pow-lt--a2afea616ba7b3c6d4307968.md) | 67 | `result-track:a2afea616ba7b3c6d43079686805c916c08a54fb40d6bb96e050d2cbf6cd674f` |
| 5 | `theorem` | [exists_nat_ge](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean/declarations/exists-nat-ge--a8a90c96da8a453f619b5785.md) | 75 | `result-track:a8a90c96da8a453f619b57857cdcc30ba912c89c1c5e188208d6ab0ed244878b` |
| 6 | `theorem` | [exists_nat_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean/declarations/exists-nat-gt--bf7466326cc79570d3a026f8.md) | 84 | `result-track:bf7466326cc79570d3a026f8d9b34e917682a7832e6587aa9869e71edfaeb77f` |
| 7 | `theorem` | [exists_int_ge](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean/declarations/exists-int-ge--8578428c86a1f5fd07760e69.md) | 92 | `result-track:8578428c86a1f5fd07760e692de8792985a670aa7de4423f8e6e9b24de69b005` |
| 8 | `theorem` | [exists_int_le](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean/declarations/exists-int-le--521a6a3ab52f048bb09cff66.md) | 94 | `result-track:521a6a3ab52f048bb09cff66be92491fcfc9916b5aaa1945c00dcd49c162b08b` |
| 9 | `theorem` | [exists_int_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean/declarations/exists-int-gt--03bbdf869faae503a3203f0a.md) | 102 | `result-track:03bbdf869faae503a3203f0ac3201bd6ac85428ba93fbe90a36e26d386e8e44b` |
| 10 | `theorem` | [exists_int_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variante5db253974264e9a86112127c8d471524f35d9d9f794ae7c24f5f8e9611148b6.lean/declarations/exists-int-lt--f039fd425d2df7271c23adbf.md) | 106 | `result-track:f039fd425d2df7271c23adbf57bb142602b953ce3e71ff643c4503013845d75a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
