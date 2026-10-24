# IsCover.of_maximal_isSeparated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2037f42-0d01-c0c0-4705-9dc6878a39dd",
  "kind": "lemma",
  "lexical_name": "IsCover.of_maximal_isSeparated",
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
  "slug": "iscover-of-maximal-isseparated--7fe0f96f9c92786a4fa55080",
  "source": {
    "blob": "dac7047a27718925348be4d2b49264a137e105bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/Cover/Variantebf1968ac338627feba5bc95fd248042bc711d249089be79af5d984c4cd46652.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fe0f96f9c92786a4fa55080f2dae2dd110bd7c7898b780f0d81a58179af4a78",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cover/Variantebf1968ac338627feba5bc95fd248042bc711d249089be79af5d984c4cd46652.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2037f42-0d01-c0c0-4705-9dc6878a39dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCover.of_maximal_isSeparated [U.IsRefl] [U.IsSymm]
    (hN : Maximal (fun N ↦ N ⊆ s ∧ IsSeparated U N) N) : IsCover U s N := by
  rintro x hx
  by_contra! h
  simpa [U.rfl] using h _ <| hN.2 (y := insert x N) ⟨by simp [insert_subset_iff, hx, hN.1.1],
    hN.1.2.insert fun y hy hxy ↦ (h y hy hxy).elim⟩ (subset_insert _ _) (mem_insert _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cover/Variantebf1968ac338627feba5bc95fd248042bc711d249089be79af5d984c4cd46652.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cover/Variantebf1968ac338627feba5bc95fd248042bc711d249089be79af5d984c4cd46652.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dac7047a27718925348be4d2b49264a137e105bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
