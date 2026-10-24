# mono_iff_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce133a14-8e65-5bc1-becb-d21483520e11",
  "kind": "theorem",
  "lexical_name": "mono_iff_injective",
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
  "slug": "mono-iff-injective--655aca9de664a11e443816d5",
  "source": {
    "blob": "caf4b2083d0fd664f193a5b269cb6b548a1abdd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 222,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:655aca9de664a11e443816d5c5290e9dff400fe5ae8d79cc1d3d4c138ce70717",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce133a14-8e65-5bc1-becb-d21483520e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mono_iff_injective {X Y : CompHausLike.{u} P} (f : X ⟶ Y) :
    Mono f ↔ Function.Injective f := by
  constructor
  · intro hf x₁ x₂ h
    let g₁ : X ⟶ X := ofHom _ ⟨fun _ => x₁, continuous_const⟩
    let g₂ : X ⟶ X := ofHom _ ⟨fun _ => x₂, continuous_const⟩
    have : g₁ ≫ f = g₂ ≫ f := by ext; exact h
    exact CategoryTheory.congr_fun ((cancel_mono _).mp this) x₁
  · rw [← CategoryTheory.ofHom_mono_iff_injective]
    apply (forget (CompHausLike P)).mono_of_mono_map

/-- Any continuous function on compact Hausdorff spaces is a closed map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caf4b2083d0fd664f193a5b269cb6b548a1abdd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
