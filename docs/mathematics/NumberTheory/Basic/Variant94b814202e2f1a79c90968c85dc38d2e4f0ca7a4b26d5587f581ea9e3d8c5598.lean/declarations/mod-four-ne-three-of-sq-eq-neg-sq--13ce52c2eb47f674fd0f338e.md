# mod_four_ne_three_of_sq_eq_neg_sq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1a64044be2df5d77f50e06e17a0992722ec6ae6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a020fdc6-47b6-2831-eb67-b894ccafb184",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6def65a0-1291-d35c-4773-3b55390841ee",
  "kind": "theorem",
  "lexical_name": "mod_four_ne_three_of_sq_eq_neg_sq'",
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
  "slug": "mod-four-ne-three-of-sq-eq-neg-sq--13ce52c2eb47f674fd0f338e",
  "source": {
    "blob": "a1a64044be2df5d77f50e06e17a0992722ec6ae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 310,
    "path": "GRWTSK/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13ce52c2eb47f674fd0f338e363770a67057f3da9fac802afd030de825299206",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6def65a0-1291-d35c-4773-3b55390841ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod_four_ne_three_of_sq_eq_neg_sq' {x y : ZMod p} (hy : y ≠ 0) (hxy : x ^ 2 = -y ^ 2) :
    p % 4 ≠ 3 :=
  @mod_four_ne_three_of_sq_eq_neg_one p _ (x / y)
    (by
      apply_fun fun z => z / y ^ 2 at hxy
      rwa [neg_div, ← div_pow, ← div_pow, div_self hy, one_pow] at hxy )
#align zmod.mod_four_ne_three_of_sq_eq_neg_sq' ZMod.mod_four_ne_three_of_sq_eq_neg_sq'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1a64044be2df5d77f50e06e17a0992722ec6ae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
