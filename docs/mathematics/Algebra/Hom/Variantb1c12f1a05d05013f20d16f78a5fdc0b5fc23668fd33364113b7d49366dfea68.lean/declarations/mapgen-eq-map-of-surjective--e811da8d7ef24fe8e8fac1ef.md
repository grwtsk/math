# mapGen_eq_map_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5518f041-90c7-1cc1-e05d-8a5b65211e28",
  "kind": "theorem",
  "lexical_name": "mapGen_eq_map_of_surjective",
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
  "slug": "mapgen-eq-map-of-surjective--e811da8d7ef24fe8e8fac1ef",
  "source": {
    "blob": "b1013e724ba6516769caa820a77dd75ffc2a276d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 115,
    "path": "GRWTSK/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e811da8d7ef24fe8e8fac1ef281383a654c979aaee4a6663d97b8d03b4568abf",
  "verification": {
    "reference": "docs/verification/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5518f041-90c7-1cc1-e05d-8a5b65211e28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapGen_eq_map_of_surjective
    {c : RingCon M} (f : M →+* N) (h : ker f ≤ c) (hf : Surjective f) :
    c.mapGen f = Relation.Map c f f := by
  refine le_antisymm ?_ <| (RingCon.gi N).gc.le_u_l _
  have := Relation.map_equivalence c.toSetoid.2 _ hf h
  intro _ _ hg
  induction hg with
  | of _ _ a => exact a
  | refl x => exact this.refl x
  | symm _ h => exact this.symm h
  | trans _ _ h₁ h₂ => exact this.trans h₁ h₂
  | add _ _ h₁ h₂ =>
    rcases h₁ with ⟨a, b, h1, rfl, rfl⟩
    rcases h₂ with ⟨p, q, h2, rfl, rfl⟩
    exact ⟨a + p, b + q, c.add h1 h2, map_add f _ _, map_add f _ _⟩
  | mul _ _ h₁ h₂ =>
    rcases h₁ with ⟨a, b, h1, rfl, rfl⟩
    rcases h₂ with ⟨p, q, h2, rfl, rfl⟩
    exact ⟨a * p, b * q, c.mul h1 h2, map_mul f _ _, map_mul f _ _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1013e724ba6516769caa820a77dd75ffc2a276d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
