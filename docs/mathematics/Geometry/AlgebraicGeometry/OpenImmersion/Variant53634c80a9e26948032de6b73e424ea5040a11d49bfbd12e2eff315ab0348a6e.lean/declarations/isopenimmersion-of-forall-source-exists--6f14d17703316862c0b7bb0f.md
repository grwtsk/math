# IsOpenImmersion.of_forall_source_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d5f5488-fba1-e302-f625-5067c0d433b0",
  "kind": "lemma",
  "lexical_name": "IsOpenImmersion.of_forall_source_exists",
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
  "slug": "isopenimmersion-of-forall-source-exists--6f14d17703316862c0b7bb0f",
  "source": {
    "blob": "b3330b02a394f835ce55b347740be487471cec9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 91,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant53634c80a9e26948032de6b73e424ea5040a11d49bfbd12e2eff315ab0348a6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f14d17703316862c0b7bb0fa3be3e89f3c284266e9f66884b54c47e83461649",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant53634c80a9e26948032de6b73e424ea5040a11d49bfbd12e2eff315ab0348a6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d5f5488-fba1-e302-f625-5067c0d433b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsOpenImmersion.of_forall_source_exists (f : X ⟶ Y)
    (hf : Function.Injective f)
    (hX : ∀ x, ∃ (U : Scheme) (i : U ⟶ X) (_ : IsOpenImmersion i),
      x ∈ i.opensRange ∧ IsOpenImmersion (i ≫ f)) :
    IsOpenImmersion f := by
  choose U i _ hxi hi using hX
  let 𝒰 : X.OpenCover := ⟨⟨X, U, i⟩,
    ⟨by simpa using show ∀ x, ∃ j y, i j y = x from (⟨_, hxi ·⟩), by simpa⟩⟩
  exact IsOpenImmersion.of_openCover_source f 𝒰 hf hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant53634c80a9e26948032de6b73e424ea5040a11d49bfbd12e2eff315ab0348a6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant53634c80a9e26948032de6b73e424ea5040a11d49bfbd12e2eff315ab0348a6e.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3330b02a394f835ce55b347740be487471cec9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
