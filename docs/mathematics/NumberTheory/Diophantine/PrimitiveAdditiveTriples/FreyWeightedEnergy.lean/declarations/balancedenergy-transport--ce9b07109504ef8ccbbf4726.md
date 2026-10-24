# balancedEnergy_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32f7b65c-998d-7088-d21c-27605c16ab46",
  "kind": "theorem",
  "lexical_name": "balancedEnergy_transport",
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
  "slug": "balancedenergy-transport--ce9b07109504ef8ccbbf4726",
  "source": {
    "blob": "39b9ef8227b9e101becb90ec3e967d6c72d10ec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 221,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce9b07109504ef8ccbbf4726d3638164c22a29af15891184562c94a488ce03e2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32f7b65c-998d-7088-d21c-27605c16ab46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balancedEnergy_transport (a b l : ℝ) (hl : a * b * l = 1)
    (k : ℕ) (f : stage a b k) :
    balancedEnergy a b k (stageEquiv a b l hl k f) = (a * b) ^ k * balancedEnergy a b k f := by
  unfold balancedEnergy
  rw [coordinates_stage]
  apply energyWith_conformal
  intro i
  rw [weight_square]
  calc
    (a * b) ^ exponent k (reverse k i) * ((a * b) ^ 2) ^ exponent k i =
        (a * b) ^ (exponent k (reverse k i) + exponent k i) *
          (a * b) ^ exponent k i := by
      have hp : ((a * b) ^ 2) ^ exponent k i =
          (a * b) ^ exponent k i * (a * b) ^ exponent k i := by
        rw [← pow_mul, Nat.mul_comm 2 (exponent k i), pow_mul, pow_two]
      rw [hp, pow_add]
      ring
    _ = _ := by rw [exponent_reverse]

/-- Changing to the balanced form has its own explicit grade-dependent distortion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39b9ef8227b9e101becb90ec3e967d6c72d10ec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
