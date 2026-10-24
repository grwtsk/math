# relations_map_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2282e6df-66ac-9e2d-b006-2b4b2b937d38",
  "kind": "theorem",
  "lexical_name": "relations_map_le",
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
  "slug": "relations-map-le--aefa304343168c3a3bfe5c3e",
  "source": {
    "blob": "f78edd61fdd95b122aad933b561f9532aa97d1ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aefa304343168c3a3bfe5c3e966be20c1fd8af598953438bdb27f1015ad0b67d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2282e6df-66ac-9e2d-b006-2b4b2b937d38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relations_map_le (f : R →+* S) (a b r : R) (N : ℕ) :
    (relations a b r N).map (planeMap f) ≤ relations (f a) (f b) (f r) N := by
  apply Ideal.map_le_iff_le_comap.mpr
  apply sup_le
  · apply Ideal.span_le.mpr
    intro p hp
    have hp' : p = equation a b := Set.mem_singleton_iff.mp hp
    subst p
    change planeMap f (equation a b) ∈ relations (f a) (f b) (f r) N
    rw [planeMap_equation]
    exact le_sup_left (Ideal.subset_span (by simp))
  · apply Ideal.map_le_iff_le_comap.mp
    calc
      (sectionIdeal r ^ (N + 1)).map (planeMap f) =
          ((sectionIdeal r).map (planeMap f)) ^ (N + 1) := Ideal.map_pow _ _ _
      _ ≤ sectionIdeal (f r) ^ (N + 1) :=
        Ideal.pow_right_mono (sectionIdeal_map_le f r) (N + 1)
      _ ≤ relations (f a) (f b) (f r) N := le_sup_right

/-- The actual quotient map. It exists without a unit derivative or flatness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f78edd61fdd95b122aad933b561f9532aa97d1ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
