# below_first_atom_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3acf8f2-7947-8a41-7a15-28c44557dbb4",
  "kind": "theorem",
  "lexical_name": "below_first_atom_nonzero",
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
  "slug": "below-first-atom-nonzero--da1964efe62c1aad3e9e51fe",
  "source": {
    "blob": "f10f49591a9ab24fec79c90cb9bc21242224d8ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/ScopeFixtures/Variant8ce4078cf86ddd38daf4565d7d61bef690130223d71b57a41acec040784968a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da1964efe62c1aad3e9e51fe2e37d40648946c23fb47eb2f3d220acbb52debc6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ScopeFixtures/Variant8ce4078cf86ddd38daf4565d7d61bef690130223d71b57a41acec040784968a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3acf8f2-7947-8a41-7a15-28c44557dbb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem below_first_atom_nonzero : mangoldtLogError (Real.log 2 / 2) < 0 := by
  have h : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  rw [mangoldtLogError_below_first_atom (by linarith : Real.log 2 / 2 < Real.log 2)]
  linarith

/-- The closed upper first atom differs from its atom-free left-side formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ScopeFixtures/Variant8ce4078cf86ddd38daf4565d7d61bef690130223d71b57a41acec040784968a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ScopeFixtures/Variant8ce4078cf86ddd38daf4565d7d61bef690130223d71b57a41acec040784968a2.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10f49591a9ab24fec79c90cb9bc21242224d8ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
