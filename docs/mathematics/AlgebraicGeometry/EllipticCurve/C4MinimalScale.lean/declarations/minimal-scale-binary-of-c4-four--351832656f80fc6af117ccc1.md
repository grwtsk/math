# minimal_scale_binary_of_c4_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:358f3a97-7e10-3b7a-8b7c-825786b6357c",
  "kind": "theorem",
  "lexical_name": "minimal_scale_binary_of_c4_four",
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
  "slug": "minimal-scale-binary-of-c4-four--351832656f80fc6af117ccc1",
  "source": {
    "blob": "a0f88cf7b4605fcce3b944e68ca6f288c3f6ac4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 140,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:351832656f80fc6af117ccc183f06d34a2689a558ece8ec7284b12b49a2f0177",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:358f3a97-7e10-3b7a-8b7c-825786b6357c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimal_scale_binary_of_c4_four (W : WeierstrassCurve K) [IsIntegral R W]
    (hΔ : W.Δ ≠ 0) (h4 : W.c₄ ≠ 0) (he : c4Exponent R W = 4)
    (C : VariableChange K) [IsMinimal R (C • W)] :
    scaleExponent R C = 0 ∨ scaleExponent R C = 1 := by
  have hlo := minimal_scale_nonneg R W hΔ C
  have hhi := integral_scale_bound R W h4 C inferInstance
  rw [he] at hhi
  omega

end GRWTSK.AlgebraicGeometry.EllipticCurve.C4MinimalScale
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f88cf7b4605fcce3b944e68ca6f288c3f6ac4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
