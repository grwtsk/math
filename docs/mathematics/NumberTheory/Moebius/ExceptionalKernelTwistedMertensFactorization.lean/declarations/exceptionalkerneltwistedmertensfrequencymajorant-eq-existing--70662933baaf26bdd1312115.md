# exceptionalKernelTwistedMertensFrequencyMajorant_eq_existing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8f5838c-7dc6-2b0a-b60a-2514ad680a4b",
  "kind": "theorem",
  "lexical_name": "exceptionalKernelTwistedMertensFrequencyMajorant_eq_existing",
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
  "slug": "exceptionalkerneltwistedmertensfrequencymajorant-eq-existing--70662933baaf26bdd1312115",
  "source": {
    "blob": "c9e2781b2901de9dd88a09428aff212ede3bf255",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 176,
    "path": "GRWTSK/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70662933baaf26bdd131211508eddb52f250bf9b6be01e37c89e6ffe99685fa4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8f5838c-7dc6-2b0a-b60a-2514ad680a4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exceptionalKernelTwistedMertensFrequencyMajorant_eq_existing
    (b d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    exceptionalKernelTwistedMertensFrequencyMajorant b d =
      twoNonunitExceptionalKernelFrequencyMajorant b d := by
  unfold exceptionalKernelTwistedMertensFrequencyMajorant
    twoNonunitExceptionalKernelFrequencyMajorant
  rw [twoNonunitExceptionalKernelAggregate_eq_twistedSquare_sub_diagonal
      b d 0 hNonunit (by norm_num),
    twoNonunitExceptionalKernelAggregate_eq_twistedSquare_sub_diagonal
      b d 1 hNonunit (by norm_num)]

/-- Endpoint exceptional contribution in the twisted one-point normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9e2781b2901de9dd88a09428aff212ede3bf255` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
