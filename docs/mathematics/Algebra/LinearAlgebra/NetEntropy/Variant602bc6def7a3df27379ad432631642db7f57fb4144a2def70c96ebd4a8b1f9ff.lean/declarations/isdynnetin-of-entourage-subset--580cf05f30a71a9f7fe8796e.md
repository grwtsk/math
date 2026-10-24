# IsDynNetIn.of_entourage_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a19f5432-e8c5-12c0-d816-a9b5f64d234f",
  "kind": "lemma",
  "lexical_name": "IsDynNetIn.of_entourage_subset",
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
  "slug": "isdynnetin-of-entourage-subset--580cf05f30a71a9f7fe8796e",
  "source": {
    "blob": "0b33af122a73027f6721a0e16d69f4d50bb08206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 83,
    "path": "GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:580cf05f30a71a9f7fe8796e4c9a216e8bfbd444a55d769d0a7b5c40098b81fb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a19f5432-e8c5-12c0-d816-a9b5f64d234f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsDynNetIn.of_entourage_subset (U_V : U ⊆ V) (h : IsDynNetIn T F V n s) :
    IsDynNetIn T F U n s :=
  ⟨h.1, PairwiseDisjoint.mono h.2 fun x ↦ ball_mono (dynEntourage_monotone T n U_V) x⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b33af122a73027f6721a0e16d69f4d50bb08206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
