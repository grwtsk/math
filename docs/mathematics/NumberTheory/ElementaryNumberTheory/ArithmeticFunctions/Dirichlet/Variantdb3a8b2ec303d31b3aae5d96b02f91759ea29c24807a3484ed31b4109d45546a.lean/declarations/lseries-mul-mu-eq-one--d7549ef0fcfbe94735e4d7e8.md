# LSeries.mul_mu_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff817c25-c835-107b-3116-b9f5ae9e071b",
  "kind": "lemma",
  "lexical_name": "LSeries.mul_mu_eq_one",
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
  "slug": "lseries-mul-mu-eq-one--d7549ef0fcfbe94735e4d7e8",
  "source": {
    "blob": "b7984b0fafec4b2c29dce79616ef7908cd51ba9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 224,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variantdb3a8b2ec303d31b3aae5d96b02f91759ea29c24807a3484ed31b4109d45546a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7549ef0fcfbe94735e4d7e8e54693ff87cdebbda079b143f599e9c3d51f9cd3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variantdb3a8b2ec303d31b3aae5d96b02f91759ea29c24807a3484ed31b4109d45546a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff817c25-c835-107b-3116-b9f5ae9e071b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.mul_mu_eq_one {N : ℕ} (χ : DirichletCharacter ℂ N) {s : ℂ}
    (hs : 1 < s.re) : L ↗χ s * L (↗χ * ↗μ) s = 1 := by
  rw [← LSeries_convolution' (LSeriesSummable_of_one_lt_re χ hs) <|
          LSeriesSummable_mul χ <| ArithmeticFunction.LSeriesSummable_moebius_iff.mpr hs,
    convolution_mul_moebius, LSeries_delta, Pi.one_apply]


/-!
### L-series of Dirichlet characters do not vanish on re s > 1
-/

/-- The L-series of a Dirichlet character does not vanish on the right half-plane `re s > 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variantdb3a8b2ec303d31b3aae5d96b02f91759ea29c24807a3484ed31b4109d45546a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variantdb3a8b2ec303d31b3aae5d96b02f91759ea29c24807a3484ed31b4109d45546a.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7984b0fafec4b2c29dce79616ef7908cd51ba9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
