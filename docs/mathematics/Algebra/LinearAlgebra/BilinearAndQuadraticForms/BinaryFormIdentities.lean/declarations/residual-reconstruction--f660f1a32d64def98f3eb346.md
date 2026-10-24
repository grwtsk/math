# residual_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffeb5f5f-d56f-eb7a-217f-fb3d1a7f185f",
  "kind": "theorem",
  "lexical_name": "residual_reconstruction",
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
  "slug": "residual-reconstruction--f660f1a32d64def98f3eb346",
  "source": {
    "blob": "be2142bec0a6719178660e958b1a18c3e1360009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/BinaryFormIdentities.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f660f1a32d64def98f3eb3460055543b893bc4f36b3ba4cdb452251f240103ff",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearAndQuadraticForms/BinaryFormIdentities.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffeb5f5f-d56f-eb7a-217f-fb3d1a7f185f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_reconstruction (g o a b z₁ z₂ L : ℝ)
    (h₁ : g*a+o*b=z₁) (h₂ : o*a+2*g*b=z₂) :
    L-2*(a*z₁+b*z₂)+quadratic g o a b = L-(a*z₁+b*z₂) := by
  rw [solved_energy g o a b z₁ z₂ h₁ h₂]
  ring

/-- The rational lower-minor slack used for all m >= 4. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearAndQuadraticForms/BinaryFormIdentities.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/BinaryFormIdentities.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be2142bec0a6719178660e958b1a18c3e1360009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
