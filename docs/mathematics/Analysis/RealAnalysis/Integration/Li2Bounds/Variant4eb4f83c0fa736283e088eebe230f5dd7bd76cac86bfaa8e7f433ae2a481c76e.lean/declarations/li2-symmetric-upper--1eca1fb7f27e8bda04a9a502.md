# li2_symmetric_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d636514-2257-7e48-b2df-e4ac2caf42c9",
  "kind": "theorem",
  "lexical_name": "li2_symmetric_upper",
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
  "slug": "li2-symmetric-upper--1eca1fb7f27e8bda04a9a502",
  "source": {
    "blob": "07cb34995bd65d76b2aee043136040f40bf03c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eca1fb7f27e8bda04a9a502fb6a27231c7b0b6dcf7ed491da951a11aa049c35",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d636514-2257-7e48-b2df-e4ac2caf42c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li2_symmetric_upper : li2_symmetric ≤ (106 : ℚ) / 100 := by
  rw [li2_symmetric_eq_Li2_li2]
  exact Li2.li2_upper

@[blueprint
  "li2-bounds"
  (title := "Bounds on li(2)")
  (statement :=
    /-- $1.039 \leq \mathrm{li}(2) \leq 1.06$ -/)
  (discussion := 759)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07cb34995bd65d76b2aee043136040f40bf03c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
