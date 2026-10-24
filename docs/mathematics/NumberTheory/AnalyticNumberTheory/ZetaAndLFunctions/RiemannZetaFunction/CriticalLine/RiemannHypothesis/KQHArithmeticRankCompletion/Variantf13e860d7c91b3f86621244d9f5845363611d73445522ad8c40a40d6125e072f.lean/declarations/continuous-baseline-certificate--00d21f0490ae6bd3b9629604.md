# continuous_baseline_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f158a613-c741-cc61-243b-90bc0be3a537",
  "kind": "theorem",
  "lexical_name": "continuous_baseline_certificate",
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
  "slug": "continuous-baseline-certificate--00d21f0490ae6bd3b9629604",
  "source": {
    "blob": "80e1892531a27b22495496aeeabe11c5d866695b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticRankCompletion/Variantf13e860d7c91b3f86621244d9f5845363611d73445522ad8c40a40d6125e072f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00d21f0490ae6bd3b9629604ade16d39e48a43a28b94937890cfd8020e465af4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticRankCompletion/Variantf13e860d7c91b3f86621244d9f5845363611d73445522ad8c40a40d6125e072f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f158a613-c741-cc61-243b-90bc0be3a537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_baseline_certificate (I h a u x y : ℝ)
    (ha : 0 < a) (hh : h ≠ 0) :
    0 ≤ (I + h ^ 2 / (4 * a)) * (x + u * y / 4) ^ 2 -
      (I * (x + u * y / 4) ^ 2 + h * u * x * y +
        u ^ 2 * (h / 4 - a) * y ^ 2) := by
  have he : (I + h ^ 2 / (4 * a)) * (x + u * y / 4) ^ 2 -
      (I * (x + u * y / 4) ^ 2 + h * u * x * y +
        u ^ 2 * (h / 4 - a) * y ^ 2) =
      h ^ 2 / (4 * a) * (x + u * (1 / 4 - 2 * a / h) * y) ^ 2 := by
    field_simp [ha.ne', hh]
    ring
  rw [he]
  positivity

end FormalResearch.RiemannHypothesis.KQHArithmeticRankCompletion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticRankCompletion/Variantf13e860d7c91b3f86621244d9f5845363611d73445522ad8c40a40d6125e072f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticRankCompletion/Variantf13e860d7c91b3f86621244d9f5845363611d73445522ad8c40a40d6125e072f.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80e1892531a27b22495496aeeabe11c5d866695b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
