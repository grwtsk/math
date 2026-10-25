# toLinearMap_maxTrivLinearMapEquivLieModuleHom_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f40f6599c259401324849ad29522ca6f812052c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd9435ad-03a3-1a66-4409-31d968e9f8c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8d711b9-904b-b4f9-0816-3327888fb7e8",
  "kind": "theorem",
  "lexical_name": "toLinearMap_maxTrivLinearMapEquivLieModuleHom_symm",
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
  "slug": "tolinearmap-maxtrivlinearmapequivliemodulehom-symm--c5351b7621764c8713020220",
  "source": {
    "blob": "f40f6599c259401324849ad29522ca6f812052c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 229,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5351b7621764c871302022003b7419e95142370189d9fadd0156c798e20969a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8d711b9-904b-b4f9-0816-3327888fb7e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toLinearMap_maxTrivLinearMapEquivLieModuleHom_symm (f : M →ₗ⁅R,L⁆ N) :
    (maxTrivLinearMapEquivLieModuleHom (M := M) (N := N) |>.symm f : M →ₗ[R] N) = (f : M →ₗ[R] N) :=
  rfl

@[deprecated (since := "2024-12-30")]
alias coe_linearMap_maxTrivLinearMapEquivLieModuleHom_symm :=
  toLinearMap_maxTrivLinearMapEquivLieModuleHom_symm

end LieModule

namespace LieAlgebra

/-- The center of a Lie algebra is the set of elements that commute with everything. It can
be viewed as the maximal trivial submodule of the Lie algebra as a Lie module over itself via the
adjoint representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f40f6599c259401324849ad29522ca6f812052c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
