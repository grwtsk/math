# all_torsion_iff_exists_exact_divisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2dbdacf-58c8-f040-fc05-80cb2d7add3d",
  "kind": "theorem",
  "lexical_name": "all_torsion_iff_exists_exact_divisor",
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
  "slug": "all-torsion-iff-exists-exact-divisor--9a6a2e8913c2fe6d883f2b9a",
  "source": {
    "blob": "c80fcd4787a9067b613e67f4e547cfb53cd049e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a6a2e8913c2fe6d883f2b9a67e2c010e0c09a3a4bd3aa4059928f3356342ffd",
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

Occurrence: `result:c2dbdacf-58c8-f040-fc05-80cb2d7add3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_torsion_iff_exists_exact_divisor
    (n : Nat) (P : Point) :
    surface.allTorsion n P ↔
      ∃ d : Nat, d ∣ n ∧ surface.exactTorsion d P := by
  constructor
  · intro hAll
    have hDvd : surface.exactOrder P ∣ n :=
      (surface.allTorsion_iff_exact_order_dvd n P).mp hAll
    exact ⟨surface.exactOrder P, hDvd,
      (surface.exactTorsion_iff_exact_order_eq (surface.exactOrder P) P).mpr rfl⟩
  · intro h
    rcases h with ⟨d, hDvd, hExact⟩
    have hOrder : surface.exactOrder P = d :=
      (surface.exactTorsion_iff_exact_order_eq d P).mp hExact
    have hOrderDvd : surface.exactOrder P ∣ n := by
      rw [hOrder]
      exact hDvd
    exact (surface.allTorsion_iff_exact_order_dvd n P).mpr hOrderDvd

/-- Exact-order strata are disjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c80fcd4787a9067b613e67f4e547cfb53cd049e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
