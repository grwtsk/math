# odd_power_of_cube

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8e951ec-19df-4550-63ee-ce1c06ea80d5",
  "kind": "theorem",
  "lexical_name": "odd_power_of_cube",
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
  "slug": "odd-power-of-cube--b1e196bc98a23b267cc7306b",
  "source": {
    "blob": "0e93ed97d3b20839ee161d5b5c876ee9e2ca2d3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 91,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1e196bc98a23b267cc7306b66e430342ba5cad97afd1c8a9843229dc5fb8328",
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

Occurrence: `result:a8e951ec-19df-4550-63ee-ce1c06ea80d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem odd_power_of_cube (x : A) (θ : ℝ)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) (n : ℕ) :
    x ^ (2 * n + 1) = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x) := by
  induction n with
  | zero => simp
  | succ n ih =>
      calc
        x ^ (2 * (n + 1) + 1) = x ^ (2 * n + 1) * x ^ 2 := by
          rw [← pow_add]
          congr 1
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x) * x ^ 2 := by rw [ih]
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • (x * x ^ 2)) := by
          rw [smul_mul_assoc]
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x ^ 3) := by
          congr 1
          exact (pow_succ' x 2).symm
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • ((-(θ ^ 2)) • x)) := by rw [hcube]
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n) * (-(θ ^ 2))) • x) := by
          rw [smul_smul]
        _ = (((-1 : ℝ) ^ (n + 1) * θ ^ (2 * (n + 1))) • x) := by
          congr 1
          rw [pow_succ, show 2 * (n + 1) = 2 * n + 2 by omega, pow_add]
          ring

/-- Positive even powers reduce to the span of the squared generator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e93ed97d3b20839ee161d5b5c876ee9e2ca2d3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
