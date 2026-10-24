# map_map₂_antidistrib_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05495f6e-4a5b-97bf-a6a8-b370a1f1c506",
  "kind": "theorem",
  "lexical_name": "map_map₂_antidistrib_right",
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
  "slug": "map-map-antidistrib-right--6856c530509c74825a228f4f",
  "source": {
    "blob": "be8f8ccd316f36d06e7f650cfcde99f5e7fa500d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 256,
    "path": "GRWTSK/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6856c530509c74825a228f4f7875355d1ce255f01106f1001ab8739b49a29a51",
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

Occurrence: `result:05495f6e-4a5b-97bf-a6a8-b370a1f1c506`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_map₂_antidistrib_right {n : γ → δ} {m' : β → α' → δ} {n' : α → α'}
    (h_antidistrib : ∀ a b, n (m a b) = m' b (n' a)) : (map₂ m f g).map n = map₂ m' g (f.map n') :=
  map_map₂_antidistrib h_antidistrib

/-- Symmetric statement to `Filter.map_map₂_antidistrib_left`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be8f8ccd316f36d06e7f650cfcde99f5e7fa500d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
