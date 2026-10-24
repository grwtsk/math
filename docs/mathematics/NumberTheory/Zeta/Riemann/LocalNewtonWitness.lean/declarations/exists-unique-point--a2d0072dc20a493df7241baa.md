# exists_unique_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b51eba10-da7c-9088-d60a-1a6441fbc68b",
  "kind": "theorem",
  "lexical_name": "exists_unique_point",
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
  "slug": "exists-unique-point--a2d0072dc20a493df7241baa",
  "source": {
    "blob": "f38a4ad97e01b8f5cf9fcaaec07d636a5f0bb4d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2d0072dc20a493df7241baa516b12f3555144eb05532d21313515fdb9472b0a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b51eba10-da7c-9088-d60a-1a6441fbc68b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_unique_point {c : Coordinates} {R : ℚ} {p : RationalNewtonDisk.Data}
    (hc : checkAt c R p = true)
    (he : RationalNewtonDisk.Estimates riemannZeta c R p) :
    ∃ z : ZeroPoint, ‖z.1 - toComplex c‖ ≤ (R : ℝ) ∧ multiplicity z = 1 ∧
      ∀ v : ZeroPoint, ‖v.1 - toComplex c‖ ≤ (R : ℝ) → v = z := by
  obtain ⟨z, hz, hfz, ho, hu⟩ := RationalNewtonDisk.check_sound
    ((checkAt_iff c R p).mp hc).1 he (disk_analytic hc)
  have hs := disk_in_strip hc hz
  have hzero : NontrivialZetaZero z := by
    refine ⟨hfz, ?_, ?_⟩
    · rintro ⟨n, heq⟩
      have hr : z.re = -2 * ((n : ℝ) + 1) := by
        simpa using congrArg Complex.re heq
      have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
      nlinarith
    · intro heq
      simpa only [heq, Complex.one_re, lt_self_iff_false] using hs.2
  let point : ZeroPoint := ⟨z, hzero⟩
  refine ⟨point, by simpa only [mem_closedBall, dist_eq_norm] using hz, ?_, ?_⟩
  · change analyticOrderNatAt riemannZeta z = 1
    simp [analyticOrderNatAt, ho]
  · intro v hv
    apply Subtype.ext
    exact hu v.1 (by simpa only [mem_closedBall, dist_eq_norm] using hv) v.2.1

/-- A typed finite table, with one datum at every record index. No parser is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f38a4ad97e01b8f5cf9fcaaec07d636a5f0bb4d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
