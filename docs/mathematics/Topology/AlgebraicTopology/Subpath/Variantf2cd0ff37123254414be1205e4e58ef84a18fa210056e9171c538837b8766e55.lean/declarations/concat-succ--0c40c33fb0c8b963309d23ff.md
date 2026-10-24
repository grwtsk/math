# concat_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22dd28c6-c8c1-813c-a587-e020da1d61de",
  "kind": "lemma",
  "lexical_name": "concat_succ",
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
  "slug": "concat-succ--0c40c33fb0c8b963309d23ff",
  "source": {
    "blob": "141421bd63b7b13f549312e61bab9cff0228a5a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 163,
    "path": "GRWTSK/Topology/AlgebraicTopology/Subpath/Variantf2cd0ff37123254414be1205e4e58ef84a18fa210056e9171c538837b8766e55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c40c33fb0c8b963309d23ffee39fb0d62901a608ef140a80cf75d5fb5487b20",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Subpath/Variantf2cd0ff37123254414be1205e4e58ef84a18fa210056e9171c538837b8766e55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22dd28c6-c8c1-813c-a587-e020da1d61de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma concat_succ (p : Fin (n + 2) → X) (F) :
    concat p F = (concat (p ∘ castSucc) (fun k ↦ (F k.castSucc))).trans (F (last n)) := by
  rw [concat, dfoldl_succ_last]
  rfl

/-- Concatenating the constant path at `x` with itself just yields the constant path at `x`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Subpath/Variantf2cd0ff37123254414be1205e4e58ef84a18fa210056e9171c538837b8766e55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Subpath/Variantf2cd0ff37123254414be1205e4e58ef84a18fa210056e9171c538837b8766e55.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `141421bd63b7b13f549312e61bab9cff0228a5a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
