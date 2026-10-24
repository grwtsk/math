# completedZeta_ne_zero_on_horizontals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2ae92dfd3852a435f3b7d5adc13cdde73073280",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b3b2b83-34a7-1641-696f-19bdef060101",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d74ccdfd-b539-ad55-8e16-14dfea2575cd",
  "kind": "theorem",
  "lexical_name": "completedZeta_ne_zero_on_horizontals",
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
  "slug": "completedzeta-ne-zero-on-horizontals--a7e3721069d5870089af8036",
  "source": {
    "blob": "a2ae92dfd3852a435f3b7d5adc13cdde73073280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 288,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7e3721069d5870089af8036ffe41dd7a76c76a8e7dddb91c00542c24eb2102b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d74ccdfd-b539-ad55-8e16-14dfea2575cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completedZeta_ne_zero_on_horizontals {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3 / 2) {R : ℝ}
    (hζ : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 → riemannZeta s ≠ 0) :
    ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 - c ≤ s.re → s.re ≤ c → completedRiemannZeta s ≠ 0 := by
  -- the right half first
  have aux : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      completedRiemannZeta s ≠ 0 := by
    intro s him h1 h2 h0
    rcases lt_or_ge s.re 1 with hlt | hge
    · have hnt := ((completedZeta_zeros_strip (by linarith) hlt).1).mp h0
      exact hζ s him h1 h2 hnt.1
    · exact Zeta23.RvM.completedRiemannZeta_ne_zero_of_one_le_re hge h0
  intro s him h1 h2
  rcases le_or_gt (1 / 2 : ℝ) s.re with hre | hre
  · exact aux s him hre (by linarith)
  · -- reflect: Λ s = Λ (1 − s)
    have e : completedRiemannZeta s = completedRiemannZeta (1 - s) :=
      (completedRiemannZeta_one_sub s).symm
    rw [e]
    apply aux (1 - s)
    · rcases him with h | h
      · right; simp [h]
      · left; simp [h]
    · simp; linarith
    · simp; linarith

end Heights

/-! ## The vertical sides -/

section Verticals

variable {k : ℝ → ℂ}

/-- the full-line integrand `F(t) := [H(c+it) + H(1−c−it)]·Λ'/Λ(c+it)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ae92dfd3852a435f3b7d5adc13cdde73073280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
