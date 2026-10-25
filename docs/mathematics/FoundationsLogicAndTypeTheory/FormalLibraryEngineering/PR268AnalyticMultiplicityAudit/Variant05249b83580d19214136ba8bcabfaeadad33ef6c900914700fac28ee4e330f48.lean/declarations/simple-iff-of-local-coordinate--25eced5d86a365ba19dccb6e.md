# simple_iff_of_local_coordinate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc74e8fc-aac3-90b9-571d-5f59e7f4e7a0",
  "kind": "theorem",
  "lexical_name": "simple_iff_of_local_coordinate",
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
  "slug": "simple-iff-of-local-coordinate--25eced5d86a365ba19dccb6e",
  "source": {
    "blob": "42de9584f74a9ae0fcafd6757ce33620d54989e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25eced5d86a365ba19dccb6ef67c9d037f214d4bc24af1d328990e9ebf1233c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc74e8fc-aac3-90b9-571d-5f59e7f4e7a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simple_iff_of_local_coordinate {f g c φ : ℂ → ℂ} {z : ℂ}
    (hf : AnalyticAt ℂ f (φ z)) (hc : AnalyticAt ℂ c z) (hc0 : c z ≠ 0)
    (hφ : AnalyticAt ℂ φ z) (hφ' : deriv φ z ≠ 0)
    (hsource : g =ᶠ[𝓝 z] fun w ↦ c w * f (φ w)) :
    analyticOrderAt g z = 1 ↔ analyticOrderAt f (φ z) = 1 := by
  rw [order_eq_of_local_coordinate hf hc hc0 hφ hφ' hsource]

/-- Squaring preserves local order away from its ramification point. A grouped
occurrence enumeration still requires its own no-overcounting theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42de9584f74a9ae0fcafd6757ce33620d54989e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
