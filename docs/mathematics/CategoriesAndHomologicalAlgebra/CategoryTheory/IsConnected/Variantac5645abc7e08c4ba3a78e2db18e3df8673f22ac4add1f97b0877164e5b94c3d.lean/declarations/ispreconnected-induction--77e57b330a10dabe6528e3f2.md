# isPreconnected_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5679bae-455d-fef6-6008-81877ecd0be7",
  "kind": "theorem",
  "lexical_name": "isPreconnected_induction",
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
  "slug": "ispreconnected-induction--77e57b330a10dabe6528e3f2",
  "source": {
    "blob": "4fac763b747315e3ade4f00adc15ce0d7d1424c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 246,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantac5645abc7e08c4ba3a78e2db18e3df8673f22ac4add1f97b0877164e5b94c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77e57b330a10dabe6528e3f2982ec75f8577c4f759b6739f643c983d24e165e1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantac5645abc7e08c4ba3a78e2db18e3df8673f22ac4add1f97b0877164e5b94c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5679bae-455d-fef6-6008-81877ecd0be7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPreconnected_induction [IsPreconnected J] (Z : J → Sort*)
    (h₁ : ∀ {j₁ j₂ : J} (_ : j₁ ⟶ j₂), Z j₁ → Z j₂) (h₂ : ∀ {j₁ j₂ : J} (_ : j₁ ⟶ j₂), Z j₂ → Z j₁)
    {j₀ : J} (x : Z j₀) (j : J) : Nonempty (Z j) :=
  (induct_on_objects { j | Nonempty (Z j) } ⟨x⟩
      (fun f => ⟨by rintro ⟨y⟩; exact ⟨h₁ f y⟩, by rintro ⟨y⟩; exact ⟨h₂ f y⟩⟩)
      j :)

/-- If `J` and `K` are equivalent, then if `J` is preconnected then `K` is as well. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantac5645abc7e08c4ba3a78e2db18e3df8673f22ac4add1f97b0877164e5b94c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantac5645abc7e08c4ba3a78e2db18e3df8673f22ac4add1f97b0877164e5b94c3d.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fac763b747315e3ade4f00adc15ce0d7d1424c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
