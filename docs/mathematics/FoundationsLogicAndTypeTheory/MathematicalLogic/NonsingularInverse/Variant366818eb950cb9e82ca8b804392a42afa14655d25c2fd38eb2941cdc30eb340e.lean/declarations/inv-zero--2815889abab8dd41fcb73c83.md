# inv_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b13b739bde77e827ce2557fc98aed0b92c819b46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 452,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/366818eb950cb9e82ca8b804392a42afa14655d25c2fd38eb2941cdc30eb340e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5cd5328-dc2c-7831-8e39-2d46cd911ee5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15cb39eb-993a-0a5a-c2d4-d3cc2e193412",
  "kind": "theorem",
  "lexical_name": "inv_zero",
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
  "slug": "inv-zero--2815889abab8dd41fcb73c83",
  "source": {
    "blob": "b13b739bde77e827ce2557fc98aed0b92c819b46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 452,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant366818eb950cb9e82ca8b804392a42afa14655d25c2fd38eb2941cdc30eb340e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2815889abab8dd41fcb73c83c7471092fbf9464bdad651b92a0b54611666e4ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant366818eb950cb9e82ca8b804392a42afa14655d25c2fd38eb2941cdc30eb340e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15cb39eb-993a-0a5a-c2d4-d3cc2e193412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_zero : (0 : Matrix n n α)⁻¹ = 0 := by
  cases' subsingleton_or_nontrivial α with ht ht
  · simp
  cases' (Fintype.card n).zero_le.eq_or_lt with hc hc
  · rw [eq_comm, Fintype.card_eq_zero_iff] at hc
    haveI := hc
    ext i
    exact (IsEmpty.false i).elim
  · have hn : Nonempty n := Fintype.card_pos_iff.mp hc
    refine' nonsing_inv_apply_not_isUnit _ _
    simp [hn]
#align matrix.inv_zero Matrix.inv_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant366818eb950cb9e82ca8b804392a42afa14655d25c2fd38eb2941cdc30eb340e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant366818eb950cb9e82ca8b804392a42afa14655d25c2fd38eb2941cdc30eb340e.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b13b739bde77e827ce2557fc98aed0b92c819b46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
