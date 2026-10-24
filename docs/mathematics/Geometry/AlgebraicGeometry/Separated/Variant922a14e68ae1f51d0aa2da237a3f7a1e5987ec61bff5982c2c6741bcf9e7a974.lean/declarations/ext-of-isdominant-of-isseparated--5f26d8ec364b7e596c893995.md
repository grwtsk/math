# ext_of_isDominant_of_isSeparated'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ab58596-485f-1d86-23ef-a4b5b19d6881",
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
  "slug": "ext-of-isdominant-of-isseparated--5f26d8ec364b7e596c893995",
  "source": {
    "blob": "9e96c65ac1366435e8ef2e9a8a7e1bd570101ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 262,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f26d8ec364b7e596c893995a224f28c7026e2326b33f9e1c7c13e3183eed36f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ab58596-485f-1d86-23ef-a4b5b19d6881`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–270.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e96c65ac1366435e8ef2e9a8a7e1bd570101ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
