# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e53f4d34db7cf6683ef6fb38f790ade96aa1aa854930a6d66f4962c06c44dd75",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--9a33c9036fc3b851e41d6d5b",
  "source": {
    "blob": "f94438dc25c17ecf7b83b82c4fd683b9ca6007bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant7c9dda8a4d5907e291be46375902cbb5ad20c82152a309e775c341d8b196bd45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a33c9036fc3b851e41d6d5bf0ae4b2d5d91338ada4e45d4fa9e60fe2980baee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant7c9dda8a4d5907e291be46375902cbb5ad20c82152a309e775c341d8b196bd45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e53f4d34db7cf6683ef6fb38f790ade96aa1aa854930a6d66f4962c06c44dd75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : True := by
  have ⟨_zero, _⟩ : Fin 1 := ⟨0, Nat.zero_lt_one⟩
  noise
  exact .intro

/--
warning: declaration uses 'sorry'
---
warning: '_a : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
---
warning: '_b : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
---
warning: '_oh : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
---
warning: '_b : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant7c9dda8a4d5907e291be46375902cbb5ad20c82152a309e775c341d8b196bd45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant7c9dda8a4d5907e291be46375902cbb5ad20c82152a309e775c341d8b196bd45.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f94438dc25c17ecf7b83b82c4fd683b9ca6007bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
