# conj_intHSeg_of_antisymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "464787c2b9aac3a22b4d04cdbd00317bf569c992",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2667,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6c69811-68cd-432c-ee61-914ce71506fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2410e83-7c68-f477-766e-0c8322785aa7",
  "kind": "lemma",
  "lexical_name": "conj_intHSeg_of_antisymm",
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
  "slug": "conj-inthseg-of-antisymm--1b86e6350d68c97d9237cc3b",
  "source": {
    "blob": "464787c2b9aac3a22b4d04cdbd00317bf569c992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2692,
    "line": 2667,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b86e6350d68c97d9237cc3ba33427bc003e7bc46ea78ab2612400cf7c47a302",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2410e83-7c68-f477-766e-0c8322785aa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2667–2692.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma conj_intHSeg_of_antisymm (h a b : ℝ) (F : ℂ → ℂ) (hF : ∀ s, starRingEnd ℂ (F s) = -F (starRingEnd ℂ s)) :
    starRingEnd ℂ (intHSeg h a b F) = intHSeg (-h) b a F := by
  unfold intHSeg
  rw [← intervalIntegral_conj]
  have h_integrand : ∀ t : ℝ, starRingEnd ℂ (F (↑t + ↑h * I)) = - F (↑t + ↑(-h) * I) := by
    intro t
    have h1 : starRingEnd ℂ (↑t + ↑h * I) = ↑t + ↑(-h) * I := by
      rw [map_add, map_mul, conj_ofReal, conj_ofReal, conj_I]
      push_cast
      ring
    have h2 := hF (↑t + ↑h * I)
    rw [h1] at h2
    rw [h2]
  simp_rw [h_integrand]
  rw [intervalIntegral.integral_symm, intervalIntegral.integral_neg, neg_neg]

@[blueprint
  "ch2-lemma-5-1-d"
  (title := "$G^\\star$ reflection (CH2 Lemma 5.1, eq. 4)")
  (statement := /--
  Since $C_{n,1}^-$ is the conjugate of $C_{n,1}^+$ traversed backwards and $G^\star(\bar s) =
  -\overline{G^\star(s)}$, the two $G^\star$ contour integrals combine into a single imaginary part:
  $$ \int_{C_{n,1}^+} G^\star(s) x^s\, ds - \int_{C_{n,1}^-} G^\star(s) x^s\, ds = 2i\, \Im \int_{C_{n,1}^+} G^\star(s) x^s\, ds. $$ -/)
  (proof := /-- For the conjugation-antisymmetric integrand $G^\star x^s$, $\int_{C_{n,1}^-} = \overline{\int_{C_{n,1}^+}}$, and $z - \bar z = 2i\, \Im z$. -/)
  (latexEnv := "sublemma")
  (discussion := 1451)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean#L2667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `464787c2b9aac3a22b4d04cdbd00317bf569c992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
