# enclosed_zero_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:461ae7af-fdf0-79dd-a180-a76f91600672",
  "kind": "theorem",
  "lexical_name": "enclosed_zero_unique",
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
  "slug": "enclosed-zero-unique--958a5c03adb07e3994889e85",
  "source": {
    "blob": "64e6b0ebe0a1923f8fc0d89f65bdb3942e32487b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 145,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:958a5c03adb07e3994889e8597b05f1bc1ab69cf9b3476f83848ab9656b537fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:461ae7af-fdf0-79dd-a180-a76f91600672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem enclosed_zero_unique {family : List Member} {T : ℚ} {d : CoordinateData}
    (hgeom : checkGeometry family T d = true)
    (e : RecordIndex family ≃ Head (T : ℝ))
    (hclose : ∀ i, ‖(e i).1.1 - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ))
    (i : RecordIndex family) (z : ZeroPoint)
    (hz : ‖z.1 - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ)) : z = (e i).1 := by
  classical
  obtain ⟨_, _, hheight, hsep⟩ := (checkGeometry_iff family T d).mp hgeom
  have hmem : z ∈ heightHead (T : ℝ) :=
    (mem_heightHead _ _).mpr
      (RationalDiskSeparation.enclosed_height_le (hheight i i.2) hz)
  obtain ⟨j, hj⟩ := e.surjective ⟨z, hmem⟩
  by_cases hji : j = i
  · subst j
    exact (congrArg (fun u : Head (T : ℝ) => u.1) hj).symm
  · have hv : (j : ℕ) ≠ (i : ℕ) := fun hv => hji (Subtype.ext hv)
    have hn := RationalDiskSeparation.enclosed_points_ne
      (hsep j j.2 i i.2 hv) (hclose j) hz
    exact False.elim (hn (congrArg (fun u : Head (T : ℝ) => u.1.1) hj))

end GRWTSK.RiemannHypothesis.EnclosedZeroInventory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e6b0ebe0a1923f8fc0d89f65bdb3942e32487b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
