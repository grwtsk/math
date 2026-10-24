# subcell_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17a079c4-cce8-eec7-6f68-b2f872060474",
  "kind": "lemma",
  "lexical_name": "subcell_integral",
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
  "slug": "subcell-integral--6d2196c82bb8c969eaa401ca",
  "source": {
    "blob": "bbbc590fca211c6b2b543b5ee06ce0a6f640eb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 133,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d2196c82bb8c969eaa401cab1972cab907b9f0b29bc71a211513461e023b2f3",
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

Occurrence: `result:17a079c4-cce8-eec7-6f68-b2f872060474`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subcell_integral {s : ℂ} (hs : 0 < s.re) (hx1 : s.re ≤ 1) (i : Fin 16) :
    (2 : ℝ) ^ (1 - s.re) * mass i ≤
      ∫ t : ℝ in node i.val..node (i.val + 1), defect s t := by
  have hab := (node_order i.val).2
  have hl : Continuous (lower i) := by unfold lower tangent7; fun_prop
  have hi := real_interval_of_tail (defect_integrable hs)
    (by linarith [(node_order i.val).1]) hab
  have hb : (∫ t : ℝ in node i.val..node (i.val + 1),
      (2 : ℝ) ^ (1 - s.re) * lower i t) ≤
      ∫ t : ℝ in node i.val..node (i.val + 1), defect s t := by
    rw [intervalIntegral.integral_of_le hab, intervalIntegral.integral_of_le hab]
    apply integral_mono_ae
      ((intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mp
        ((hl.intervalIntegrable _ _).const_mul ((2 : ℝ) ^ (1 - s.re))))
      ((intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mp hi)
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    exact defect_lower i hx1 ht.1.le ht.2
  rw [intervalIntegral.integral_const_mul, lower_integral] at hb
  exact hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbc590fca211c6b2b543b5ee06ce0a6f640eb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
