# separated_entry_eq_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b44763d6893c48a9e70fc7943dc5950a59534a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a2b8477-fb48-1394-bb84-c2c2d7983847",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ecd6f33-dd79-e992-e663-915cfffb9d9d",
  "kind": "theorem",
  "lexical_name": "separated_entry_eq_tail",
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
  "slug": "separated-entry-eq-tail--e473fa16ab414a805e7eb62e",
  "source": {
    "blob": "0b44763d6893c48a9e70fc7943dc5950a59534a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 135,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e473fa16ab414a805e7eb62ea300be44f503fabadd27a7aaec67bf9b995152c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ecd6f33-dd79-e992-e663-915cfffb9d9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem separated_entry_eq_tail
    (htransport : ThetaTailTransport)
    {k : ℕ} {r c : Fin k ↪o ℕ}
    (h : Separation r c) (i j : Fin k) :
    entry XiToeplitz.coefficient (r i) (c j) =
      8 * (4 : ℝ) ^ (h.rowDebt i) *
        tailPairing (h.columnDegree j) (h.rowDebt i) := by
  have hrc : r i ≤ c j := h.row_le_column i j
  rw [entry, if_pos hrc]
  rw [h.difference_eq i j]
  exact htransport (h.columnDegree j) (h.rowDebt i)

/-- The proposed source Pluecker theorem.  The fixed sign is the orientation
created by reversing decreasing row-debt order into increasing tail order.
This is the genuinely new all-orders theorem target; it is not assumed by any
generic Grassmannian definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b44763d6893c48a9e70fc7943dc5950a59534a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
