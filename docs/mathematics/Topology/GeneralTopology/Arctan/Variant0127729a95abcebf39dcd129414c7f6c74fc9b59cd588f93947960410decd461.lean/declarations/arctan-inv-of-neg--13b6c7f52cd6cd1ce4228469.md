# arctan_inv_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1065593-9b0b-fe67-fd5f-304abe057419",
  "kind": "theorem",
  "lexical_name": "arctan_inv_of_neg",
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
  "slug": "arctan-inv-of-neg--13b6c7f52cd6cd1ce4228469",
  "source": {
    "blob": "6f4f4219958226df948228050e830dd47a192579",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/Arctan/Variant0127729a95abcebf39dcd129414c7f6c74fc9b59cd588f93947960410decd461.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13b6c7f52cd6cd1ce4228469a320a87c7454b870879487f1985d058608439317",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Arctan/Variant0127729a95abcebf39dcd129414c7f6c74fc9b59cd588f93947960410decd461.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1065593-9b0b-fe67-fd5f-304abe057419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arctan_inv_of_neg {x : ℝ} (h : x < 0) : arctan x⁻¹ = -(π / 2) - arctan x := by
  have := arctan_inv_of_pos (neg_pos.mpr h)
  rwa [inv_neg, arctan_neg, neg_eq_iff_eq_neg, neg_sub', arctan_neg, neg_neg] at this

section ArctanAdd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Arctan/Variant0127729a95abcebf39dcd129414c7f6c74fc9b59cd588f93947960410decd461.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Arctan/Variant0127729a95abcebf39dcd129414c7f6c74fc9b59cd588f93947960410decd461.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f4f4219958226df948228050e830dd47a192579` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
