# positivePrimitive_nonneg_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8f41e58-b11d-938d-ee3a-1b843c6baf66",
  "kind": "theorem",
  "lexical_name": "positivePrimitive_nonneg_iff",
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
  "slug": "positiveprimitive-nonneg-iff--1487f86f1515a08e07be255c",
  "source": {
    "blob": "5408c49606e5130fdfbba4c43b5e14cd784b59f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 285,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt09/Variant2f791b7fac2be1c1bfa8161565af029219020fba62d9eecca7c713acd470510d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1487f86f1515a08e07be255c47d5eaaea247b3c149a2ef1b384e71268016c9a5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt09/Variant2f791b7fac2be1c1bfa8161565af029219020fba62d9eecca7c713acd470510d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8f41e58-b11d-938d-ee3a-1b843c6baf66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positivePrimitive_nonneg_iff {A : ℝ} (hA : 1≤A) :
    (∀t∈Icc (0:ℝ) (2*A),0≤positivePrimitive A t) ↔ (136/7:ℝ)≤A^2 := by
  have hp : 0<A := by linarith
  have hz := source_normalization_pos A hA
  constructor
  · intro h
    have hc := h 0 (show (0:ℝ)∈Icc 0 (2*A) by constructor <;> linarith)
    rw [positivePrimitive_zero_value] at hc
    have ht : 0≤(1/4:ℝ)-(34/7:ℝ)/A^2 :=
      (mul_nonneg_iff_of_pos_left (by positivity : 0<(65536/109395:ℝ)/sourceNormalization A)).mp hc
    have hd := (div_le_iff₀ (sq_pos_of_pos hp)).mp (sub_nonneg.mp ht)
    linarith
  · intro h t ht
    exact positivePrimitive_nonneg hA h ht

/-- Both zero lower traces after reflection correspond to actual full support contact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt09/Variant2f791b7fac2be1c1bfa8161565af029219020fba62d9eecca7c713acd470510d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt09/Variant2f791b7fac2be1c1bfa8161565af029219020fba62d9eecca7c713acd470510d.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5408c49606e5130fdfbba4c43b5e14cd784b59f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
