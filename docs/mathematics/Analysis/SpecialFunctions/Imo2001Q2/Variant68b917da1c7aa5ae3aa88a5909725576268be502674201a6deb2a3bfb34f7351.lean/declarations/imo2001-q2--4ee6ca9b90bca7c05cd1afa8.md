# imo2001_q2'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98dc9266722ffb27234782d31b807e15d179501c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68b917da1c7aa5ae3aa88a5909725576268be502674201a6deb2a3bfb34f7351.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81da31de-6645-5368-ce1d-ee0fd7f6f63c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd2e191d-93c3-4fd4-51ed-ca6b4f5fb3da",
  "kind": "theorem",
  "lexical_name": "imo2001_q2'",
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
  "slug": "imo2001-q2--4ee6ca9b90bca7c05cd1afa8",
  "source": {
    "blob": "98dc9266722ffb27234782d31b807e15d179501c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 50,
    "path": "GRWTSK/Analysis/SpecialFunctions/Imo2001Q2/Variant68b917da1c7aa5ae3aa88a5909725576268be502674201a6deb2a3bfb34f7351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ee6ca9b90bca7c05cd1afa85cee63d8eaf1cf50f9cb8d762c88e843d8684347",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Imo2001Q2/Variant68b917da1c7aa5ae3aa88a5909725576268be502674201a6deb2a3bfb34f7351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd2e191d-93c3-4fd4-51ed-ca6b4f5fb3da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imo2001_q2' (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) :
    ↑1 ≤ a ^ 3 / sqrt ((a ^ 3) ^ 2 + ↑8 * b ^ 3 * c ^ 3) +
      b ^ 3 / sqrt ((b ^ 3) ^ 2 + ↑8 * c ^ 3 * a ^ 3) +
        c ^ 3 / sqrt ((c ^ 3) ^ 2 + ↑8 * a ^ 3 * b ^ 3) :=
  have H : a ^ 4 + b ^ 4 + c ^ 4 ≠ 0 := by positivity
  calc
    _ ≥ _ := add_le_add (add_le_add (bound ha hb hc) (bound hb hc ha)) (bound hc ha hb)
    _ = 1 := by ring_nf at H ⊢; field_simp

end Imo2001Q2

open Imo2001Q2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Imo2001Q2/Variant68b917da1c7aa5ae3aa88a5909725576268be502674201a6deb2a3bfb34f7351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Imo2001Q2/Variant68b917da1c7aa5ae3aa88a5909725576268be502674201a6deb2a3bfb34f7351.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98dc9266722ffb27234782d31b807e15d179501c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
