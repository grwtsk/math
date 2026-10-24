# check_covers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4191afde-2151-64ad-2adf-0d667b161172",
  "kind": "theorem",
  "lexical_name": "check_covers",
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
  "slug": "check-covers--265e62f7516e95d97ab0d8af",
  "source": {
    "blob": "629d134563d63cdbbcd90ac679c388691f45444f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 235,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:265e62f7516e95d97ab0d8af22e9370012eaa4f3acde2e8df6c706e6f7648364",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4191afde-2151-64ad-2adf-0d667b161172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem check_covers {count : ℕ} (disks : Fin count → Disk) (tree : Tree count) :
    ∀ b : Rectangle, check disks tree b = true →
      ∀ z ∈ b.carrier, ∃ i : Fin count, z ∈ (disks i).carrier := by
  induction tree with
  | leaf i =>
      intro b h z hz
      have hh : b.WellFormed ∧ (disks i).SquaredContainsBox b := by
        simpa only [check, decide_eq_true_eq] using h
      exact ⟨i, (disks i).squaredContainsBox_sound b hh.2 hz⟩
  | splitReal cut l r ihl ihr =>
      intro b h z hz
      have hh : (b.WellFormed ∧ b.left < cut ∧ cut < b.right) ∧
          (check disks l (b.west cut) = true ∧ check disks r (b.east cut) = true) := by
        simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using h
      rcases le_total z.re (cut : ℝ) with hc | hc
      · exact ihl (b.west cut) hh.2.1 z ⟨hz.1, hc, hz.2.2⟩
      · exact ihr (b.east cut) hh.2.2 z ⟨hc, hz.2.1, hz.2.2⟩
  | splitImag cut l r ihl ihr =>
      intro b h z hz
      have hh : (b.WellFormed ∧ b.bottom < cut ∧ cut < b.top) ∧
          (check disks l (b.south cut) = true ∧ check disks r (b.north cut) = true) := by
        simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using h
      rcases le_total z.im (cut : ℝ) with hc | hc
      · exact ihl (b.south cut) hh.2.1 z ⟨hz.1, hz.2.1, hz.2.2.1, hc⟩
      · exact ihr (b.north cut) hh.2.2 z ⟨hz.1, hz.2.1, hc, hz.2.2.2⟩

/-- A checked ordered rectangle forces an inhabited disk family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `629d134563d63cdbbcd90ac679c388691f45444f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
