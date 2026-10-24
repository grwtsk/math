# synthesis_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f63b34e-c385-c317-ff13-398589a46e77",
  "kind": "theorem",
  "lexical_name": "synthesis_norm_sq",
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
  "slug": "synthesis-norm-sq--cbc80e6a7e99d3eef82661c0",
  "source": {
    "blob": "b34d3f537f22944a1d9b3f14e73a6e8851f46f99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 235,
    "path": "GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbc80e6a7e99d3eef82661c0507778050f1cc9df7112fd96616f8a55da6bc3f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f63b34e-c385-c317-ff13-398589a46e77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem synthesis_norm_sq (q : ComplexL2) (I : Finset ℕ) (c : OrbitIndex I → ℂ) :
    ‖synthesis q I c‖ ^ 2 =
      (∑ i, ∑ j, star (c i) * c j * gramMatrix q I i j).re := by
  have h := congrArg Complex.re (synthesis_inner q I c c)
  change RCLike.re ⟪synthesis q I c, synthesis q I c⟫_ℂ = _ at h
  rw [inner_self_eq_norm_sq] at h
  exact h

/-- Positivity belongs to the stationary Gram form, without asserting positivity of reflection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b34d3f537f22944a1d9b3f14e73a6e8851f46f99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
