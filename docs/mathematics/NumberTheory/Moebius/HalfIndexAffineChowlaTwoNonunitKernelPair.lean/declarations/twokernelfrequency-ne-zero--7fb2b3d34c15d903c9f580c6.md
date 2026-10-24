# twoKernelFrequency_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48dcc571-907e-7a4f-060d-a7d65df59abe",
  "kind": "theorem",
  "lexical_name": "twoKernelFrequency_ne_zero",
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
  "slug": "twokernelfrequency-ne-zero--7fb2b3d34c15d903c9f580c6",
  "source": {
    "blob": "a887099c7d7598b5ec0a64aa555b7651faf0eaae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 79,
    "path": "GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fb2b3d34c15d903c9f580c65592dbadb16d56bc4d51072d959bce6c6966c838",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48dcc571-907e-7a4f-060d-a7d65df59abe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoKernelFrequency_ne_zero
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    twoKernelFrequency d ≠ 0 := by
  have hdpos : 0 < d := Nat.pos_of_ne_zero (NeZero.ne d)
  have hd2 : 2 ≤ d := by
    by_contra h
    have hd1 : d = 1 := by omega
    subst d
    exact hNonunit (by norm_num [TwoUnitSquareModulusParameter])
  have hdsq : 4 ≤ d * d := by nlinarith
  have hhalfpos : 0 < (d * d) / 2 := by omega
  have hhalflt : (d * d) / 2 < d * d := by omega
  intro hz
  have hdvd : d * d ∣ (d * d) / 2 :=
    (ZMod.natCast_eq_zero_iff ((d * d) / 2) (d * d)).1 hz
  have hle : d * d ≤ (d * d) / 2 :=
    Nat.le_of_dvd hhalfpos hdvd
  omega

/-- Translation by the order-two kernel frequency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a887099c7d7598b5ec0a64aa555b7651faf0eaae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
