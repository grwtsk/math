# mul_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c09ed84bfabfc843c6c1a9fd6b45437e16e7c5f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 508,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa7393b8f207edfe5e45b36aea69ceb4de80d6fdcbf29813d8c99a35d8c0db5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e63e8faf-6f92-546f-1f21-76668b06fe81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44285576-126d-d9ef-c7df-7d315e34fcab",
  "kind": "theorem",
  "lexical_name": "mul_inv",
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
  "slug": "mul-inv--c476694deef6f298fd4eff81",
  "source": {
    "blob": "c09ed84bfabfc843c6c1a9fd6b45437e16e7c5f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 508,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantdaa7393b8f207edfe5e45b36aea69ceb4de80d6fdcbf29813d8c99a35d8c0db5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c476694deef6f298fd4eff8172906e65d7eccb121dd6168b9aff041ce3772644",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantdaa7393b8f207edfe5e45b36aea69ceb4de80d6fdcbf29813d8c99a35d8c0db5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44285576-126d-d9ef-c7df-7d315e34fcab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_inv {f : M →* N} (h : ∀ y : S, IsUnit (f y)) {x₁ x₂} {y₁ y₂ : S} :
    f x₁ * (IsUnit.liftRight (f.domRestrict S) h y₁)⁻¹ =
        f x₂ * (IsUnit.liftRight (f.domRestrict S) h y₂)⁻¹ ↔
      f (x₁ * y₂) = f (x₂ * y₁) := by
  rw [mul_inv_right h, mul_assoc, mul_comm _ (f y₂), ← mul_assoc, mul_inv_left h, mul_comm x₂,
    f.map_mul, f.map_mul]

/-- Given a MonoidHom `f : M →* N` and Submonoid `S ⊆ M` such that `f(S) ⊆ Nˣ`, for all
`y, z ∈ S`, we have `(f y)⁻¹ = (f z)⁻¹ → f y = f z`. -/
@[to_additive
/-- Given an AddMonoidHom `f : M →+ N` and Submonoid `S ⊆ M` such that
`f(S) ⊆ AddUnits N`, for all `y, z ∈ S`, we have `- (f y) = - (f z) → f y = f z`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantdaa7393b8f207edfe5e45b36aea69ceb4de80d6fdcbf29813d8c99a35d8c0db5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantdaa7393b8f207edfe5e45b36aea69ceb4de80d6fdcbf29813d8c99a35d8c0db5.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09ed84bfabfc843c6c1a9fd6b45437e16e7c5f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
