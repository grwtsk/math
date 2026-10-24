# Verification target: GRWTSK.Algebra.Reduced.Variantc6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be125e7a5e6ee2112894685437ebed442f8acf07",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Reduced/Variantc6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Reduced/Variantc6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Reduced/Variantc6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be125e7a5e6ee2112894685437ebed442f8acf07`.

Source path: `GRWTSK/Algebra/Reduced/Variantc6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Reduced/Variantc6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isReduced_localizationPreserves](../../../../mathematics/Algebra/Reduced/Variantc6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a.lean/declarations/isreduced-localizationpreserves--c3b4ad6138aca52e4f8a7a13.md) | 24 | `result-track:c3b4ad6138aca52e4f8a7a13f5ac08a203ac3e604920dabefa293dece1b5257c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Reduced/Variantc6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a.lean/declarations/instance--0f8e32533f74a0ffd4d0d84b.md) | 43 | `declaration-track:0f8e32533f74a0ffd4d0d84bc16052f46ce41388b133ce843ed3d1a61373ce4d` |
| 3 | `theorem` | [isReduced_ofLocalizationMaximal](../../../../mathematics/Algebra/Reduced/Variantc6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a.lean/declarations/isreduced-oflocalizationmaximal--05bed9714f2469dc5c407e34.md) | 47 | `result-track:05bed9714f2469dc5c407e342e982ce8e6bc577f4bb5b697d31ae3d19487ae4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
