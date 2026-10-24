# rationalize_eq_of_sub_mem_lost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "997f612416073194ef9f54f013fd6720066838b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/Geometry/Hodge/RationalKTheoryComparison.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2b8594f-5a93-cf3d-9437-8347ce9f73cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05a63273-85e8-fa95-4737-17d87d80241f",
  "kind": "theorem",
  "lexical_name": "rationalize_eq_of_sub_mem_lost",
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
  "slug": "rationalize-eq-of-sub-mem-lost--9dd949cc7656636f2425f5cf",
  "source": {
    "blob": "997f612416073194ef9f54f013fd6720066838b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 36,
    "path": "GRWTSK/Geometry/Hodge/RationalKTheoryComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dd949cc7656636f2425f5cfead145c4d18bdc0c6545b52a400ecf789d8536ba",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/RationalKTheoryComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05a63273-85e8-fa95-4737-17d87d80241f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rationalize_eq_of_sub_mem_lost
    (R : RationalizationData KIntegral KQ) {x y : KIntegral}
    (hxy : x - y ∈ R.lost) :
    R.rationalize x = R.rationalize y := by
  have hzero : R.rationalize (x - y) = 0 :=
    (R.rationalize_eq_zero_iff (x - y)).2 hxy
  have hsub : R.rationalize x - R.rationalize y = 0 := by
    simpa using hzero
  exact sub_eq_zero.mp hsub

end RationalizationData

/-- A rational Chern-character-shaped comparison with a separately recorded correction.

For geometric applications the correction may encode a Todd class or another declared
Grothendieck--Riemann--Roch factor. Setting it to zero is an additional theorem, not a default. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/RationalKTheoryComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/RationalKTheoryComparison.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `997f612416073194ef9f54f013fd6720066838b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
