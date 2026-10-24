# analyticOnNhd_zeta_disk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80a6684f-7aaf-14bd-291d-6266051f712e",
  "kind": "theorem",
  "lexical_name": "analyticOnNhd_zeta_disk",
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
  "slug": "analyticonnhd-zeta-disk--ca82d82e8d5b11257d2b5ed3",
  "source": {
    "blob": "55576e68843c3929f7a60c843c648e30138bdc3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 27,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca82d82e8d5b11257d2b5ed39c45599d009c1d01901e29bf6060af0bc2953e58",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80a6684f-7aaf-14bd-291d-6266051f712e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticOnNhd_zeta_disk (N : ℕ) (hN : 2 ≤ N) (C : ℂ)
    (hC : C = upperCenter N ∨ C = lowerCenter N) :
    AnalyticOnNhd ℂ riemannZeta (closedBall C (3 : ℝ)) := by
  intro z hz
  apply analyticOn_riemannZeta z
  intro he
  have hi := (disk_geometry N hN C z hC hz).2.1
  rw [he] at hi
  norm_num at hi

/-- A Cauchy circle of radius 1/2 around the closed 5/2 core stays in radius 3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55576e68843c3929f7a60c843c648e30138bdc3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
