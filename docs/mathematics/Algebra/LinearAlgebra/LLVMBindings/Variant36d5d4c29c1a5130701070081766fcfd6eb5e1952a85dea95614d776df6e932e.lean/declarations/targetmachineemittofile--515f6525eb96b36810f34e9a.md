# targetMachineEmitToFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f62f15c5847471b57eaf329113dc6eedc6c8c8069152371b445e696d726b0da",
  "kind": "opaque",
  "lexical_name": "targetMachineEmitToFile",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "targetmachineemittofile--515f6525eb96b36810f34e9a",
  "source": {
    "blob": "3c2300c36c30b7fe46ed45afb546b88954358856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 328,
    "path": "GRWTSK/Algebra/LinearAlgebra/LLVMBindings/Variant36d5d4c29c1a5130701070081766fcfd6eb5e1952a85dea95614d776df6e932e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:515f6525eb96b36810f34e9adbddacccf82f890152c5eaf2ca2fa691b577d825",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LLVMBindings/Variant36d5d4c29c1a5130701070081766fcfd6eb5e1952a85dea95614d776df6e932e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f62f15c5847471b57eaf329113dc6eedc6c8c8069152371b445e696d726b0da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
opaque targetMachineEmitToFile (targetMachine : TargetMachine ctx) (module : Module ctx) (filepath : @&String) (codegenType : LLVM.CodegenFileType) : BaseIO Unit

/-
@[extern "lean_llvm_create_pass_manager"]
opaque createPassManager : BaseIO (PassManager ctx)

@[extern "lean_llvm_dispose_pass_manager"]
opaque disposePassManager (pm : PassManager ctx) : BaseIO Unit

@[extern "lean_llvm_run_pass_manager"]
opaque runPassManager (pm : PassManager ctx) (mod : Module ctx): BaseIO Unit

@[extern "lean_llvm_create_pass_manager_builder"]
opaque createPassManagerBuilder : BaseIO (PassManagerBuilder ctx)

@[extern "lean_llvm_dispose_pass_manager_builder"]
opaque disposePassManagerBuilder (pmb : PassManagerBuilder ctx) : BaseIO Unit

@[extern "lean_llvm_pass_manager_builder_set_opt_level"]
opaque PassManagerBuilder.setOptLevel (pmb : PassManagerBuilder ctx) (optLevel : unsigned) : BaseIO Unit

@[extern "lean_llvm_pass_manager_builder_populate_module_pass_manager"]
opaque PassManagerBuilder.populateModulePassManager (pmb : PassManagerBuilder ctx) (pm : PassManager ctx): BaseIO Unit
-/

@[extern "lean_llvm_dispose_target_machine"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LLVMBindings/Variant36d5d4c29c1a5130701070081766fcfd6eb5e1952a85dea95614d776df6e932e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LLVMBindings/Variant36d5d4c29c1a5130701070081766fcfd6eb5e1952a85dea95614d776df6e932e.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c2300c36c30b7fe46ed45afb546b88954358856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
