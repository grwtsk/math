# exp_eq_rodrigues_of_cube

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86181394-5886-2756-d4de-819d73d4f096",
  "kind": "theorem",
  "lexical_name": "exp_eq_rodrigues_of_cube",
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
  "slug": "exp-eq-rodrigues-of-cube--04f20a703a5ebb4d5b6a951c",
  "source": {
    "blob": "0e93ed97d3b20839ee161d5b5c876ee9e2ca2d3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 212,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04f20a703a5ebb4d5b6a951c3faa381e6f02776356443c1c564fe6a09498fa42",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86181394-5886-2756-d4de-819d73d4f096`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exp_eq_rodrigues_of_cube (x : A) (θ : ℝ)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) :
    exp x = 1 + Real.sinc θ • x + cosc θ • x ^ 2 := by
  by_cases hθ : θ = 0
  · subst θ
    have hx : x ^ 3 = 0 := by simpa using hcube
    rw [exp_of_cube_eq_zero x hx]
    simp [cosc]
  · exact exp_eq_rodrigues_of_cube_of_ne_zero x θ hθ hcube

/-- Multiplication by the displayed matrix is the coordinate cross product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e93ed97d3b20839ee161d5b5c876ee9e2ca2d3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
