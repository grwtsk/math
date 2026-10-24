# full_defect_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a07db2a8-a417-21e8-fd36-a2f78c1724ee",
  "kind": "lemma",
  "lexical_name": "full_defect_lower",
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
  "slug": "full-defect-lower--22b884c114fd0a07d5b74c05",
  "source": {
    "blob": "bbbc590fca211c6b2b543b5ee06ce0a6f640eb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 171,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22b884c114fd0a07d5b74c05729e2c82b04c99c50adbd4a0c89c12fec70e26fc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a07db2a8-a417-21e8-fd36-a2f78c1724ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma full_defect_lower {s : ℂ} (hs : 0 < s.re) (hx1 : s.re ≤ 1) :
    (2 : ℝ) ^ (1 - s.re) / 1408 ≤ ∫ t : ℝ in Ioi 2, defect s t := by
  have hi := defect_integrable hs
  have hd : Disjoint (Ioc (2 : ℝ) 3) (Ioi 3) := by
    apply Set.disjoint_left.mpr
    intro t ht ht3
    exact (not_lt_of_ge ht.2) ht3
  have hu : Ioc (2 : ℝ) 3 ∪ Ioi 3 = Ioi 2 := by
    ext t
    constructor
    · rintro (h | h)
      · exact h.1
      · linarith
    · intro ht
      by_cases h3 : t ≤ 3
      · exact Or.inl ⟨ht, h3⟩
      · exact Or.inr (lt_of_not_ge h3)
  have hsplit := setIntegral_union hd measurableSet_Ioi
    (hi.mono_set (by intro t ht; linarith [ht.1]))
    (hi.mono_set (Ioi_subset_Ioi (by norm_num : (1 : ℝ) ≤ 3)))
  rw [hu, ← intervalIntegral.integral_of_le (by norm_num : (2 : ℝ) ≤ 3)] at hsplit
  have htail : 0 ≤ ∫ t : ℝ in Ioi 3, defect s t := by
    apply setIntegral_nonneg measurableSet_Ioi
    intro t ht
    exact defect_nonneg s (by linarith)
  have hcell := cell_defect_lower hs hx1
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbc590fca211c6b2b543b5ee06ce0a6f640eb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
