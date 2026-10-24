# centeredWindingRadius_cast_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e744d171-7316-a1b9-ba0b-d2bc55ab9d18",
  "kind": "theorem",
  "lexical_name": "centeredWindingRadius_cast_le",
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
  "slug": "centeredwindingradius-cast-le--c551d5e5d373892bbb1fef93",
  "source": {
    "blob": "40fe5172d37244ee49172c471d497b1d45261d64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c551d5e5d373892bbb1fef93a653af536aba97692b743e13f1ebcc35b0eab58f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e744d171-7316-a1b9-ba0b-d2bc55ab9d18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredWindingRadius_cast_le
    (b d : ℕ) [NeZero d] :
    (centeredWindingRadius b d : ℝ) ≤
      (b : ℝ) * (((d : ℝ) ^ 2)⁻¹) := by
  unfold centeredWindingRadius
  have hdpos : 0 < d * d := by
    exact Nat.mul_pos (Nat.pos_of_ne_zero (NeZero.ne d))
      (Nat.pos_of_ne_zero (NeZero.ne d))
  have hfloor :
      b / (d * d) * (d * d) ≤ b :=
    Nat.div_mul_le_self b (d * d)
  have hcast :
      ((b / (d * d) : ℕ) : ℝ) * ((d * d : ℕ) : ℝ) ≤ (b : ℝ) := by
    exact_mod_cast hfloor
  have hqpos : (0 : ℝ) < ((d * d : ℕ) : ℝ) := by
    positivity
  rw [show (((d : ℝ) ^ 2)⁻¹) =
      (((d * d : ℕ) : ℝ))⁻¹ by push_cast; ring]
  rw [le_mul_inv_iff₀ hqpos]
  simpa [mul_comm] using hcast

/-- The exact total nonzero winding multiplicity over all effective square
moduli is at most `4*b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fe5172d37244ee49172c471d497b1d45261d64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
