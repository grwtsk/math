# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symmetry.Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73f094928a222047a3920c3423b240194cbcfd0c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73f094928a222047a3920c3423b240194cbcfd0c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Lineage` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalInvolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7.lean/declarations/criticalinvolution--bf3ed97f6539d22a878b042a.md) | 23 | `declaration-track:bf3ed97f6539d22a878b042af6789526cc169cba70c2fa2e1e74e28ba61bfec2` |
| 2 | `structure` | [InvolutionInvariantCell](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7.lean/declarations/involutioninvariantcell--f1a953346c000d07a31e8a1a.md) | 26 | `declaration-track:f1a953346c000d07a31e8a1abe6bc2623925017978e610edb196013b3f3cc8a8` |
| 3 | `structure` | [XiCriticalSymmetry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7.lean/declarations/xicriticalsymmetry--b6e306d88d2a730f9bea1c40.md) | 35 | `declaration-track:b6e306d88d2a730f9bea1c404b3caec359afa853e8a77f5687bd8fb4ad95260a` |
| 4 | `theorem` | [unique_zero_in_invariant_cell_fixed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7.lean/declarations/unique-zero-in-invariant-cell-fixed--ac39706238db48bac88b18d3.md) | 42 | `result-track:ac39706238db48bac88b18d3d705864041fa4c7d2010222d84dde3dc2d17479b` |
| 5 | `theorem` | [fixed_by_criticalInvolution_re_eq_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7.lean/declarations/fixed-by-criticalinvolution-re-eq-half--91b449881f7021208c852111.md) | 61 | `result-track:91b449881f7021208c85211155cf9a85b4fb79646e50ff238d29be7871414617` |
| 6 | `theorem` | [unique_zero_in_invariant_cell_on_line](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7.lean/declarations/unique-zero-in-invariant-cell-on-line--69ffd17e206a5aa645a09785.md) | 71 | `result-track:69ffd17e206a5aa645a097856e32300afa037c301bdbdc385bb28d8606ac64e0` |
| 7 | `structure` | [CriticalLineCarrierCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7.lean/declarations/criticallinecarriercertificate--044542eac706c8cd8c6a8560.md) | 87 | `declaration-track:044542eac706c8cd8c6a85608d87a5e22d64f95354c4a3f2bd9bebce9ee31093` |
| 8 | `theorem` | [CriticalLineCarrierCertificate.ofUniqueInvariantCell](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7.lean/declarations/criticallinecarriercertificate-ofuniqueinvariantcell--195e03b091e23d1db1892b3f.md) | 96 | `result-track:195e03b091e23d1db1892b3feab414f9d71033219b7597f3d8186bfe53ec8ba4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
