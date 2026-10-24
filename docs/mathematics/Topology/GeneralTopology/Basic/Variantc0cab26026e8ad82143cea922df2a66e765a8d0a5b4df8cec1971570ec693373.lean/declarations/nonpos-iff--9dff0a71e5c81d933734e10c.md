# nonpos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1e3953b08dfa64478defc40e0ff5ca7ef8814d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 771,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b16fabc-5d80-a4bd-7628-0fa8b5eb41a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac2d9279-0da8-509f-dec1-c59794cdc558",
  "kind": "theorem",
  "lexical_name": "nonpos_iff",
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
  "slug": "nonpos-iff--9dff0a71e5c81d933734e10c",
  "source": {
    "blob": "e1e3953b08dfa64478defc40e0ff5ca7ef8814d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 771,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dff0a71e5c81d933734e10cb1ef3f2ff4ec5c99fb56801bae59a99be790e3ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac2d9279-0da8-509f-dec1-c59794cdc558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 771–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonpos_iff : z ≤ 0 ↔ re z ≤ 0 ∧ im z = 0 := by
  simpa only [map_zero] using le_iff_re_im (z := z) (w := 0)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.lean#L771).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1e3953b08dfa64478defc40e0ff5ca7ef8814d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
