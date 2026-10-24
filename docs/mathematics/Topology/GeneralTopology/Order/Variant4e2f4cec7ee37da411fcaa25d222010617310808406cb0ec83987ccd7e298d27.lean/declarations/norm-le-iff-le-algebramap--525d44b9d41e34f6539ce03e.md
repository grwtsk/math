# norm_le_iff_le_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea1553211913832c6702fc10a2eeaff0d9794270",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d312519d-017b-6661-a5d0-6f09d3b7f701",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cee45616-7609-752f-ffac-87c7b817368d",
  "kind": "lemma",
  "lexical_name": "norm_le_iff_le_algebraMap",
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
  "slug": "norm-le-iff-le-algebramap--525d44b9d41e34f6539ce03e",
  "source": {
    "blob": "ea1553211913832c6702fc10a2eeaff0d9794270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 205,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:525d44b9d41e34f6539ce03e026ca3461f0f64dbea56ab1984207f7c75c8d70f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cee45616-7609-752f-ffac-87c7b817368d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_le_iff_le_algebraMap (a : A) {r : ℝ} (hr : 0 ≤ r) (ha : 0 ≤ a := by cfc_tac) :
    ‖a‖ ≤ r ↔ a ≤ algebraMap ℝ A r := by
  rw [le_algebraMap_iff_spectrum_le]
  obtain (h | _) := subsingleton_or_nontrivial A
  · simp [Subsingleton.elim a 0, hr]
  · exact ⟨fun h x hx ↦ Real.le_norm_self x |>.trans (spectrum.norm_le_norm_of_mem hx) |>.trans h,
      fun h ↦ h ‖a‖ <| norm_mem_spectrum_of_nonneg⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea1553211913832c6702fc10a2eeaff0d9794270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
