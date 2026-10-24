# square_contracts_without_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42d5c4ea-ea42-3007-a57d-d982d8188318",
  "kind": "theorem",
  "lexical_name": "square_contracts_without_zero",
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
  "slug": "square-contracts-without-zero--bdaa1a7c132ba43ecfc44dfd",
  "source": {
    "blob": "876e8e70dff3271ac3b78dc51bf6bb772605e582",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdaa1a7c132ba43ecfc44dfddeeec4d4ddb34cde33f10aa81b9e1c8c7005b1f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42d5c4ea-ea42-3007-a57d-d982d8188318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_contracts_without_zero :
    Nonempty (HomotopyWith
      (GRWTSK.RiemannHypothesis.PoleContourHomotopy.sourceLoop 4 square)
      (ContinuousMap.const I (1 : ℂ))
      (fun g => g 0 = g 1 ∧ ∀ t, g t ≠ 0)) := by
  have h : Nonempty (HomotopyWith
      (GRWTSK.RiemannHypothesis.PoleContourHomotopy.sourceLoop 4 square)
      (GRWTSK.RiemannHypothesis.PoleContourHomotopy.imageLoop 4 constantImage)
      (fun g => g 0 = g 1 ∧ ∀ t, g t ≠ 0)) :=
    ⟨GRWTSK.RiemannHypothesis.PoleContourHomotopy.freeHomotopy image_checked square_enclosures⟩
  simpa only [square_image_is_constant] using h

/-- The exact previously inspected false-enclosure obstruction is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `876e8e70dff3271ac3b78dc51bf6bb772605e582` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
