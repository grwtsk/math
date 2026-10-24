# Verification target: GRWTSK.Analysis.MeasureTheory.RadonNikodym.Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b22a2fd8433e6af553a819db0af5731f6beb56b5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b22a2fd8433e6af553a819db0af5731f6beb56b5`.

Source path: `GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Decomposition.Lebesgue` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [withDensity_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean/declarations/withdensity-rnderiv-eq--f7ffee96d45a33700054ca9f.md) | 54 | `result-track:f7ffee96d45a33700054ca9fe37e907ff0557ebb514e0764cba2d5e2ce427e6a` |
| 2 | `theorem` | [absolutelyContinuous_iff_withDensity_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean/declarations/absolutelycontinuous-iff-withdensity-rnderiv-eq--eebf61d25ce8c712eacca81f.md) | 73 | `result-track:eebf61d25ce8c712eacca81f3077e83f0a32573d4b540c4fbf91cb799a595a13` |
| 3 | `theorem` | [withDensity_rnDeriv_toReal_eq](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean/declarations/withdensity-rnderiv-toreal-eq--bc5651b9b4fc0c9f0fc99716.md) | 78 | `result-track:bc5651b9b4fc0c9f0fc997163919c2916e8238005cb685ec4441c10cae780b13` |
| 4 | `theorem` | [withDensityᵥ_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean/declarations/withdensity-rnderiv-eq--f0506dd2a561a34e7b891455.md) | 95 | `result-track:f0506dd2a561a34e7b89145565b07e3e6e7e62fab0e36fdd92bd6c3e75158bd9` |
| 5 | `theorem` | [absolutelyContinuous_iff_withDensityᵥ_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean/declarations/absolutelycontinuous-iff-withdensity-rnderiv-eq--d213f19db4e32d52fb5ef972.md) | 117 | `result-track:d213f19db4e32d52fb5ef9725c17cdb08e09710bad781933cc17831b0afc1d77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
