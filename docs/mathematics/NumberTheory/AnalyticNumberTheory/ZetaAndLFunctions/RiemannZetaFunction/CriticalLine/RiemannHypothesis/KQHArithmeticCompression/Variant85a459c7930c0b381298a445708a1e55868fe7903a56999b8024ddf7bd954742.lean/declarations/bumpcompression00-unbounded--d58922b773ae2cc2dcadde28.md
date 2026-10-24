# bumpCompression00_unbounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4e440b9-f967-d903-4606-6d5d5b207e63",
  "kind": "theorem",
  "lexical_name": "bumpCompression00_unbounded",
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
  "slug": "bumpcompression00-unbounded--d58922b773ae2cc2dcadde28",
  "source": {
    "blob": "08d47b2f1fe3585ada26f035ca497a62c7b4b835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 169,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant85a459c7930c0b381298a445708a1e55868fe7903a56999b8024ddf7bd954742.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d58922b773ae2cc2dcadde28fcd3b9781afa86920a5a5941e2b8ef12f5e2df8f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant85a459c7930c0b381298a445708a1e55868fe7903a56999b8024ddf7bd954742.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4e440b9-f967-d903-4606-6d5d5b207e63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpCompression00_unbounded (B : ℝ) :
    ∃ A : ℝ, 0 < A ∧ B < bumpCompression00 A := by
  let A := 4 * primitiveCost + 875160 * (|B| + 1)
  have hA : 0 < A := by dsimp [A]; nlinarith [primitiveCost_nonneg, abs_nonneg B]
  have hp : 0 ≤ A / 2 - 2 * primitiveCost := by
    dsimp [A]; nlinarith [abs_nonneg B]
  have he : 1 ≤ Real.exp (A / 2) := Real.one_le_exp (by positivity)
  have hm := mul_le_mul_of_nonneg_right he hp
  have hl := bumpCompression00_lower A hA
  refine ⟨A, hA, ?_⟩
  have hB : B ≤ |B| := le_abs_self B
  dsimp [A] at hl hm
  nlinarith

/-- A proposed rank-one certificate must pay its positive zeroth-mode diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant85a459c7930c0b381298a445708a1e55868fe7903a56999b8024ddf7bd954742.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant85a459c7930c0b381298a445708a1e55868fe7903a56999b8024ddf7bd954742.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08d47b2f1fe3585ada26f035ca497a62c7b4b835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
