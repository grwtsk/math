# quot_left_distrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63aee731e221da7ed91d75dd854fadf2690de46a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 506,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9a49996-9af4-6372-342b-4f6528ac9162",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:060c6a2d-0879-bd4e-f616-e2b11d74b01f",
  "kind": "theorem",
  "lexical_name": "quot_left_distrib",
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
  "slug": "quot-left-distrib--fbfe4dc839c2d8d93371b913",
  "source": {
    "blob": "63aee731e221da7ed91d75dd854fadf2690de46a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 506,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbfe4dc839c2d8d93371b9138d1aa25884de9c39d986d2cdb47015592dba5df4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:060c6a2d-0879-bd4e-f616-e2b11d74b01f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quot_left_distrib (x y z : PGame) : (⟦x * (y + z)⟧ : Game) = ⟦x * y⟧ + ⟦x * z⟧ :=
  match x, y, z with
  | mk xl xr xL xR, mk yl yr yL yR, mk zl zr zL zR => by
    let x := mk xl xr xL xR
    let y := mk yl yr yL yR
    let z := mk zl zr zL zR
    refine quot_eq_of_mk'_quot_eq ?_ ?_ ?_ ?_
    · fconstructor
      · rintro (⟨_, _ | _⟩ | ⟨_, _ | _⟩) <;>
          -- Porting note: we've increased `maxDepth` here from `5` to `6`.
          -- Likely this sort of off-by-one error is just a change in the implementation
          -- of `solve_by_elim`.
          solve_by_elim (config := { maxDepth := 6 }) [Sum.inl, Sum.inr, Prod.mk]
      · rintro (⟨⟨_, _⟩ | ⟨_, _⟩⟩ | ⟨_, _⟩ | ⟨_, _⟩) <;>
          solve_by_elim (config := { maxDepth := 6 }) [Sum.inl, Sum.inr, Prod.mk]
      · rintro (⟨_, _ | _⟩ | ⟨_, _ | _⟩) <;> rfl
      · rintro (⟨⟨_, _⟩ | ⟨_, _⟩⟩ | ⟨_, _⟩ | ⟨_, _⟩) <;> rfl
    · fconstructor
      · rintro (⟨_, _ | _⟩ | ⟨_, _ | _⟩) <;>
          solve_by_elim (config := { maxDepth := 6 }) [Sum.inl, Sum.inr, Prod.mk]
      · rintro (⟨⟨_, _⟩ | ⟨_, _⟩⟩ | ⟨_, _⟩ | ⟨_, _⟩) <;>
          solve_by_elim (config := { maxDepth := 6 }) [Sum.inl, Sum.inr, Prod.mk]
      · rintro (⟨_, _ | _⟩ | ⟨_, _ | _⟩) <;> rfl
      · rintro (⟨⟨_, _⟩ | ⟨_, _⟩⟩ | ⟨_, _⟩ | ⟨_, _⟩) <;> rfl
    -- Porting note: explicitly wrote out arguments to each recursive
    -- quot_left_distrib reference below, because otherwise the decreasing_by block
    -- failed. Previously, each branch ended with: `simp [quot_left_distrib]; abel`
    -- See https://github.com/leanprover/lean4/issues/2288
    · rintro (⟨i, j | k⟩ | ⟨i, j | k⟩)
      · change
          ⟦xL i * (y + z) + x * (yL j + z) - xL i * (yL j + z)⟧ =
            ⟦xL i * y + x * yL j - xL i * yL j + x * z⟧
        simp only [quot_sub, quot_add]
        rw [quot_left_distrib (xL i) (mk yl yr yL yR) (mk zl zr zL zR)]
        rw [quot_left_distrib (mk xl xr xL xR) (yL j) (mk zl zr zL zR)]
        rw [quot_left_distrib (xL i) (yL j) (mk zl zr zL zR)]
        abel
      · change
          ⟦xL i * (y + z) + x * (y + zL k) - xL i * (y + zL k)⟧ =
            ⟦x * y + (xL i * z + x * zL k - xL i * zL k)⟧
        simp only [quot_sub, quot_add]
        rw [quot_left_distrib (xL i) (mk yl yr yL yR) (mk zl zr zL zR)]
        rw [quot_left_distrib (mk xl xr xL xR) (mk yl yr yL yR) (zL k)]
        rw [quot_left_distrib (xL i) (mk yl yr yL yR) (zL k)]
        abel
      · change
          ⟦xR i * (y + z) + x * (yR j + z) - xR i * (yR j + z)⟧ =
            ⟦xR i * y + x * yR j - xR i * yR j + x * z⟧
        simp only [quot_sub, quot_add]
        rw [quot_left_distrib (xR i) (mk yl yr yL yR) (mk zl zr zL zR)]
        rw [quot_left_distrib (mk xl xr xL xR) (yR j) (mk zl zr zL zR)]
        rw [quot_left_distrib (xR i) (yR j) (mk zl zr zL zR)]
        abel
      · change
          ⟦xR i * (y + z) + x * (y + zR k) - xR i * (y + zR k)⟧ =
            ⟦x * y + (xR i * z + x * zR k - xR i * zR k)⟧
        simp only [quot_sub, quot_add]
        rw [quot_left_distrib (xR i) (mk yl yr yL yR) (mk zl zr zL zR)]
        rw [quot_left_distrib (mk xl xr xL xR) (mk yl yr yL yR) (zR k)]
        rw [quot_left_distrib (xR i) (mk yl yr yL yR) (zR k)]
        abel
    · rintro (⟨i, j | k⟩ | ⟨i, j | k⟩)
      · change
          ⟦xL i * (y + z) + x * (yR j + z) - xL i * (yR j + z)⟧ =
            ⟦xL i * y + x * yR j - xL i * yR j + x * z⟧
        simp only [quot_sub, quot_add]
        rw [quot_left_distrib (xL i) (mk yl yr yL yR) (mk zl zr zL zR)]
        rw [quot_left_distrib (mk xl xr xL xR) (yR j) (mk zl zr zL zR)]
        rw [quot_left_distrib (xL i) (yR j) (mk zl zr zL zR)]
        abel
      · change
          ⟦xL i * (y + z) + x * (y + zR k) - xL i * (y + zR k)⟧ =
            ⟦x * y + (xL i * z + x * zR k - xL i * zR k)⟧
        simp only [quot_sub, quot_add]
        rw [quot_left_distrib (xL i) (mk yl yr yL yR) (mk zl zr zL zR)]
        rw [quot_left_distrib (mk xl xr xL xR) (mk yl yr yL yR) (zR k)]
        rw [quot_left_distrib (xL i) (mk yl yr yL yR) (zR k)]
        abel
      · change
          ⟦xR i * (y + z) + x * (yL j + z) - xR i * (yL j + z)⟧ =
            ⟦xR i * y + x * yL j - xR i * yL j + x * z⟧
        simp only [quot_sub, quot_add]
        rw [quot_left_distrib (xR i) (mk yl yr yL yR) (mk zl zr zL zR)]
        rw [quot_left_distrib (mk xl xr xL xR) (yL j) (mk zl zr zL zR)]
        rw [quot_left_distrib (xR i) (yL j) (mk zl zr zL zR)]
        abel
      · change
          ⟦xR i * (y + z) + x * (y + zL k) - xR i * (y + zL k)⟧ =
            ⟦x * y + (xR i * z + x * zL k - xR i * zL k)⟧
        simp only [quot_sub, quot_add]
        rw [quot_left_distrib (xR i) (mk yl yr yL yR) (mk zl zr zL zR)]
        rw [quot_left_distrib (mk xl xr xL xR) (mk yl yr yL yR) (zL k)]
        rw [quot_left_distrib (xR i) (mk yl yr yL yR) (zL k)]
        abel
  termination_by (x, y, z)

/-- `x * (y + z)` is equivalent to `x * y + x * z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63aee731e221da7ed91d75dd854fadf2690de46a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
