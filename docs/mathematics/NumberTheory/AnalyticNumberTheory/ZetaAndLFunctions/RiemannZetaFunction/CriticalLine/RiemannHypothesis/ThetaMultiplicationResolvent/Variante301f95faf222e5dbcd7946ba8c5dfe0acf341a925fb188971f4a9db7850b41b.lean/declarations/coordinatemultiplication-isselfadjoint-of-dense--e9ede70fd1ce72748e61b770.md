# coordinateMultiplication_isSelfAdjoint_of_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aae52c16-7772-d953-3e6b-8fdc6c4ff9be",
  "kind": "theorem",
  "lexical_name": "coordinateMultiplication_isSelfAdjoint_of_dense",
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
  "slug": "coordinatemultiplication-isselfadjoint-of-dense--e9ede70fd1ce72748e61b770",
  "source": {
    "blob": "dc1e16f4b357c774d7d302b4e9f3cc96f34aa1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 244,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variante301f95faf222e5dbcd7946ba8c5dfe0acf341a925fb188971f4a9db7850b41b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9ede70fd1ce72748e61b770d1bd3f19139a0de6f456012c79cce3b058a2ddf0",
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

Occurrence: `result:aae52c16-7772-d953-3e6b-8fdc6c4ff9be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinateMultiplication_isSelfAdjoint_of_dense
    (hd : Dense (coordinateDomain μ : Set (Lp ℂ 2 μ))) :
    IsSelfAdjoint (coordinateMultiplication μ) := by
  have hl := (coordinateMultiplication_formalAdjoint μ).le_adjoint hd
  have he : (coordinateMultiplication μ).domain = (coordinateMultiplication μ)†.domain :=
    le_antisymm hl.1 (adjoint_domain_subset_of_dense μ hd)
  rw [LinearPMap.isSelfAdjoint_def]
  exact (LinearPMap.eq_of_le_of_domain_eq hl he).symm

/-- Maximal real-coordinate multiplication is self-adjoint for regular measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variante301f95faf222e5dbcd7946ba8c5dfe0acf341a925fb188971f4a9db7850b41b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variante301f95faf222e5dbcd7946ba8c5dfe0acf341a925fb188971f4a9db7850b41b.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc1e16f4b357c774d7d302b4e9f3cc96f34aa1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
