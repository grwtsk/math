# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SMul.Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8ae17dc11f1df032a07763c00f622dd00f722b5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SMul/Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8ae17dc11f1df032a07763c00f622dd00f722b5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SMul/Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SMul/Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval₂_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c.lean/declarations/eval-smul--7f38e1ea3106febe6c7f0c16.md) | 40 | `result-track:7f38e1ea3106febe6c7f0c16bf19ce4bd948e7b3e99062a3b8f478c3a8e6e27a` |
| 2 | `theorem` | [eval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c.lean/declarations/eval-smul--6701aee2b05b98fd6bdddb83.md) | 54 | `result-track:6701aee2b05b98fd6bdddb83192010d715c77eb32e99c43a32da6c1e6c619df1` |
| 3 | `def` | [leval](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c.lean/declarations/leval--26860e0723f7b32321bad5c1.md) | 60 | `declaration-track:26860e0723f7b32321bad5c147bd9e7078c961fa750a0f0e885ed1233d4b3810` |
| 4 | `theorem` | [smul_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c.lean/declarations/smul-comp--2f3f7b205f5c220058ca8ed5.md) | 70 | `result-track:2f3f7b205f5c220058ca8ed5d26672b989b5272cbea8b89ca4a43e9229d3e31c` |
| 5 | `theorem` | [map_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c.lean/declarations/map-smul--bdb25d2cbd6fbab9967f6a22.md) | 82 | `result-track:bdb25d2cbd6fbab9967f6a221cf6918298bc9ac3a52cc2a187e196a094bcdbd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
