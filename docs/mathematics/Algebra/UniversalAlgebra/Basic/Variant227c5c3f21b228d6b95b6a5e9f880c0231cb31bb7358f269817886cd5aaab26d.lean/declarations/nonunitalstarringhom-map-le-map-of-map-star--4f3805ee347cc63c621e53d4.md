# NonUnitalStarRingHom.map_le_map_of_map_star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e191366-ff11-2ff8-9883-d586fe8a8e49",
  "kind": "lemma",
  "lexical_name": "NonUnitalStarRingHom.map_le_map_of_map_star",
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
  "slug": "nonunitalstarringhom-map-le-map-of-map-star--4f3805ee347cc63c621e53d4",
  "source": {
    "blob": "2a8d109f8dec75d0bdb7e034b929bff83abe099f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 459,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f3805ee347cc63c621e53d482a523ec6f89ae87718308e46dde2f71012c1230",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e191366-ff11-2ff8-9883-d586fe8a8e49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NonUnitalStarRingHom.map_le_map_of_map_star (f : R →⋆ₙ+* S) {x y : R} (hxy : x ≤ y) :
    f x ≤ f y := by
  rw [StarOrderedRing.le_iff] at hxy ⊢
  obtain ⟨p, hp, rfl⟩ := hxy
  refine ⟨f p, ?_, map_add f _ _⟩
  have hf : ∀ r, f (star r) = star (f r) := map_star _
  induction hp using AddSubmonoid.closure_induction
  all_goals aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a8d109f8dec75d0bdb7e034b929bff83abe099f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
