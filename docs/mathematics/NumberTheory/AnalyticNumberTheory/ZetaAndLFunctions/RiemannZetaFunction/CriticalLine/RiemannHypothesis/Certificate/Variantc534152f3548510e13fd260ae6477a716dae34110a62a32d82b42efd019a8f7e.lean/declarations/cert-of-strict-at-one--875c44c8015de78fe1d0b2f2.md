# cert_of_strict_at_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b911166-cc03-27fa-9134-beb39bcbbad9",
  "kind": "theorem",
  "lexical_name": "cert_of_strict_at_one",
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
  "slug": "cert-of-strict-at-one--875c44c8015de78fe1d0b2f2",
  "source": {
    "blob": "47a4ff95ecd93d342e8695ae1c06f622d4981302",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variantc534152f3548510e13fd260ae6477a716dae34110a62a32d82b42efd019a8f7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:875c44c8015de78fe1d0b2f23445f82293395fe724c43f67d67784e43ba146a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variantc534152f3548510e13fd260ae6477a716dae34110a62a32d82b42efd019a8f7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b911166-cc03-27fa-9134-beb39bcbbad9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cert_of_strict_at_one {v : ℝ → ℝ} {c cd : ℝ}
    (hcont : ContinuousOn (fun lam => kappaXi lam v) (Ioc 0 1))
    (h : c < 2 - kappaXi 1 v ∧ cd < 3 / 2 - kappaXi 1 v / 2) :
    ∃ lam : ℝ, 1 / 2 ≤ lam ∧ lam < 1 ∧
      c < 2 - kappaXi lam v ∧ cd < 3 / 2 - kappaXi lam v / 2 := by
  have hsub : Icc (1/2 : ℝ) 1 ⊆ Ioc 0 1 := fun x hx => ⟨by linarith [hx.1], hx.2⟩
  have hk : ContinuousOn (fun lam => kappaXi lam v) (Icc (1/2) 1) := hcont.mono hsub
  have hf1 : ContinuousOn (fun lam => 2 - kappaXi lam v - c) (Icc (1/2) 1) :=
    (continuousOn_const.sub hk).sub continuousOn_const
  have hf2 : ContinuousOn (fun lam => 3 / 2 - kappaXi lam v / 2 - cd) (Icc (1/2) 1) :=
    (continuousOn_const.sub (hk.div_const 2)).sub continuousOn_const
  have hf : ContinuousOn (fun lam => min (2 - kappaXi lam v - c) (3 / 2 - kappaXi lam v / 2 - cd))
      (Icc (1/2) 1) := ContinuousOn.inf hf1 hf2
  obtain ⟨lam, h1, h2, h3⟩ := exists_lt_one_pos hf (lt_min (by linarith [h.1]) (by linarith [h.2]))
  refine ⟨lam, h1, h2, ?_, ?_⟩
  · linarith [min_le_left (2 - kappaXi lam v - c) (3 / 2 - kappaXi lam v / 2 - cd)]
  · linarith [min_le_right (2 - kappaXi lam v - c) (3 / 2 - kappaXi lam v / 2 - cd)]

/-- **CertFlat** (Statement.lean §4): ∃ λ ∈ [1/2,1), 0.85838 < 2 − κ₁(λ, flat) ∧ 0.92919 < 3/2 − κ₁(λ, flat)/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variantc534152f3548510e13fd260ae6477a716dae34110a62a32d82b42efd019a8f7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variantc534152f3548510e13fd260ae6477a716dae34110a62a32d82b42efd019a8f7e.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47a4ff95ecd93d342e8695ae1c06f622d4981302` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
