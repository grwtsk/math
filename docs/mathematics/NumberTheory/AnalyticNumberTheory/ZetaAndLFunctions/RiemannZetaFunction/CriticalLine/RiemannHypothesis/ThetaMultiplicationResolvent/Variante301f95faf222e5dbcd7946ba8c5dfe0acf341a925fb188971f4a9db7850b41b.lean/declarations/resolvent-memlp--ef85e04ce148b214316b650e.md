# resolvent_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:562679d2-0b5c-c564-baa5-468632dc65d4",
  "kind": "theorem",
  "lexical_name": "resolvent_memLp",
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
  "slug": "resolvent-memlp--ef85e04ce148b214316b650e",
  "source": {
    "blob": "dc1e16f4b357c774d7d302b4e9f3cc96f34aa1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variante301f95faf222e5dbcd7946ba8c5dfe0acf341a925fb188971f4a9db7850b41b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef85e04ce148b214316b650e26876a49550c68cc886ae178fb1e433c3625793b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variante301f95faf222e5dbcd7946ba8c5dfe0acf341a925fb188971f4a9db7850b41b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:562679d2-0b5c-c564-baa5-468632dc65d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolvent_memLp (s : Bool) (g : Lp ℂ 2 μ) :
    MemLp (fun x : ℝ => ((x : ℂ) + imaginaryShift s)⁻¹ * g x) 2 μ := by
  apply (Lp.memLp g).mono
  · exact ((Complex.continuous_ofReal.add continuous_const).inv₀
      (denominator_ne_zero s)).aestronglyMeasurable.mul (Lp.aestronglyMeasurable g)
  · exact Eventually.of_forall fun x => by
      rw [norm_mul]
      exact mul_le_of_le_one_left (norm_nonneg _) (reciprocal_bound s x)

/-- Actual division by `x ± i` on complex L². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variante301f95faf222e5dbcd7946ba8c5dfe0acf341a925fb188971f4a9db7850b41b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variante301f95faf222e5dbcd7946ba8c5dfe0acf341a925fb188971f4a9db7850b41b.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc1e16f4b357c774d7d302b4e9f3cc96f34aa1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
