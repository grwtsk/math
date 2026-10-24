# log_pos_of_isRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fe4380a167ceb6b20db4664740c8c4689c3eec0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 505,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:667cf0dc-d0e2-73ac-c8a2-dc65a00e9c75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de2b7fca-1019-b2ff-29d4-8e5c3a0a0c12",
  "kind": "lemma",
  "lexical_name": "log_pos_of_isRat",
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
  "slug": "log-pos-of-israt--8dd2588002b6ab0e39a3d48e",
  "source": {
    "blob": "5fe4380a167ceb6b20db4664740c8c4689c3eec0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 505,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dd2588002b6ab0e39a3d48ed473ccc21e5e17f5d29765100d9b442c38d46203",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de2b7fca-1019-b2ff-29d4-8e5c3a0a0c12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_pos_of_isRat {n : ℤ} :
    (NormNum.IsRat e n d) → (decide ((1 : ℚ) < n / d)) → (0 < Real.log (e : ℝ))
  | ⟨inv, eq⟩, h => by
    rw [eq, invOf_eq_inv, ← div_eq_mul_inv]
    have : 1 < (n : ℝ) / d := by exact_mod_cast of_decide_eq_true h
    exact Real.log_pos this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fe4380a167ceb6b20db4664740c8c4689c3eec0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
