# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.GaussSum.Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "292fe9d9a6816b35ec81b43de1547cae032fa227",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `292fe9d9a6816b35ec81b43de1547cae032fa227`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.GaussSum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [gaussSum_aux_of_mulShift](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a.lean/declarations/gausssum-aux-of-mulshift--13c04579f5e26254224c5628.md) | 24 | `result-track:13c04579f5e26254224c56281a6449df04bf2143aae3727f66346632d2423e46` |
| 2 | `lemma` | [factorsThrough_of_gaussSum_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a.lean/declarations/factorsthrough-of-gausssum-ne-zero--3c66065a4275cdb058296a7f.md) | 43 | `result-track:3c66065a4275cdb058296a7fb6bb2a2138adee9926e9616c6c6f7fe1978e4ddb` |
| 3 | `lemma` | [gaussSum_eq_zero_of_isPrimitive_of_not_isPrimitive](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a.lean/declarations/gausssum-eq-zero-of-isprimitive-of-not-isprimitive--0e5f7d2b990264de955e3295.md) | 53 | `result-track:0e5f7d2b990264de955e32951a8a1099838f806ae42505f189a48f197c49cde4` |
| 4 | `lemma` | [gaussSum_mulShift_of_isPrimitive](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a.lean/declarations/gausssum-mulshift-of-isprimitive--7ce749bacbf519428d767946.md) | 63 | `result-track:7ce749bacbf519428d7679460aceba86c74c342813e4e31eafaa97d6f95161eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
