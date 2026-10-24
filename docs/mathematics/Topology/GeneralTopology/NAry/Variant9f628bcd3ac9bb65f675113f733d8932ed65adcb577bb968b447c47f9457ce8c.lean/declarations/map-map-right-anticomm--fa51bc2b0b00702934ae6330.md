# map_map₂_right_anticomm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7161f0f7-ae9a-9204-ed75-db57b20dcb0e",
  "kind": "theorem",
  "lexical_name": "map_map₂_right_anticomm",
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
  "slug": "map-map-right-anticomm--fa51bc2b0b00702934ae6330",
  "source": {
    "blob": "be8f8ccd316f36d06e7f650cfcde99f5e7fa500d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 267,
    "path": "GRWTSK/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa51bc2b0b00702934ae6330bf17cee251195336ca8ebb25b94e5fe386f90ed6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7161f0f7-ae9a-9204-ed75-db57b20dcb0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_map₂_right_anticomm {m : α → β' → γ} {n : β → β'} {m' : β → α → δ} {n' : δ → γ}
    (h_right_anticomm : ∀ a b, m a (n b) = n' (m' b a)) :
    map₂ m f (g.map n) = (map₂ m' g f).map n' :=
  (map_map₂_antidistrib_right fun a b => (h_right_anticomm b a).symm).symm

/-- If `a` is a left identity for `f : α → β → β`, then `pure a` is a left identity for
`Filter.map₂ f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be8f8ccd316f36d06e7f650cfcde99f5e7fa500d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
