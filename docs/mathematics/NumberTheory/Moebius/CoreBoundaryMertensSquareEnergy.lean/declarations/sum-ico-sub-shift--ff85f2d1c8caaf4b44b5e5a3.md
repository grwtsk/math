# sum_Ico_sub_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1b695b0-31db-01fa-fdcc-26e75e9bf6bb",
  "kind": "theorem",
  "lexical_name": "sum_Ico_sub_shift",
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
  "slug": "sum-ico-sub-shift--ff85f2d1c8caaf4b44b5e5a3",
  "source": {
    "blob": "da8dc01529865475e7505bfa12a98fa129e2b44a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff85f2d1c8caaf4b44b5e5a3fcd0bfad5aec3ffc917d5691e1c6513335c72a56",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1b695b0-31db-01fa-fdcc-26e75e9bf6bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_Ico_sub_shift
    (F : ℕ → ℝ)
    {a b u : ℕ}
    (hua : u ≤ a) :
    (∑ t ∈ Finset.Ico a b, F (t - u)) =
      ∑ s ∈ Finset.Ico (a - u) (b - u), F s := by
  classical
  apply Finset.sum_bij (fun t _ => t - u)
  · intro t ht
    simp only [Finset.mem_Ico] at ht ⊢
    omega
  · intro t₁ ht₁ t₂ ht₂ h
    simp only [Finset.mem_Ico] at ht₁ ht₂
    omega
  · intro s hs
    simp only [Finset.mem_Ico] at hs
    refine ⟨s + u, ?_, ?_⟩
    · simp only [Finset.mem_Ico]
      omega
    · omega
  · intro t ht
    rfl

/-- The signed boundary tail is itself an exact difference of ordinary Mertens
prefixes.  Natural subtraction supplies the zero lower prefix when `u>D`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da8dc01529865475e7505bfa12a98fa129e2b44a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
