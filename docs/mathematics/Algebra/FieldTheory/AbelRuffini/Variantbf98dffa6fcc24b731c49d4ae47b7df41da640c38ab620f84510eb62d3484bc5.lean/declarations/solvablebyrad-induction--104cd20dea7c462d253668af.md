# solvableByRad.induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7d7fe29-9734-dd07-fd07-98145381a0fe",
  "kind": "theorem",
  "lexical_name": "solvableByRad.induction",
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
  "slug": "solvablebyrad-induction--104cd20dea7c462d253668af",
  "source": {
    "blob": "3e83b05f47b9548982f19e8ea3dde485ef684b25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 232,
    "path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:104cd20dea7c462d253668af7e3508a06e88451ae4d107268c0aed299c5dcd88",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7d7fe29-9734-dd07-fd07-98145381a0fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem solvableByRad.induction (motive : ∀ x, x ∈ solvableByRad F E → Prop)
    (mem : ∀ x, motive (algebraMap F E x) (algebraMap_mem _ _))
    (add : ∀ x y (hx : x ∈ solvableByRad F E) (hy : y ∈ solvableByRad F E),
      motive x hx → motive y hy → motive (x + y) (add_mem hx hy))
    (mul : ∀ x y (hx : x ∈ solvableByRad F E) (hy : y ∈ solvableByRad F E),
      motive x hx → motive y hy → motive (x * y) (mul_mem hx hy))
    (rad : ∀ n x (hn : n ≠ 0) (hx : x ^ n ∈ solvableByRad F E),
      motive (x ^ n) hx → motive x (rad_mem hn hx))
    {x : E} (hx : x ∈ solvableByRad F E) : motive x hx := by
  let s : Subalgebra F E :=
  { carrier := {x | ∃ hx : x ∈ solvableByRad F E, motive x hx}
    algebraMap_mem' a := ⟨algebraMap_mem _ a, mem a⟩
    add_mem' := fun ⟨ha, ha'⟩ ⟨hb, hb'⟩ ↦ ⟨add_mem ha hb, add _ _ ha hb ha' hb'⟩
    mul_mem' := fun ⟨ha, ha'⟩ ⟨hb, hb'⟩ ↦ ⟨mul_mem ha hb, mul _ _ ha hb ha' hb'⟩ }
  let t : IntermediateField F E := Subalgebra.IsAlgebraic.toIntermediateField (S := s) <| by
    rintro x ⟨hx, hx'⟩
    apply isAlgebraic_solvableByRad
    exact hx
  have ht (x n) (hn : n ≠ 0) : x ^ n ∈ t → x ∈ t := by
    rintro ⟨hx, hx'⟩
    exact ⟨rad_mem hn hx, rad _ _ hn hx hx'⟩
  obtain ⟨_, h⟩ := solvableByRad_le (s := t) ht hx
  exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e83b05f47b9548982f19e8ea3dde485ef684b25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
