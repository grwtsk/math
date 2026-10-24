# centeredCoefficientMass_sq_le_absoluteCoprimeMajorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15950cb1-3292-3a8a-479c-a2312231550f",
  "kind": "theorem",
  "lexical_name": "centeredCoefficientMass_sq_le_absoluteCoprimeMajorant",
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
  "slug": "centeredcoefficientmass-sq-le-absolutecoprimemajorant--15129a83c4cf4a0e265b6b05",
  "source": {
    "blob": "f588503b27f220eb0bd5d192fcc8c14fa76128a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 280,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15129a83c4cf4a0e265b6b056043036c884aedeaacbb46dc44e5ffc3909eb525",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15950cb1-3292-3a8a-479c-a2312231550f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredCoefficientMass_sq_le_absoluteCoprimeMajorant
    {X : ℕ}
    (hX : 0 < X)
    (w : ℕ → ℝ) :
    (centeredCoefficientMass X w)^2 ≤
      absoluteCoprimeMobiusSquareMajorant X w := by
  unfold absoluteCoprimeMobiusSquareMajorant
  calc
    (centeredCoefficientMass X w)^2 =
        |mobiusReal 1| *
          (centeredDivisibilityTail X w 1)^2 := by
      rw [centeredDivisibilityTail_one]
      simp [mobiusReal]
    _ ≤
      ∑ r ∈ modulusIndexSet X,
        |mobiusReal r| *
          (centeredDivisibilityTail X w r)^2 := by
      exact Finset.single_le_sum
        (f := fun r : ℕ => |mobiusReal r| * (centeredDivisibilityTail X w r)^2)
        (fun r hr => mul_nonneg (abs_nonneg _) (sq_nonneg _))
        (one_mem_modulusIndexSet hX)

/-- Consequently, after identifying the centered mass with von Mangoldt, any
termwise absolute treatment of the coprime Möbius-square expansion already
requires the full smoothed centered-value square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f588503b27f220eb0bd5d192fcc8c14fa76128a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
