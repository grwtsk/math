# typedPrimitiveWeightedMoment_eq_moebius_character_cube

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc5b7017-14c4-5b27-adef-90b3568f3e4a",
  "kind": "theorem",
  "lexical_name": "typedPrimitiveWeightedMoment_eq_moebius_character_cube",
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
  "slug": "typedprimitiveweightedmoment-eq-moebius-character-cube--59da2ef708f8b40bf82ce1e7",
  "source": {
    "blob": "d7edc897363a166ae03c8a1955f778b4343778d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 99,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59da2ef708f8b40bf82ce1e7ba282a652198041a25bd412d424ed189397200ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc5b7017-14c4-5b27-adef-90b3568f3e4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typedPrimitiveWeightedMoment_eq_moebius_character_cube (N q : ℕ) [NeZero q]
    (W : ℕ → ℕ → ℕ → ℂ) (hq : 2 * N < q) :
    typedPrimitiveWeightedMoment N W =
      ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : ℂ) * projectedJointMoment (N / d) d q W := by
  rw [typedPrimitiveWeightedMoment_eq_moebius_scaled_sum]
  apply Finset.sum_congr rfl
  intro d _
  rw [scaled_additive_sum_eq_character_cube (N / d) d q W
    (lt_of_le_of_lt (Nat.mul_le_mul_left 2 (Nat.div_le_self N d)) hq)]

/-- The same exact primitive moment in literal frequency-first form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7edc897363a166ae03c8a1955f778b4343778d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
