# gaussianZetaSummand_integral_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13eb756a-48f0-399c-ef2c-797a6534ec29",
  "kind": "lemma",
  "lexical_name": "gaussianZetaSummand_integral_norm",
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
  "slug": "gaussianzetasummand-integral-norm--a925b3fda3b44c33bbc0349d",
  "source": {
    "blob": "fb0b6dcfd5630a2687f0b8e34373e3afc39e124e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 77,
    "path": "GRWTSK/NumberTheory/LSeries/GaussianContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a925b3fda3b44c33bbc0349dab6ce8e790479ea3a9f60658dbd26b3fbe672914",
  "verification": {
    "reference": "docs/verification/NumberTheory/LSeries/GaussianContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13eb756a-48f0-399c-ef2c-797a6534ec29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussianZetaSummand_integral_norm (σ Z : ℝ) (hZ : 0 < Z) (n : ℕ) :
    (∫ v : ℝ, ‖gaussianZetaSummand σ Z n v‖) =
      (Z^σ * Real.exp (σ^2) * ∫ v : ℝ, Real.exp (-(v^2))) * (n+1 : ℝ)^(-σ) := by
  simp_rw [gaussianZetaSummand_norm σ Z hZ n, integral_const_mul]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/LSeries/GaussianContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LSeries/GaussianContour.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0b6dcfd5630a2687f0b8e34373e3afc39e124e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
