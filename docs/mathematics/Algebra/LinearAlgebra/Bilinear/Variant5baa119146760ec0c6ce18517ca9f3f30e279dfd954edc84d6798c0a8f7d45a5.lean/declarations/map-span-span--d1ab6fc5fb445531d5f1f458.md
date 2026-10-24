# map₂_span_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ed40203-d667-d6ef-01f6-8b0109d74351",
  "kind": "theorem",
  "lexical_name": "map₂_span_span",
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
  "slug": "map-span-span--d1ab6fc5fb445531d5f1f458",
  "source": {
    "blob": "bda4030e7ba3c747aeb2b5fe742c1fa02806b0ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1ab6fc5fb445531d5f1f458e312c995af31b267403c8254d2b048a34cd892bf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ed40203-d667-d6ef-01f6-8b0109d74351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map₂_span_span (f : M →ₗ[R] N →ₗ[R] P) (s : Set M) (t : Set N) :
    map₂ f (span R s) (span R t) = span R (Set.image2 (fun m n => f m n) s t) := by
  apply le_antisymm
  · rw [map₂_le]
    apply @span_induction' R M _ _ _ s
    intro a ha
    apply @span_induction' R N _ _ _ t
    intro b hb
    exact subset_span ⟨_, _, ‹_›, ‹_›, rfl⟩
    all_goals intros; simp only [*, add_mem, smul_mem, zero_mem, _root_.map_zero, map_add,
                                 LinearMap.zero_apply, LinearMap.add_apply, LinearMap.smul_apply,
                                 SMulHomClass.map_smul]
  · rw [span_le]
    rintro _ ⟨a, b, ha, hb, rfl⟩
    exact apply_mem_map₂ _ (subset_span ha) (subset_span hb)
#align submodule.map₂_span_span Submodule.map₂_span_span
variable {R}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bda4030e7ba3c747aeb2b5fe742c1fa02806b0ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
