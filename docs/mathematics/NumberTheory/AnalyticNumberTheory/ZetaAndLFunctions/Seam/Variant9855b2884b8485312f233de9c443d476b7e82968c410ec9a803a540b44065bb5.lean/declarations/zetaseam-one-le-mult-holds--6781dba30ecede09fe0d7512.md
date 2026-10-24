# ZetaSeam.one_le_mult_holds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7836e774-0dc4-2ba2-b898-b37c4341e913",
  "kind": "theorem",
  "lexical_name": "ZetaSeam.one_le_mult_holds",
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
  "slug": "zetaseam-one-le-mult-holds--6781dba30ecede09fe0d7512",
  "source": {
    "blob": "2ec14fde94f25ff8ab862c750523f504c461f66d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6781dba30ecede09fe0d7512a5590ee95fd1485f25b2220233ed021991897e10",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7836e774-0dc4-2ba2-b898-b37c4341e913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZetaSeam.one_le_mult_holds : ∀ ρ, IsNontrivialZero ρ → 1 ≤ zeroMult ρ := by
  intro ρ h
  have hρ1 : ρ ≠ 1 := h.not_trivial.2
  have han : AnalyticAt ℂ riemannZeta ρ := riemannZeta_analyticOnNhd_compl_one ρ hρ1
  have hne0 : analyticOrderAt riemannZeta ρ ≠ 0 := han.analyticOrderAt_ne_zero.mpr h.1
  have hnetop := analyticOrderAt_riemannZeta_ne_top hρ1
  unfold zeroMult
  obtain ⟨n, hn⟩ := ENat.ne_top_iff_exists.mp hnetop
  rw [← hn] at hne0 ⊢
  simp only [ENat.toNat_natCast, ne_eq, Nat.cast_eq_zero] at hne0 ⊢
  omega

/-- The zeros of ζ (away from 1) are locally finite on all of ℂ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec14fde94f25ff8ab862c750523f504c461f66d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
