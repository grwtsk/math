# append_prod_appendFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c926404fc44ea0c0ddf0e9d2a2a456bf85d8c1bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 561,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b47b6c76af38b9f4cd13bf92fab241ee7bead62334fa30c2e395c462cefcdf24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1f702f5-c38d-2d10-d38e-92f9cc31228d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0f70be0-a731-d852-3a5a-8f273db54765",
  "kind": "theorem",
  "lexical_name": "append_prod_appendFun",
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
  "slug": "append-prod-appendfun--6ff146280ed6eea5d137caf0",
  "source": {
    "blob": "c926404fc44ea0c0ddf0e9d2a2a456bf85d8c1bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 561,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantb47b6c76af38b9f4cd13bf92fab241ee7bead62334fa30c2e395c462cefcdf24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ff146280ed6eea5d137caf0d3887e66d98e200de8009513068b6950abd58efc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantb47b6c76af38b9f4cd13bf92fab241ee7bead62334fa30c2e395c462cefcdf24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0f70be0-a731-d852-3a5a-8f273db54765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem append_prod_appendFun {n} {α α' β β' : TypeVec.{u} n} {φ φ' ψ ψ' : Type u}
    {f₀ : α ⟹ α'} {g₀ : β ⟹ β'} {f₁ : φ → φ'} {g₁ : ψ → ψ'} :
    ((f₀ ⊗' g₀) ::: (_root_.Prod.map f₁ g₁)) = ((f₀ ::: f₁) ⊗' (g₀ ::: g₁)) := by
  ext i a
  cases i
  · cases a
    rfl
  · rfl

end Liftp'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantb47b6c76af38b9f4cd13bf92fab241ee7bead62334fa30c2e395c462cefcdf24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantb47b6c76af38b9f4cd13bf92fab241ee7bead62334fa30c2e395c462cefcdf24.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c926404fc44ea0c0ddf0e9d2a2a456bf85d8c1bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
