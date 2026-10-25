# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimprocDSL.Variantc12d961d7ac7003d5f33cc115109a90233db0f3fa357f70c95e7a2960e85b049

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f63b0128081d99c6a150dde5e987c84079d85e9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantc12d961d7ac7003d5f33cc115109a90233db0f3fa357f70c95e7a2960e85b049.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantc12d961d7ac7003d5f33cc115109a90233db0f3fa357f70c95e7a2960e85b049.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantc12d961d7ac7003d5f33cc115109a90233db0f3fa357f70c95e7a2960e85b049.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f63b0128081d99c6a150dde5e987c84079d85e9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantc12d961d7ac7003d5f33cc115109a90233db0f3fa357f70c95e7a2960e85b049.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantc12d961d7ac7003d5f33cc115109a90233db0f3fa357f70c95e7a2960e85b049.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Sym.Simp.SimprocDSL` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SymSimprocElab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantc12d961d7ac7003d5f33cc115109a90233db0f3fa357f70c95e7a2960e85b049.lean/declarations/symsimprocelab--ad654f4d6a8ef21fe7afa669.md) | 24 | `declaration-track:ad654f4d6a8ef21fe7afa669114df99410db59bcc3c2d468aebc0f94e3dc1f68` |
| 2 | `abbrev` | [SymDischargerElab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantc12d961d7ac7003d5f33cc115109a90233db0f3fa357f70c95e7a2960e85b049.lean/declarations/symdischargerelab--653b33082592678a34ac63dc.md) | 27 | `declaration-track:653b33082592678a34ac63dc8480e0053860d114b7457e3ec8fd4c7c8a4a2f36` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantc12d961d7ac7003d5f33cc115109a90233db0f3fa357f70c95e7a2960e85b049.lean/declarations/builtin-initialize--509ebc556a78f42e662aa4f5.md) | 29 | `declaration-track:509ebc556a78f42e662aa4f52785630c2a67847ff01959e695f62e977dc2a530` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantc12d961d7ac7003d5f33cc115109a90233db0f3fa357f70c95e7a2960e85b049.lean/declarations/builtin-initialize--6307f9d1fcaea7d7e935f18c.md) | 33 | `declaration-track:6307f9d1fcaea7d7e935f18c74016474b58deaacfa769f0ae2f6901d2476bdc6` |
| 5 | `def` | [elabSymSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantc12d961d7ac7003d5f33cc115109a90233db0f3fa357f70c95e7a2960e85b049.lean/declarations/elabsymsimproc--d8469815a4f77e21970c6f5f.md) | 38 | `declaration-track:d8469815a4f77e21970c6f5fd57fdbb35b220cc78ffa0be44e8dad09f4949191` |
| 6 | `def` | [elabSymDischarger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantc12d961d7ac7003d5f33cc115109a90233db0f3fa357f70c95e7a2960e85b049.lean/declarations/elabsymdischarger--b6769cca4ad28eac52e6113c.md) | 52 | `declaration-track:b6769cca4ad28eac52e6113c030e598e0f28d0f50d76bb77152b05f99b50c7ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
