# isLocalization_away_iff_atPrime_of_basicOpen_eq_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f819ac1-9fbc-50e9-2c8e-134589038d0a",
  "kind": "theorem",
  "lexical_name": "isLocalization_away_iff_atPrime_of_basicOpen_eq_singleton",
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
  "slug": "islocalization-away-iff-atprime-of-basicopen-eq-singleton--b9bc1b6e030b30975dfd3d65",
  "source": {
    "blob": "6004cfed563644228ff88a81cb0169958b10de93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 638,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9bc1b6e030b30975dfd3d6505526b40a678ad66517e918b78720eed059e10ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f819ac1-9fbc-50e9-2c8e-134589038d0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 638–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalization_away_iff_atPrime_of_basicOpen_eq_singleton [Algebra R S]
    {f : R} {p : PrimeSpectrum R} (h : (basicOpen f).1 = {p}) :
    IsLocalization.Away f S ↔ IsLocalization.AtPrime S p.1 :=
  have : IsLocalization.AtPrime (Localization.Away f) p.1 := by
    refine .of_le_of_exists_dvd (.powers f) _
      (Submonoid.powers_le.mpr <| by apply h ▸ Set.mem_singleton p) fun r hr ↦ ?_
    contrapose! hr
    simp_rw [← Ideal.mem_span_singleton] at hr
    have ⟨q, prime, le, disj⟩ := Ideal.exists_le_prime_disjoint (Ideal.span {r})
      (.powers f) (Set.disjoint_right.mpr hr)
    have : ⟨q, prime⟩ ∈ (basicOpen f).1 := Set.disjoint_right.mp disj (Submonoid.mem_powers f)
    rw [h, Set.mem_singleton_iff] at this
    rw [← this]
    exact not_not.mpr (q.span_singleton_le_iff_mem.mp le)
  IsLocalization.isLocalization_iff_of_isLocalization _ _ (Localization.Away f)

open Localization Polynomial Set in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean#L638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6004cfed563644228ff88a81cb0169958b10de93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
