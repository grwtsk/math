# stdPart_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1379dbc8a5c6b9067f47ca62b5bedb507630c82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 438,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d327631-001d-9849-9420-66858d124004",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47732621-2ef9-4e5e-e9d5-710c1fe1e349",
  "kind": "theorem",
  "lexical_name": "stdPart_eq",
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
  "slug": "stdpart-eq--defd6eec4582521a2d1db245",
  "source": {
    "blob": "d1379dbc8a5c6b9067f47ca62b5bedb507630c82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 438,
    "path": "GRWTSK/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:defd6eec4582521a2d1db2459317624da223e43364f34503c88938b0efb8c84a",
  "verification": {
    "reference": "docs/verification/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47732621-2ef9-4e5e-e9d5-710c1fe1e349`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stdPart_eq (f : ℝ →+*o K) {r : ℝ} (hl : ∀ s < r, f s ≤ x) (hr : ∀ s > r, x ≤ f s) :
    stdPart x = r := by
  have hx : 0 ≤ mk x := by
    apply mk_nonneg_of_le_of_le_of_archimedean f (hl (r - 1) _) (hr (r + 1) _) <;> simp
  obtain h | rfl | h := lt_trichotomy (stdPart x) r
  · obtain ⟨s, hs, hs'⟩ := exists_between h
    cases (le_stdPart_of_le f hx (hl _ hs')).not_gt hs
  · rfl
  · obtain ⟨s, hs, hs'⟩ := exists_between h
    cases (stdPart_le_of_le f hx (hr _ hs)).not_gt hs'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1379dbc8a5c6b9067f47ca62b5bedb507630c82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
