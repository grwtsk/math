# wienerBaseSchwartzCutoff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4ec594e-bc4a-d73b-ac09-b926d0575c47",
  "kind": "theorem",
  "lexical_name": "wienerBaseSchwartzCutoff_exists",
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
  "slug": "wienerbaseschwartzcutoff-exists--0982db61f6da2a96a73dcf16",
  "source": {
    "blob": "3f80979eff132745516a99f5ab4268a73da696b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 55,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0982db61f6da2a96a73dcf16638c5b38668486d9e9d18ef07fd0d0a592780054",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4ec594e-bc4a-d73b-ac09-b926d0575c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerBaseSchwartzCutoff_exists :
    ∃ c : ℝ → ℝ,
      ContDiff ℝ ∞ c ∧
      HasCompactSupport c ∧
      (∀ x : ℝ, 0 ≤ c x ∧ c x ≤ 1) ∧
      (∀ x ∈ Set.Icc (-1 : ℝ) 1, c x = 1) ∧
      Function.support c = Set.Ioo (-2 : ℝ) 2 := by
  have hsubset :
      Set.Icc (-1 : ℝ) 1 ⊆ Set.Ioo (-2 : ℝ) 2 := by
    intro x hx
    exact ⟨by linarith [hx.1], by linarith [hx.2]⟩
  obtain ⟨c, hc, hrange, hsupp, hone⟩ :=
    exists_contMDiff_support_eq_eq_one_iff
      (I := modelWithCornersSelf ℝ ℝ) (n := ∞)
      (s := Set.Ioo (-2 : ℝ) 2)
      (t := Set.Icc (-1 : ℝ) 1)
      isOpen_Ioo isClosed_Icc hsubset
  have hcompact : HasCompactSupport c := by
    apply HasCompactSupport.of_support_subset_isCompact
      (K := Set.Icc (-2 : ℝ) 2) isCompact_Icc
    rw [hsupp]
    exact Set.Ioo_subset_Icc_self
  refine ⟨c, hc.contDiff, hcompact, ?_, ?_, hsupp⟩
  · intro x
    exact hrange (Set.mem_range_self x)
  · intro x hx
    exact (hone x).mp hx

/-- Choose the ACTUAL mathematical witness supplied by the preceding
existence theorem, not an opaque externally assumed cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f80979eff132745516a99f5ab4268a73da696b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
