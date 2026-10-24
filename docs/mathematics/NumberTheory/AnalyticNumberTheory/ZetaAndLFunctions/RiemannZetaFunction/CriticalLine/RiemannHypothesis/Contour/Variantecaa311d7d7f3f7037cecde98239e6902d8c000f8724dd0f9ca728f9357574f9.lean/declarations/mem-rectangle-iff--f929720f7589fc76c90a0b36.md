# mem_rectangle_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45e67406-b37f-f38a-73af-e5c2ce458012",
  "kind": "theorem",
  "lexical_name": "mem_rectangle_iff",
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
  "slug": "mem-rectangle-iff--f929720f7589fc76c90a0b36",
  "source": {
    "blob": "90aa2daf2b5d700fc7c7869bc7ef9ccd8a630643",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantecaa311d7d7f3f7037cecde98239e6902d8c000f8724dd0f9ca728f9357574f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f929720f7589fc76c90a0b36ddb0750730b9d905026514e1ae662a723119a1e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantecaa311d7d7f3f7037cecde98239e6902d8c000f8724dd0f9ca728f9357574f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45e67406-b37f-f38a-73af-e5c2ce458012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_rectangle_iff {c R : ℝ} (hc : 1 - c ≤ c) (hR : 0 ≤ R) (s : ℂ) :
    s ∈ Rectangle (((1 - c : ℝ) : ℂ) - R * I) ((c : ℝ) + R * I) ↔
      (1 - c ≤ s.re ∧ s.re ≤ c) ∧ (-R ≤ s.im ∧ s.im ≤ R) := by
  obtain ⟨e1, e2, e3, e4⟩ := Zeta23.WeilEF.corner_re_im c R
  simp only [Rectangle, Complex.mem_reProdIm, e1, e2, e3, e4, Set.uIcc_of_le hc,
    Set.uIcc_of_le (show (-R : ℝ) ≤ R by linarith), Set.mem_Icc]

/-- **Generic rectangle identity.**  f, g entire; every zero of f has 1−c < Re < c (Zset = zero set);
f ≠ 0 on the horizontal lines Im s = ±R, 1−c ≤ Re s ≤ c.  Then the zeros of f with |Im| < R form a
finite set Z and (1/2πi)∮_{∂([1−c,c]×[−R,R])} g·f′/f = Σ_{ρ∈Z} ord_ρ(f)·g(ρ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantecaa311d7d7f3f7037cecde98239e6902d8c000f8724dd0f9ca728f9357574f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantecaa311d7d7f3f7037cecde98239e6902d8c000f8724dd0f9ca728f9357574f9.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90aa2daf2b5d700fc7c7869bc7ef9ccd8a630643` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
