# Verification target: GRWTSK.Algebra.MemoryAlgebraCorrect.Variantefa69af72f4cc9fd17cbcacd0276ba989e429a53b70f9060e7ac5c3ff6a8084f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6334611fd954a3c8c3e228019cc5f1aaadfcc520",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MemoryAlgebraCorrect/Variantefa69af72f4cc9fd17cbcacd0276ba989e429a53b70f9060e7ac5c3ff6a8084f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variantefa69af72f4cc9fd17cbcacd0276ba989e429a53b70f9060e7ac5c3ff6a8084f.lean/index.md) · [Full source](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variantefa69af72f4cc9fd17cbcacd0276ba989e429a53b70f9060e7ac5c3ff6a8084f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6334611fd954a3c8c3e228019cc5f1aaadfcc520`.

Source path: `GRWTSK/Algebra/MemoryAlgebraCorrect/Variantefa69af72f4cc9fd17cbcacd0276ba989e429a53b70f9060e7ac5c3ff6a8084f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MemoryAlgebraCorrect/Variantefa69af72f4cc9fd17cbcacd0276ba989e429a53b70f9060e7ac5c3ff6a8084f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Semiring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WeightedMemory](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variantefa69af72f4cc9fd17cbcacd0276ba989e429a53b70f9060e7ac5c3ff6a8084f.lean/declarations/weightedmemory--e461e224b3a4d3fe51f56c09.md) | 15 | `declaration-track:e461e224b3a4d3fe51f56c09f656be4162e21bc99a52e7f04d71fe146094d829` |
| 2 | `abbrev` | [MemorySemiringLaws](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variantefa69af72f4cc9fd17cbcacd0276ba989e429a53b70f9060e7ac5c3ff6a8084f.lean/declarations/memorysemiringlaws--1d5007540dff44cbdd6bbbf8.md) | 16 | `declaration-track:1d5007540dff44cbdd6bbbf862ca76b107f53cc37917a4b1e6f7f99c541f9578` |
| 3 | `def` | [semiringLawsForNonnegativeMemory](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variantefa69af72f4cc9fd17cbcacd0276ba989e429a53b70f9060e7ac5c3ff6a8084f.lean/declarations/semiringlawsfornonnegativememory--de8a88725aa1e2a0f2fd4e0e.md) | 18 | `declaration-track:de8a88725aa1e2a0f2fd4e0e44026bc0a5c23f38ee242d525adef7f4346be50a` |
| 4 | `theorem` | [memory_add_zero](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variantefa69af72f4cc9fd17cbcacd0276ba989e429a53b70f9060e7ac5c3ff6a8084f.lean/declarations/memory-add-zero--dcfdf361a9c37a15be519ed9.md) | 21 | `result-track:dcfdf361a9c37a15be519ed9068fa99e3b9db449237bc0f8c492aa466add97b0` |
| 5 | `theorem` | [memory_zero_add](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variantefa69af72f4cc9fd17cbcacd0276ba989e429a53b70f9060e7ac5c3ff6a8084f.lean/declarations/memory-zero-add--b7f0a23771e38540a2fc4eff.md) | 26 | `result-track:b7f0a23771e38540a2fc4eff20db61a5c8a702490fa1f64211e8b034d2b0f3d8` |
| 6 | `theorem` | [memory_add_assoc](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variantefa69af72f4cc9fd17cbcacd0276ba989e429a53b70f9060e7ac5c3ff6a8084f.lean/declarations/memory-add-assoc--912cc2599702b120fc124ca4.md) | 31 | `result-track:912cc2599702b120fc124ca43b328ccc53e093e064e787ff4647cb365de0781b` |
| 7 | `theorem` | [memory_semiring_default_residue](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variantefa69af72f4cc9fd17cbcacd0276ba989e429a53b70f9060e7ac5c3ff6a8084f.lean/declarations/memory-semiring-default-residue--a403a9c74b67f6815213a1a5.md) | 38 | `result-track:a403a9c74b67f6815213a1a54e91ed0aa4fd61c6473e71cdef37f3c31f15ffa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
