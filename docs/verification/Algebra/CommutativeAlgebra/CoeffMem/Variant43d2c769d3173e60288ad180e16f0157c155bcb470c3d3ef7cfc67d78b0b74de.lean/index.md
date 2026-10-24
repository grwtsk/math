# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CoeffMem.Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c59f28d9f5dc670b87a020d7a07f00f672ea4920",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CoeffMem/Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffMem/Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffMem/Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c59f28d9f5dc670b87a020d7a07f00f672ea4920`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CoeffMem/Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CoeffMem/Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Div` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [coeff_divModByMonicAux_mem_span_pow_mul_span](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffMem/Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean/declarations/coeff-divmodbymonicaux-mem-span-pow-mul-span--42b23f6cca9da13515a99960.md) | 28 | `result-track:42b23f6cca9da13515a99960ca97d49d2ee28a07377c84d0da83ba2c8a0d5c11` |
| 2 | `lemma` | [coeff_modByMonic_mem_pow_natDegree_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffMem/Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean/declarations/coeff-modbymonic-mem-pow-natdegree-mul--814681ea8cf5babac6d62bb3.md) | 80 | `result-track:814681ea8cf5babac6d62bb33a6dcfb34f70285f432fca4902bf336bf0356098` |
| 3 | `lemma` | [coeff_divByMonic_mem_pow_natDegree_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffMem/Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean/declarations/coeff-divbymonic-mem-pow-natdegree-mul--f165c5086a26c4b7bcf39931.md) | 95 | `result-track:f165c5086a26c4b7bcf39931e634431a3c76f55b804f811d7b517e551483185f` |
| 4 | `lemma` | [idealSpan_range_update_divByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffMem/Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean/declarations/idealspan-range-update-divbymonic--65b2f28b87b911020f00a720.md) | 108 | `result-track:65b2f28b87b911020f00a720a7f105ee48564c9ee3a00ad2ac357232997a0d83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
