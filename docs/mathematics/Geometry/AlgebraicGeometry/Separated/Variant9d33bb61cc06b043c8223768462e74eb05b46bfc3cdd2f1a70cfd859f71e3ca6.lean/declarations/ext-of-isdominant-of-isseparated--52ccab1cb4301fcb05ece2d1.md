# ext_of_isDominant_of_isSeparated'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "726f805ed99bc70e21402f45676c9ef6e8a87381",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0e3c9db-4bab-196a-9749-7191466e5edf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fad794fd-c99d-69fd-be11-7d113e323e75",
  "kind": "lemma",
  "lexical_name": "ext_of_isDominant_of_isSeparated'",
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
  "slug": "ext-of-isdominant-of-isseparated--52ccab1cb4301fcb05ece2d1",
  "source": {
    "blob": "726f805ed99bc70e21402f45676c9ef6e8a87381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 324,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52ccab1cb4301fcb05ece2d17e992d43432ecd9653368de037d44aa3f86aab3e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fad794fd-c99d-69fd-be11-7d113e323e75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_of_isDominant_of_isSeparated' [X.Over S] [Y.Over S] [IsReduced X] [IsSeparated (Y ↘ S)]
    {f g : X ⟶ Y} [f.IsOver S] [g.IsOver S] {W} (ι : W ⟶ X) [IsDominant ι]
    (hU : ι ≫ f = ι ≫ g) : f = g :=
  ext_of_isDominant_of_isSeparated (Y ↘ S) (by simp) ι hU

namespace Scheme

/-- A scheme `X` is separated if it is separated over `⊤_ Scheme`. -/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `726f805ed99bc70e21402f45676c9ef6e8a87381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
