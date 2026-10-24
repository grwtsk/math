# boundary_ratio_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afa371c2-52cb-5569-e247-6654215e468b",
  "kind": "theorem",
  "lexical_name": "boundary_ratio_exact",
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
  "slug": "boundary-ratio-exact--6e77b947346f51423a9be62f",
  "source": {
    "blob": "1ca71e2e432ceba0b19f0e908a821cd41a4c2f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt05/Variant407574a17c8d4bb64aaca3e3be47ebdb3749416bb29d95e7ebb9cbba1e5bf684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e77b947346f51423a9be62f21a03adedecda03cde0bc84f4e7a5bb2e5695382",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt05/Variant407574a17c8d4bb64aaca3e3be47ebdb3749416bb29d95e7ebb9cbba1e5bf684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afa371c2-52cb-5569-e247-6654215e468b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_ratio_exact {A : ℝ} (hA : 1 ≤ A) {lambda : ℂ}
    (hlambda : lambda ≠ 0) (hc : leadingCoefficient (lambda+1/2) ≠ 0) :
    ContinuousResearch.SourceBoundaryTransform.boundaryTransform A lambda/
      (-lambda*leadingCoefficient (lambda+1/2)^2) =
      (scaledAmplitude A (lambda+1/2)/leadingCoefficient (lambda+1/2))^2 := by
  rw [boundary_eq_scaledAmplitude hA]
  field_simp

/-- Relative boundary transport uses an independently defined actual finite W. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt05/Variant407574a17c8d4bb64aaca3e3be47ebdb3749416bb29d95e7ebb9cbba1e5bf684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt05/Variant407574a17c8d4bb64aaca3e3be47ebdb3749416bb29d95e7ebb9cbba1e5bf684.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ca71e2e432ceba0b19f0e908a821cd41a4c2f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
