# coneConnected_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c8fb216-fa4b-953a-0e3b-c9c74126d408",
  "kind": "theorem",
  "lexical_name": "coneConnected_iff",
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
  "slug": "coneconnected-iff--d38491b9a956dfbb591464bd",
  "source": {
    "blob": "bfd3e090cadde51c011080362b9e3a5c3addf17c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 94,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d38491b9a956dfbb591464bd4053c3431fe8d327963c612b53f923107fb74aaa",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c8fb216-fa4b-953a-0e3b-c9c74126d408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coneConnected_iff (k : ℕ) (p q : ConeCylinder k) :
    ConeConnected k p q ↔
      p = q ∨ (p.2 = 0 ∧ q.2 = 0) := by
  constructor
  · intro h
    induction h with
    | rel a b hab =>
        cases hab
        exact Or.inr ⟨rfl, rfl⟩
    | refl a =>
        exact Or.inl rfl
    | symm a b hab ih =>
        rcases ih with heq | ⟨ha, hb⟩
        · exact Or.inl heq.symm
        · exact Or.inr ⟨hb, ha⟩
    | trans a b c hab hbc ih1 ih2 =>
        rcases ih1 with heq | ⟨ha, hb⟩
        · subst b
          exact ih2
        · rcases ih2 with heq | ⟨hb', hc⟩
          · subst c
            exact Or.inr ⟨ha, hb⟩
          · exact Or.inr ⟨ha, hc⟩
  · rintro (heq | ⟨hp, hq⟩)
    · subst q
      exact Relation.EqvGen.refl _
    · rcases p with ⟨x, r⟩
      rcases q with ⟨y, s⟩
      dsimp at hp hq
      subst r
      subst s
      exact Relation.EqvGen.rel _ _ (PerimeterConeStep.apex x y)

/-- The actual Setoid of the radial cone, built from precisely the
relation whose fibers were computed above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfd3e090cadde51c011080362b9e3a5c3addf17c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
