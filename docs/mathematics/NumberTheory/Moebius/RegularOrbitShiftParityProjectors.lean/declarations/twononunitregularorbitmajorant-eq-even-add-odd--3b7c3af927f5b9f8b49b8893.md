# twoNonunitRegularOrbitMajorant_eq_even_add_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7684aa17-a3a2-9d6d-c437-b8f0914085df",
  "kind": "theorem",
  "lexical_name": "twoNonunitRegularOrbitMajorant_eq_even_add_odd",
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
  "slug": "twononunitregularorbitmajorant-eq-even-add-odd--3b7c3af927f5b9f8b49b8893",
  "source": {
    "blob": "c704448768339770aa5b21459dfdc2b9fd291867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 221,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b7c3af927f5b9f8b49b88930ac333e87e0688af9949fcc27ab01e9b8eb4a959",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7684aa17-a3a2-9d6d-c437-b8f0914085df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoNonunitRegularOrbitMajorant_eq_even_add_odd
    (b d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    twoNonunitRegularOrbitMajorant b d k =
      twoNonunitEvenShiftOrbitMajorant b d k +
        twoNonunitOddShiftOrbitMajorant b d k := by
  unfold twoNonunitRegularOrbitMajorant
    twoNonunitEvenShiftOrbitMajorant
    twoNonunitOddShiftOrbitMajorant
  rw [twoKernelPairPlusAggregate_eq_two_mul_evenShift
      b d 0 hNonunit k,
    twoKernelPairMinusAggregate_eq_two_mul_oddShift
      b d 0 hNonunit k,
    twoKernelPairPlusAggregate_eq_two_mul_evenShift
      b d 1 hNonunit k,
    twoKernelPairMinusAggregate_eq_two_mul_oddShift
      b d 1 hNonunit k]
  simp only [norm_mul, norm_ofNat]
  norm_num
  ring

/-- Endpoint contribution from even shifts in the canonical regular orbits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c704448768339770aa5b21459dfdc2b9fd291867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
