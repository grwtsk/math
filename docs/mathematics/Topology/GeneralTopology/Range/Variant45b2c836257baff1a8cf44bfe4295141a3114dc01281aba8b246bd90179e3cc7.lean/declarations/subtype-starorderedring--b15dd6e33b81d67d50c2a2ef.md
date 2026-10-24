# Subtype.starOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e32e1599313cfd653b8bedce856cd2909be9fdaa4227fbcd64f65c4df55fa03b",
  "kind": "instance",
  "lexical_name": "Subtype.starOrderedRing",
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
  "slug": "subtype-starorderedring--b15dd6e33b81d67d50c2a2ef",
  "source": {
    "blob": "69768fb899bfd8f8603196e0287fce9d51d923bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 295,
    "path": "GRWTSK/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b15dd6e33b81d67d50c2a2ef0cdfce56b99b6244cb77ba13546ecb538d6f0534",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e32e1599313cfd653b8bedce856cd2909be9fdaa4227fbcd64f65c4df55fa03b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subtype.starOrderedRing (s : S) [hs : IsClosed (s : Set A)] : StarOrderedRing s :=
  .of_nonneg_iff' add_le_add_right fun x ↦ by
    refine ⟨?_, ?_⟩
    · intro (hx : 0 ≤ (x : A))
      use ⟨cfcₙ Real.sqrt (x : A), cfcₙ_mem _ x.2⟩
      ext
      simp only [MulMemClass.coe_mul, StarMemClass.coe_star]
      rw [IsSelfAdjoint.star_eq (by cfc_tac), ← cfcₙ_mul ..]
      convert (cfcₙ_id' ℝ (x : A)).symm using 1
      exact cfcₙ_congr fun r hr ↦ by grind [Real.mul_self_sqrt]
    · rintro ⟨s, hs⟩
      simp [← Subtype.coe_le_coe, hs]

end StarOrderedSubtype
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69768fb899bfd8f8603196e0287fce9d51d923bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
