# leftCoefficientDepths_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30a136c0-d290-1592-c915-77ebb272f720",
  "kind": "theorem",
  "lexical_name": "leftCoefficientDepths_card",
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
  "slug": "leftcoefficientdepths-card--8d1be88851c7e0a8e8507f0a",
  "source": {
    "blob": "e4d7ea2678100bb1389cc940388bbf7c6ac1bd52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 20,
    "path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d1be88851c7e0a8e8507f0a944ec389c383af0f72c383326c63cdaeffc662ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30a136c0-d290-1592-c915-77ebb272f720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftCoefficientDepths_card
    (j : ℕ) :
    (leftCoefficientDepths j).card = 2 ^ j - 1 := by
  unfold leftCoefficientDepths
  rw [Finset.card_filter]
  simp only [Finset.mem_range]
  have h :
      (Finset.range (2 ^ (j + 1))).filter (fun t => t + 1 < 2 ^ j) =
        Finset.range (2 ^ j - 1) := by
    ext t
    simp
    omega
  rw [h]
  simp

/-- At the boundary retained length `n=2^j`, every left-regime depth
contributes the same terminal first difference and no interior coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d7ea2678100bb1389cc940388bbf7c6ac1bd52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
