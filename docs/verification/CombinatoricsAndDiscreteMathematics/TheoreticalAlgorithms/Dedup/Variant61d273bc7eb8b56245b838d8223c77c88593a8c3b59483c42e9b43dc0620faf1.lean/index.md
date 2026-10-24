# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dedup.Variant61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0628e5becdc924ecd98556f046091526e3052dc",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0628e5becdc924ecd98556f046091526e3052dc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.MLList.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.HashMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dedupBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1.lean/declarations/dedupby--beb7d745b3f7b97c549c8648.md) | 23 | `declaration-track:beb7d745b3f7b97c549c864837f0a3c6992e38972828805086b19e47b918eb25` |
| 2 | `def` | [dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1.lean/declarations/dedup--85537e2d8db3844d9afc095b.md) | 32 | `declaration-track:85537e2d8db3844d9afc095b3a5eba17afe1cad315f34b7a45b77aa90503795c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
