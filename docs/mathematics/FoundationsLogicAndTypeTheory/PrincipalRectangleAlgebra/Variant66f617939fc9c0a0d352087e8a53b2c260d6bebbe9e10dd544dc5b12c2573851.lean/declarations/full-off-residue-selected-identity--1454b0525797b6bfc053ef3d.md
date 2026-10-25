# full_off_residue_selected_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da6c3544-87c9-247c-cc42-ac8fcf7f2c44",
  "kind": "theorem",
  "lexical_name": "full_off_residue_selected_identity",
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
  "slug": "full-off-residue-selected-identity--1454b0525797b6bfc053ef3d",
  "source": {
    "blob": "f4a7dd9a4dd108c8b8a3382dd47652e38f4f61c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant66f617939fc9c0a0d352087e8a53b2c260d6bebbe9e10dd544dc5b12c2573851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1454b0525797b6bfc053ef3d1bb06e565d0493055c1221c2ca9cc43d418e03b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant66f617939fc9c0a0d352087e8a53b2c260d6bebbe9e10dd544dc5b12c2573851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da6c3544-87c9-247c-cc42-ac8fcf7f2c44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_off_residue_selected_identity {K : Type*} [Field K]
    (Q D V W R : K) (hR : 1 - R ≠ 0) (hV : 1 - V ≠ 0) :
    principalStar Q D V W R + D =
      (R * ((1 - Q⁻¹) + W * (1 - V) - D * (1 - V)) -
        D * (Q - 1) * W * V) / ((1 - R) * (1 - V)) := by
  unfold principalStar
  field_simp [hR, hV]
  ring

/-- The delta h in this module, with the following exact parameterization.

def deltaH (σ : ℝ) : ℝ := min (6 * σ - 401 / 100) (min (σ - 3 / 50) (47 / 50))
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant66f617939fc9c0a0d352087e8a53b2c260d6bebbe9e10dd544dc5b12c2573851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant66f617939fc9c0a0d352087e8a53b2c260d6bebbe9e10dd544dc5b12c2573851.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4a7dd9a4dd108c8b8a3382dd47652e38f4f61c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
