# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.RSPrimeLower.Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e427cb901f7152caa01418ccc8fe9b5f302a1eb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e427cb901f7152caa01418ccc8fe9b5f302a1eb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeNumberTheoremAnd.IEANTN.Dusart` — import line 1; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.PrimeTables` — import line 2; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LogTables` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [count_prime_le_imp_le_nth](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean/declarations/count-prime-le-imp-le-nth--8cb3b8f97e5c82eb120e1b28.md) | 9 | `result-track:8cb3b8f97e5c82eb120e1b28b99e6ef363e36b9cbf523b3aca519755442ab7eb` |
| 2 | `lemma` | [nth_prime_gt_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean/declarations/nth-prime-gt-bound--eaa1cd72c9f7544bfcb42d02.md) | 17 | `result-track:eaa1cd72c9f7544bfcb42d02e7c5a358610c349a69b04d72f62b83c10703d475` |
| 3 | `lemma` | [p_n_lower_small](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean/declarations/p-n-lower-small--3acd648900ae0938547ee49b.md) | 23 | `result-track:3acd648900ae0938547ee49bfbfdb8598b365fdb341f957cd853bdc1d6464c2f` |
| 4 | `lemma` | [pi_nth_prime'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean/declarations/pi-nth-prime--fc065a5bf899e2ca35169a8d.md) | 57 | `result-track:fc065a5bf899e2ca35169a8d002399b8f489b7ce55960a8b1c31095fb79298c4` |
| 5 | `lemma` | [p_n_lower_large](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean/declarations/p-n-lower-large--fccbfd096cbf6bdc57a8b020.md) | 66 | `result-track:fccbfd096cbf6bdc57a8b020f214bd586c3b729f3811b164825fe91639caf4d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
