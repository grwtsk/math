# surjective_isStableUnderBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21c12995-751c-2fd9-95fd-72a28dc24177",
  "kind": "theorem",
  "lexical_name": "surjective_isStableUnderBaseChange",
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
  "slug": "surjective-isstableunderbasechange--4aaeca80a774198905705389",
  "source": {
    "blob": "c6f43005c2d70c9c7adfb5a1bc9f083ae6aa535e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/Algebra/Surjective/Variant78840d9c50085aa557101b5bbc7b0e3e3b1b7d79080052afa159bf7bbf9fee47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4aaeca80a774198905705389fd55b701cdb0ccfe208c281cd85190c8007d67f6",
  "verification": {
    "reference": "docs/verification/Algebra/Surjective/Variant78840d9c50085aa557101b5bbc7b0e3e3b1b7d79080052afa159bf7bbf9fee47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21c12995-751c-2fd9-95fd-72a28dc24177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_isStableUnderBaseChange : IsStableUnderBaseChange surjective := by
  refine IsStableUnderBaseChange.mk surjective_respectsIso ?_
  classical
  introv h x
  induction x with
  | zero => exact ⟨0, map_zero _⟩
  | tmul x y =>
    obtain ⟨y, rfl⟩ := h y; use y • x; dsimp
    rw [TensorProduct.smul_tmul, Algebra.algebraMap_eq_smul_one]
  | add x y ex ey => obtain ⟨⟨x, rfl⟩, ⟨y, rfl⟩⟩ := ex, ey; exact ⟨x + y, map_add _ x y⟩

/-- `M⁻¹R →+* M⁻¹S` is surjective if `R →+* S` is surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Surjective/Variant78840d9c50085aa557101b5bbc7b0e3e3b1b7d79080052afa159bf7bbf9fee47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Surjective/Variant78840d9c50085aa557101b5bbc7b0e3e3b1b7d79080052afa159bf7bbf9fee47.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6f43005c2d70c9c7adfb5a1bc9f083ae6aa535e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
