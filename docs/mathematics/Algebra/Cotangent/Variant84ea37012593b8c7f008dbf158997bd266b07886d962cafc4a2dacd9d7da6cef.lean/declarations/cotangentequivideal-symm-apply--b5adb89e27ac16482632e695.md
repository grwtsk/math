# cotangentEquivIdeal_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42a8d8e5698d6b6f5fd223d90318594ea9fcf570",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7de53c0c-6d8f-dd36-6c8a-b32506746ba3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd750ca4-7550-0e05-9c67-a25dd983bf42",
  "kind": "theorem",
  "lexical_name": "cotangentEquivIdeal_symm_apply",
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
  "slug": "cotangentequivideal-symm-apply--b5adb89e27ac16482632e695",
  "source": {
    "blob": "42a8d8e5698d6b6f5fd223d90318594ea9fcf570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 166,
    "path": "GRWTSK/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5adb89e27ac16482632e695a7c7b7d6f6f68792256bcd081a883b4fd2e777b4",
  "verification": {
    "reference": "docs/verification/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd750ca4-7550-0e05-9c67-a25dd983bf42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cotangentEquivIdeal_symm_apply (x : R) (hx : x ∈ I) :
    -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 had to specify `(R₂ := R)` because `I.toCotangent` suggested `R ⧸ I^2` instead
    I.cotangentEquivIdeal.symm ⟨(I ^ 2).mkQ x,
      -- timeout (200000 heartbeats) without `by exact`
      by exact Submodule.mem_map_of_mem (F := R →ₗ[R] R ⧸ I ^ 2) (f := (I ^ 2).mkQ) hx⟩ =
      I.toCotangent (R := R) ⟨x, hx⟩ := by
  apply I.cotangentEquivIdeal.injective
  rw [I.cotangentEquivIdeal.apply_symm_apply]
  ext
  rfl

variable {A B : Type*} [CommRing A] [CommRing B] [Algebra R A] [Algebra R B]

/-- The lift of `f : A →ₐ[R] B` to `A ⧸ J ^ 2 →ₐ[R] B` with `J` being the kernel of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42a8d8e5698d6b6f5fd223d90318594ea9fcf570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
