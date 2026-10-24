# Verification target: GRWTSK.Algebra.Valuation.Varianta93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c6e4814da538f98fd0fe0a6ab307470e6357ecb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Valuation/Varianta93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Valuation/Varianta93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041.lean/index.md) · [Full source](../../../../mathematics/Algebra/Valuation/Varianta93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c6e4814da538f98fd0fe0a6ab307470e6357ecb`.

Source path: `GRWTSK/Algebra/Valuation/Varianta93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Valuation/Varianta93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HahnSeries.Multiplication` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [addVal](../../../../mathematics/Algebra/Valuation/Varianta93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041.lean/declarations/addval--100bfcf86a9f0c488fd7e20e.md) | 39 | `declaration-track:100bfcf86a9f0c488fd7e20e11979401d74306a05c8c5ea99a0bbe4b330e3d41` |
| 2 | `theorem` | [addVal_apply](../../../../mathematics/Algebra/Valuation/Varianta93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041.lean/declarations/addval-apply--7601a9c3e2d45480076c0ebb.md) | 50 | `result-track:7601a9c3e2d45480076c0ebba1372353d6b9c5a3007c2997512338a7d59ad103` |
| 3 | `theorem` | [addVal_apply_of_ne](../../../../mathematics/Algebra/Valuation/Varianta93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041.lean/declarations/addval-apply-of-ne--149cb42d4e70166709e7d33c.md) | 55 | `result-track:149cb42d4e70166709e7d33c8543e214549e5cf7482e3d52682f0c1fe7d22970` |
| 4 | `theorem` | [addVal_le_of_coeff_ne_zero](../../../../mathematics/Algebra/Valuation/Varianta93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041.lean/declarations/addval-le-of-coeff-ne-zero--f02d79e36e5b2deb679ba5c9.md) | 58 | `result-track:f02d79e36e5b2deb679ba5c95db228079a97fe597407b24ad8cfaf37b96cc59a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
