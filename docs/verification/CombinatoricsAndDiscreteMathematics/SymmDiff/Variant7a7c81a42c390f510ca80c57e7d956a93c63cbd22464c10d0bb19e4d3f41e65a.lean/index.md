# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SymmDiff.Variant7a7c81a42c390f510ca80c57e7d956a93c63cbd22464c10d0bb19e4d3f41e65a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7dd78c2d46187c895e5e1c00f9b967a4e457a1a2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant7a7c81a42c390f510ca80c57e7d956a93c63cbd22464c10d0bb19e4d3f41e65a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant7a7c81a42c390f510ca80c57e7d956a93c63cbd22464c10d0bb19e4d3f41e65a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant7a7c81a42c390f510ca80c57e7d956a93c63cbd22464c10d0bb19e4d3f41e65a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7dd78c2d46187c895e5e1c00f9b967a4e457a1a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant7a7c81a42c390f510ca80c57e7d956a93c63cbd22464c10d0bb19e4d3f41e65a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant7a7c81a42c390f510ca80c57e7d956a93c63cbd22464c10d0bb19e4d3f41e65a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Image` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.SymmDiff` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant7a7c81a42c390f510ca80c57e7d956a93c63cbd22464c10d0bb19e4d3f41e65a.lean/declarations/mem-symmdiff--73db57630d21f46a1d199c6d.md) | 48 | `result-track:73db57630d21f46a1d199c6d978e72cd2301c7aacae778a4f86effbdd0b39416` |
| 2 | `theorem` | [coe_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant7a7c81a42c390f510ca80c57e7d956a93c63cbd22464c10d0bb19e4d3f41e65a.lean/declarations/coe-symmdiff--c03fb64e89bd0bcc536bcf0c.md) | 52 | `result-track:c03fb64e89bd0bcc536bcf0cf0295f240a44f88055eb0db43970c4f041301537` |
| 3 | `lemma` | [symmDiff_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant7a7c81a42c390f510ca80c57e7d956a93c63cbd22464c10d0bb19e4d3f41e65a.lean/declarations/symmdiff-eq-empty--3e2bef51fd9ac2ff70e5c6ff.md) | 55 | `result-track:3e2bef51fd9ac2ff70e5c6ff5c5550d670de0404958ec5888fce49df9237b3d1` |
| 4 | `lemma` | [symmDiff_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant7a7c81a42c390f510ca80c57e7d956a93c63cbd22464c10d0bb19e4d3f41e65a.lean/declarations/symmdiff-nonempty--233474aa80051ebd434b2d26.md) | 56 | `result-track:233474aa80051ebd434b2d26a76cb80f69e566e1d7e818784efca8c08e89e47b` |
| 5 | `theorem` | [image_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant7a7c81a42c390f510ca80c57e7d956a93c63cbd22464c10d0bb19e4d3f41e65a.lean/declarations/image-symmdiff--d42ccd2c039ec932dee1afea.md) | 59 | `result-track:d42ccd2c039ec932dee1afea95a5c1b31470b07c79c5984fe398a3b81a9dff9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
