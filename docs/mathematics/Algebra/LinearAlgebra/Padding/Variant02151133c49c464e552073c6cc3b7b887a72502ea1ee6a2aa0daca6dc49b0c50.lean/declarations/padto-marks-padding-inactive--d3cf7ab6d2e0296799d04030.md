# padTo_marks_padding_inactive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10a2b660-3a41-69fb-9ce8-2b4d51b2a3d7",
  "kind": "theorem",
  "lexical_name": "padTo_marks_padding_inactive",
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
  "slug": "padto-marks-padding-inactive--d3cf7ab6d2e0296799d04030",
  "source": {
    "blob": "761312945f9c5a3b9bcc82b7589d7fd27342b8fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3cf7ab6d2e0296799d040300bcbcdc3ab9051998dfd51a4d2f9d0dfbb3e3273",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10a2b660-3a41-69fb-9ce8-2b4d51b2a3d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem padTo_marks_padding_inactive (policy : PaddingPolicy)
    (M : BinaryLogicMatrix r c) (hr : r ≤ R) (hc : c ≤ C)
    (i : Fin R) (j : Fin C) :
    (¬ i.val < r ∨ ¬ j.val < c) ->
      (padTo policy M R C hr hc).active.cell i j = false := by
  intro h
  cases h with
  | inl hi =>
      exact padTo_marks_row_padding_inactive policy M hr hc i j hi
  | inr hj =>
      exact padTo_marks_col_padding_inactive policy M hr hc i j hj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `761312945f9c5a3b9bcc82b7589d7fd27342b8fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
