# h_apply_infinity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "150675a003a151500d5b2be1e89949b8f7524835",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d55cf536-2c94-3e77-0984-a3dfc95df52a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2f4ed08-9586-acda-3baa-bebcd1e40430",
  "kind": "theorem",
  "lexical_name": "h_apply_infinity",
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
  "slug": "h-apply-infinity--d0d39d64a5ba85d3d2f79139",
  "source": {
    "blob": "150675a003a151500d5b2be1e89949b8f7524835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 219,
    "path": "GRWTSK/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0d39d64a5ba85d3d2f791393860a2f1b99d79d4c92c8cdf37bad67856defbf7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2f4ed08-9586-acda-3baa-bebcd1e40430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem h_apply_infinity (x : B) (hx : x ∈ f.hom.range) : (h x) ∞ = ∞ := by
  change ((τ).symm.trans (g x)).trans τ _ = _
  simp only [MonoidHom.coe_mk, Equiv.toFun_as_coe, Equiv.coe_trans, Function.comp_apply]
  rw [τ_symm_apply_infinity, g_apply_fromCoset]
  simpa only using τ_apply_fromCoset' f x hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150675a003a151500d5b2be1e89949b8f7524835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
