# measureReal_goldbachClippedRationalArc_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2546b242-3e0b-6072-83b2-6e6c8aaf9e48",
  "kind": "theorem",
  "lexical_name": "measureReal_goldbachClippedRationalArc_le",
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
  "slug": "measurereal-goldbachclippedrationalarc-le--c3c6a4303cf717c77b641aab",
  "source": {
    "blob": "0aadd1999fa478e25c0f2fa4d6366d8b8706cc15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 310,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3c6a4303cf717c77b641aab223e3ad7724b797d20cf68bccd57b6b2035e6047",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2546b242-3e0b-6072-83b2-6e6c8aaf9e48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measureReal_goldbachClippedRationalArc_le
    (Q N : ℕ) (aq : ℕ × ℕ) :
    volume.real (goldbachClippedRationalArc Q N aq) ≤
      6 * goldbachRationalArcRadius Q N aq.2 := by
  have hfinite : volume (goldbachPeriodizedRationalArc Q N aq.1 aq.2) < ⊤ := by
    unfold goldbachPeriodizedRationalArc
    exact measure_union_lt_top measure_Icc_lt_top
      (measure_union_lt_top measure_Icc_lt_top measure_Icc_lt_top)
  unfold goldbachClippedRationalArc
  exact
    (measureReal_mono Set.inter_subset_right hfinite.ne).trans
      (measureReal_goldbachPeriodizedRationalArc_le
        Q N aq.1 aq.2)

end
end GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aadd1999fa478e25c0f2fa4d6366d8b8706cc15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
