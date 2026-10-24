# SignControlledXi.energy_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f631ab58-534f-29c3-6be2-42244d912e5c",
  "kind": "theorem",
  "lexical_name": "SignControlledXi.energy_eq_zero_iff",
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
  "slug": "signcontrolledxi-energy-eq-zero-iff--16b190443c21006204fc9d75",
  "source": {
    "blob": "7b28a2ea77e43563b25646a5fcacfe4d937fefcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 523,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16b190443c21006204fc9d75e586db8799325cde32cea3af8e7d8e1ace920435",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f631ab58-534f-29c3-6be2-42244d912e5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SignControlledXi.energy_eq_zero_iff
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) :
    X.energy z = 0 ↔ z = 0 := by
  constructor
  · intro h
    by_contra hz
    exact (ne_of_gt (X.energy_pos hz)) h
  · rintro rfl
    simp [SignControlledXi.energy]

end

end GRWTSK.AlgebraicGeometry.Hodge.CMArchimedeanPositivity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b28a2ea77e43563b25646a5fcacfe4d937fefcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
