# exact_carrier_membership_iff_exact_torsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6328434-ca16-d78b-6d0f-7543d5a7d0da",
  "kind": "theorem",
  "lexical_name": "exact_carrier_membership_iff_exact_torsion",
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
  "slug": "exact-carrier-membership-iff-exact-torsion--3ddaed34aef285a24d55c18a",
  "source": {
    "blob": "c80fcd4787a9067b613e67f4e547cfb53cd049e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 211,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ddaed34aef285a24d55c18ae3fd1ea7ef742cc9b2c934e9541501b4264a404c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6328434-ca16-d78b-6d0f-7543d5a7d0da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_carrier_membership_iff_exact_torsion
    (n : Nat) (carrier : List Point) (P : Point) :
    P ∈ surface.exactCarrier n carrier ↔
      P ∈ carrier ∧ surface.projector.stratification.exactTorsion n P := by
  constructor
  · intro hMember
    have hProjected :=
      (surface.exactCarrier_membership n carrier P).mp hMember
    exact ⟨hProjected.1,
      (surface.projector.projectsExact_iff_exactTorsion n P).mp hProjected.2⟩
  · intro hMember
    exact (surface.exactCarrier_membership n carrier P).mpr
      ⟨hMember.1,
        (surface.projector.projectsExact_iff_exactTorsion n P).mpr hMember.2⟩

end CharacterScatterSurface

/-- Count-surface tag for the two real Lie-group component cases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c80fcd4787a9067b613e67f4e547cfb53cd049e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
