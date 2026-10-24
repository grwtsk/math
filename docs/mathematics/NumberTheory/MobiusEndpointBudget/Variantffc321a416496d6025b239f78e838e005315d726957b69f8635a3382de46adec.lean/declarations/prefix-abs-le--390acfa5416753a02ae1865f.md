# prefix_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09c3af2b-2ac6-f0a8-9cef-23993c3202c5",
  "kind": "theorem",
  "lexical_name": "prefix_abs_le",
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
  "slug": "prefix-abs-le--390acfa5416753a02ae1865f",
  "source": {
    "blob": "a90dda14996b30a7a0efd95c12564fc754605bde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 42,
    "path": "GRWTSK/NumberTheory/MobiusEndpointBudget/Variantffc321a416496d6025b239f78e838e005315d726957b69f8635a3382de46adec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:390acfa5416753a02ae1865f9d52b93cd1d83a73e47a70387cbe9af959479e4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/MobiusEndpointBudget/Variantffc321a416496d6025b239f78e838e005315d726957b69f8635a3382de46adec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09c3af2b-2ac6-f0a8-9cef-23993c3202c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem prefix_abs_le (X : ℕ) (x : ℝ) (hx : x ∈ Set.Icc (1 : ℝ) X) :
    |mobiusReciprocalSum ⌊x⌋₊| ≤ 1 + Real.log (X : ℝ) := by
  calc
    _ ≤ (harmonic ⌊x⌋₊ : ℝ) := reciprocal_abs_le_harmonic _
    _ ≤ 1 + Real.log x := harmonic_floor_le_one_add_log x hx.1
    _ ≤ _ := by
      linarith [Real.log_le_log (lt_of_lt_of_le zero_lt_one hx.1) hx.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/MobiusEndpointBudget/Variantffc321a416496d6025b239f78e838e005315d726957b69f8635a3382de46adec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/MobiusEndpointBudget/Variantffc321a416496d6025b239f78e838e005315d726957b69f8635a3382de46adec.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90dda14996b30a7a0efd95c12564fc754605bde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
