# regularOrbit_frequencyPair_le_projectorMajorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1df555e-fa24-05cf-0119-0693045fac97",
  "kind": "theorem",
  "lexical_name": "regularOrbit_frequencyPair_le_projectorMajorant",
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
  "slug": "regularorbit-frequencypair-le-projectormajorant--7207db750a3e4466506091dd",
  "source": {
    "blob": "2462a35ddac26d0c9c2d20b4caaac4db5daf757b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 321,
    "path": "GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7207db750a3e4466506091dd0cc890d62201f23ee6c6ff573b9680e2e47e3488",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1df555e-fa24-05cf-0119-0693045fac97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularOrbit_frequencyPair_le_projectorMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    halfIndexAffineChowlaFrequencyMajorant b d k +
        halfIndexAffineChowlaFrequencyMajorant b d
          (twoKernelPartner d k) ≤
      twoNonunitRegularOrbitMajorant b d k := by
  have h0a := norm_add_le
    (twoKernelPairPlusAggregate b d 0 k)
    (twoKernelPairMinusAggregate b d 0 k)
  have h0b := norm_sub_le
    (twoKernelPairPlusAggregate b d 0 k)
    (twoKernelPairMinusAggregate b d 0 k)
  have h1a := norm_add_le
    (twoKernelPairPlusAggregate b d 1 k)
    (twoKernelPairMinusAggregate b d 1 k)
  have h1b := norm_sub_le
    (twoKernelPairPlusAggregate b d 1 k)
    (twoKernelPairMinusAggregate b d 1 k)
  unfold halfIndexAffineChowlaFrequencyMajorant
  rw [halfIndexAggregate_eq_half_pairPlus_add_pairMinus,
    halfIndexPartnerAggregate_eq_half_pairPlus_sub_pairMinus,
    halfIndexAggregate_eq_half_pairPlus_add_pairMinus,
    halfIndexPartnerAggregate_eq_half_pairPlus_sub_pairMinus]
  unfold twoNonunitRegularOrbitMajorant
  simp only [norm_mul]
  norm_num at *
  nlinarith

/-- Exact decomposition of one two-nonunit modulus contribution into the
exceptional frequency and complete regular orbits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2462a35ddac26d0c9c2d20b4caaac4db5daf757b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
