# of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:084d4e9f-90e4-376b-3a63-e3ee11d5742d",
  "kind": "theorem",
  "lexical_name": "of_injective",
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
  "slug": "of-injective--7834a4e59da0cd8306bb4a8e",
  "source": {
    "blob": "3060e64081b3e4fe91eb13fdf8daee28c6486f6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 159,
    "path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variante8dda905f0d6000bf4a913575e660576f449ccdd753075cd95fe511d6a802ca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7834a4e59da0cd8306bb4a8e7e03eb9e670116b3f418c3f877f739e40bfb0adb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FreeAbelianGroup/Variante8dda905f0d6000bf4a913575e660576f449ccdd753075cd95fe511d6a802ca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:084d4e9f-90e4-376b-3a63-e3ee11d5742d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_injective : Function.Injective (of : α → FreeAbelianGroup α) :=
  fun x y hoxy ↦ Classical.by_contradiction fun hxy : x ≠ y ↦
    let f : FreeAbelianGroup α →+ ℤ := lift fun z ↦ if x = z then (1 : ℤ) else 0
    have hfx1 : f (of x) = 1 := (lift.of _ _).trans <| if_pos rfl
    have hfy1 : f (of y) = 1 := hoxy ▸ hfx1
    have hfy0 : f (of y) = 0 := (lift.of _ _).trans <| if_neg hxy
    one_ne_zero <| hfy1.symm.trans hfy0

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FreeAbelianGroup/Variante8dda905f0d6000bf4a913575e660576f449ccdd753075cd95fe511d6a802ca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variante8dda905f0d6000bf4a913575e660576f449ccdd753075cd95fe511d6a802ca9.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3060e64081b3e4fe91eb13fdf8daee28c6486f6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
