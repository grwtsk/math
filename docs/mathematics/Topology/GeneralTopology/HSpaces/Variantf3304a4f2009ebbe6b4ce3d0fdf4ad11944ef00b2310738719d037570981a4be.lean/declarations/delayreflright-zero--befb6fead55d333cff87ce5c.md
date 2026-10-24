# delayReflRight_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71a9ef6282fd3e86e6e7b2c86cbe408cc288ca38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4090ddb5-2232-83d9-fb0e-1a87fc091529",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97d133c1-7bbc-87d0-f879-9b6e782807f3",
  "kind": "theorem",
  "lexical_name": "delayReflRight_zero",
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
  "slug": "delayreflright-zero--befb6fead55d333cff87ce5c",
  "source": {
    "blob": "71a9ef6282fd3e86e6e7b2c86cbe408cc288ca38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 203,
    "path": "GRWTSK/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:befb6fead55d333cff87ce5ce68b8b8474bb564959e99792db53e134f115f170",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97d133c1-7bbc-87d0-f879-9b6e782807f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem delayReflRight_zero (γ : Path x y) : delayReflRight 0 γ = γ.trans (Path.refl y) := by
  ext t
  simp only [delayReflRight, trans_apply, refl_extend, Path.coe_mk_mk, Function.comp_apply,
    refl_apply]
  split_ifs with h; swap
  on_goal 1 => conv_rhs => rw [← γ.target]
  all_goals apply congr_arg γ; ext1; rw [qRight_zero_right]
  exacts [if_neg h, if_pos h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71a9ef6282fd3e86e6e7b2c86cbe408cc288ca38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
