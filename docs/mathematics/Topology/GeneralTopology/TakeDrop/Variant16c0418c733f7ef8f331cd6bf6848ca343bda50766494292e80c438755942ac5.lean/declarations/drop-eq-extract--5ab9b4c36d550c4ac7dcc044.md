# drop_eq_extract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1c857db7b83e23eff56fe00f2feeec40d575595",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a06da83d-e4b8-94e5-8658-ee78380e794f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18e60916-2aae-c77e-975d-be82621c827c",
  "kind": "theorem",
  "lexical_name": "drop_eq_extract",
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
  "slug": "drop-eq-extract--5ab9b4c36d550c4ac7dcc044",
  "source": {
    "blob": "f1c857db7b83e23eff56fe00f2feeec40d575595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 262,
    "path": "GRWTSK/Topology/GeneralTopology/TakeDrop/Variant16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ab9b4c36d550c4ac7dcc04467f094cacec1a2c038a589172ccf2e73ff27a0f4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TakeDrop/Variant16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18e60916-2aae-c77e-975d-be82621c827c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem drop_eq_extract {l : List α} {k : Nat} :
    l.drop k = l.extract k := by
  induction l generalizing k
  case nil => simp
  case cons _ _ ih =>
    match k with
    | 0 => simp
    | _ + 1 =>
      simp only [List.drop_succ_cons, List.length_cons, ih]
      simp only [List.extract_eq_take_drop, List.drop_succ_cons, Nat.succ_sub_succ]

/-! ### takeWhile and dropWhile -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TakeDrop/Variant16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TakeDrop/Variant16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1c857db7b83e23eff56fe00f2feeec40d575595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
