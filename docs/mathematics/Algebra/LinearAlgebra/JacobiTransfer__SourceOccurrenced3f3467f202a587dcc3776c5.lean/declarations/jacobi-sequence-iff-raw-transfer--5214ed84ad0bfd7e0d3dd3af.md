# jacobi_sequence_iff_raw_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe76f4bb-5619-d779-e438-689c8bf5a1c1",
  "kind": "theorem",
  "lexical_name": "jacobi_sequence_iff_raw_transfer",
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
  "slug": "jacobi-sequence-iff-raw-transfer--5214ed84ad0bfd7e0d3dd3af",
  "source": {
    "blob": "355e6fe28df83abc7f46c574a7f7575552fadb1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 226,
    "path": "GRWTSK/LinearAlgebra/JacobiTransfer.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5214ed84ad0bfd7e0d3dd3af8d9c686dfed12dacf3d31d51ff952071c27637ab",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced3f3467f202a587dcc3776c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe76f4bb-5619-d779-e438-689c8bf5a1c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobi_sequence_iff_raw_transfer {K : Type u} [Field K]
    (E : K) (a b u : ℤ → K) (n : ℤ) (ha : a n ≠ 0) :
    a n * u (n + 1) + b n * u n + a (n - 1) * u (n - 1) = E * u n ↔
      rawSequenceState u (n + 1) =
        (rawJacobiTransfer E (b n) (a n) (a (n - 1))).mulVec
          (rawSequenceState u n) := by
  simpa [jacobiRecurrence, rawSequenceState] using
    jacobi_recurrence_iff_raw_transfer E (b n) (a n) (a (n - 1))
      (u (n - 1)) (u n) (u (n + 1)) ha



/-- Weighted Jacobi sequence dynamics tracks `a (n - 1)` to `a n` exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced3f3467f202a587dcc3776c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/JacobiTransfer.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `355e6fe28df83abc7f46c574a7f7575552fadb1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
