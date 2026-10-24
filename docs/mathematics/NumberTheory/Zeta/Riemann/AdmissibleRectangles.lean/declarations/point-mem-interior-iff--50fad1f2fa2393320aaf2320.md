# point_mem_interior_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd7273c8-6cb3-58f6-c355-48f3943965a4",
  "kind": "theorem",
  "lexical_name": "point_mem_interior_iff",
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
  "slug": "point-mem-interior-iff--50fad1f2fa2393320aaf2320",
  "source": {
    "blob": "04450322ed067cd65d343985f2ea92c5a968c734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 210,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50fad1f2fa2393320aaf2320f7b2b4b7821c05c590861f6ae09dd89ec8ea0e9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd7273c8-6cb3-58f6-c355-48f3943965a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem point_mem_interior_iff (N : ℕ) (z : ZeroPoint) :
    z.1 ∈ interior N ↔ z ∈ heightHead (contourHeight N) := by
  constructor
  · intro hz
    exact (mem_heightHead _ z).mpr hz.2.2.le
  · intro hz
    have hle := (mem_heightHead _ z).mp hz
    have hlt : height z < contourHeight N := by
      by_contra hn
      exact contourHeight_avoids N z (le_antisymm hle (le_of_not_gt hn))
    exact ⟨(leftEdge_neg N).trans (point_mem_strip z).1,
      (point_mem_strip z).2.trans (by norm_num), hlt⟩

/-- The left boundary -2N-1 encloses precisely tau_0,...,tau_(N-1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04450322ed067cd65d343985f2ea92c5a968c734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
