# Gfun_ge_near_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bd31e4a-3ac7-b09a-3c18-180d0e17e5a4",
  "kind": "lemma",
  "lexical_name": "Gfun_ge_near_one",
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
  "slug": "gfun-ge-near-one--18e0c61a0f92d88ceee5f36d",
  "source": {
    "blob": "b55723b0b130f5138e7c367b4781f055baf103ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18e0c61a0f92d88ceee5f36dd0131316d37d4feedd4d02ab1a9c2d8c1a876f92",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bd31e4a-3ac7-b09a-3c18-180d0e17e5a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Gfun_ge_near_one (lam : ℝ) (h1 : 1 / 2 ≤ lam) (h2 : lam ≤ 1) :
    5 / 6 - (1 - lam) ≤ Gfun lam := by
  simp only [Gfun, kfun]
  have h0 : 0 < lam := by linarith
  -- 5/6 − (1−λ) ≤ 3/2 − (1/λ + λ/3)/2: multiply through by λ > 0 and compare polynomials
  have key : (5 / 6 - (1 - lam)) * lam ≤ (3 / 2 - (1 / lam + lam / 3) / 2) * lam := by
    have e : (3 / 2 - (1 / lam + lam / 3) / 2) * lam = 3 / 2 * lam - 1 / 2 - lam ^ 2 / 6 := by
      field_simp; ring
    rw [e]
    nlinarith
  exact le_of_mul_le_mul_right key h0

/-- ε-form sup for G: constant 5/6 = sup_{λ<1} G(λ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b55723b0b130f5138e7c367b4781f055baf103ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
