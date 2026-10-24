# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SymmDiff.Variant61183d39707f9812f338912e5df932f835d93e7744246c2e300a897ae15c6e63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b38f1059010e12a59ca3f98e723490e0abffd9a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant61183d39707f9812f338912e5df932f835d93e7744246c2e300a897ae15c6e63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant61183d39707f9812f338912e5df932f835d93e7744246c2e300a897ae15c6e63.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant61183d39707f9812f338912e5df932f835d93e7744246c2e300a897ae15c6e63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b38f1059010e12a59ca3f98e723490e0abffd9a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant61183d39707f9812f338912e5df932f835d93e7744246c2e300a897ae15c6e63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant61183d39707f9812f338912e5df932f835d93e7744246c2e300a897ae15c6e63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.SymmDiff` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant61183d39707f9812f338912e5df932f835d93e7744246c2e300a897ae15c6e63.lean/declarations/mem-symmdiff--31d07b7c2143a743f158a5ab.md) | 40 | `result-track:31d07b7c2143a743f158a5ab3481682215726ebf96ebd70b1566ce70a14a87b3` |
| 2 | `theorem` | [coe_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant61183d39707f9812f338912e5df932f835d93e7744246c2e300a897ae15c6e63.lean/declarations/coe-symmdiff--5ea00c7aa7ecf6e2b76699f7.md) | 44 | `result-track:5ea00c7aa7ecf6e2b76699f7af3c824e32afe489187b71828ea96836c132f207` |
| 3 | `lemma` | [symmDiff_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant61183d39707f9812f338912e5df932f835d93e7744246c2e300a897ae15c6e63.lean/declarations/symmdiff-eq-empty--1ae7467b58b69554493251e2.md) | 47 | `result-track:1ae7467b58b69554493251e268004b60d74ae412cad92287315bc64c15c1b6c7` |
| 4 | `lemma` | [symmDiff_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant61183d39707f9812f338912e5df932f835d93e7744246c2e300a897ae15c6e63.lean/declarations/symmdiff-nonempty--7a7da117c36e081c29a71e1e.md) | 48 | `result-track:7a7da117c36e081c29a71e1eb270df130745aa3713dec11541bb7e753419b3f2` |
| 5 | `theorem` | [image_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant61183d39707f9812f338912e5df932f835d93e7744246c2e300a897ae15c6e63.lean/declarations/image-symmdiff--64342a7054ab27460f5161f2.md) | 51 | `result-track:64342a7054ab27460f5161f2fdbc09b1ab5365881f719128cc5b674de149cc81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
