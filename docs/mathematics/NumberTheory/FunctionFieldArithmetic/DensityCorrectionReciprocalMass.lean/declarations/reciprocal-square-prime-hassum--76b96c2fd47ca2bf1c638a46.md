# reciprocal_square_prime_hasSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b3c2056-8b2b-6241-20ca-ed11fba8b185",
  "kind": "theorem",
  "lexical_name": "reciprocal_square_prime_hasSum",
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
  "slug": "reciprocal-square-prime-hassum--76b96c2fd47ca2bf1c638a46",
  "source": {
    "blob": "a2915321d4453eb7266ccd43e361daff360e067b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76b96c2fd47ca2bf1c638a462c9ba1a9e025183ae3619c0e54d98086690f5b8b",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b3c2056-8b2b-6241-20ca-ed11fba8b185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_square_prime_hasSum {p : ℕ} (hp : p.Prime) :
    HasSum (fun k : ℕ => reciprocalSquare (p^k))
      (1 + 1 / ((p : ℝ)^2-1)) := by
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
  have hz : (p : ℝ)^2 ≠ 0 := by positivity
  have hq : 1 / (p : ℝ)^2 < 1 := (div_lt_one (by positivity)).mpr (by nlinarith)
  have h := hasSum_geometric_of_lt_one (by positivity : 0 ≤ 1 / (p : ℝ)^2) hq
  have he : (1-1/(p : ℝ)^2)⁻¹ = 1 + 1/((p : ℝ)^2-1) := by
    have hd : (p : ℝ)^2-1 ≠ 0 := by nlinarith
    field_simp [hz, hd]
    ring
  rw [he] at h
  convert h using 1
  funext k
  simp only [reciprocalSquare, Nat.cast_pow, one_div_pow]
  rw [← pow_mul, ← pow_mul, Nat.mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2915321d4453eb7266ccd43e361daff360e067b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
