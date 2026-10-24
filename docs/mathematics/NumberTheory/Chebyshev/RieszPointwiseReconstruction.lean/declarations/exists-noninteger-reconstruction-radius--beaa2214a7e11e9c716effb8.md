# exists_noninteger_reconstruction_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81aefd07-0898-587d-7245-7781be25a851",
  "kind": "theorem",
  "lexical_name": "exists_noninteger_reconstruction_radius",
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
  "slug": "exists-noninteger-reconstruction-radius--beaa2214a7e11e9c716effb8",
  "source": {
    "blob": "e086f62a7417d154af4f993c89b52d6fdc9b9df6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 149,
    "path": "GRWTSK/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beaa2214a7e11e9c716effb8877a8c2d5cdda295f3a5828cc3b2b24ff5520434",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81aefd07-0898-587d-7245-7781be25a851`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_noninteger_reconstruction_radius (x : ℝ) (hx : 1 < x)
    (hnot : (⌊x⌋₊ : ℝ) ≠ x) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ h : ℝ, 0 < h → h ≤ δ →
      ∀ N : ℕ, ⌊x⌋₊ ≤ N → symmetricRieszQuotient N x h = psiHalf x := by
  let δ := min (x - (⌊x⌋₊ : ℝ)) ((⌊x⌋₊ : ℝ) + 1 - x)
  have hl : 0 < x - (⌊x⌋₊ : ℝ) :=
    sub_pos.mpr (lt_of_le_of_ne (Nat.floor_le (by linarith)) hnot)
  have hr : 0 < (⌊x⌋₊ : ℝ) + 1 - x := sub_pos.mpr (Nat.lt_floor_add_one x)
  refine ⟨δ, lt_min hl hr, ?_⟩
  intro h hh hd N hN
  exact symmetricRieszQuotient_noninteger N x h hx hN hh
    (hd.trans (min_le_left _ _)) (hd.trans (min_le_right _ _))

/-- Both Riesz evaluation/tail errors are charged before unsmoothing.
The inverse-radius amplification cannot be omitted or made uniform by a
fixed-test convergence statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e086f62a7417d154af4f993c89b52d6fdc9b9df6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
