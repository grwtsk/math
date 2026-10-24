# boundary_ratio_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c6fc4a2-ee4a-b1a7-c88f-191e54626872",
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
  "slug": "boundary-ratio-exact--af8fb57ed6ad96f7e9419678",
  "source": {
    "blob": "18c2654a9d030dd7a623cba5c34dc5b2ae74ea7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant517cb6dfdc6054211b9676172d3b6c550ff49a5c378e77b10418ef53429ffcfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af8fb57ed6ad96f7e941967857ab0b9aa963c0932201c5c6b61139e29ed59ae6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant517cb6dfdc6054211b9676172d3b6c550ff49a5c378e77b10418ef53429ffcfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c6fc4a2-ee4a-b1a7-c88f-191e54626872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–234.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant517cb6dfdc6054211b9676172d3b6c550ff49a5c378e77b10418ef53429ffcfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant517cb6dfdc6054211b9676172d3b6c550ff49a5c378e77b10418ef53429ffcfc.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18c2654a9d030dd7a623cba5c34dc5b2ae74ea7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
