# logarithmicShallowLongRemainderPacket_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89aa2481-cef4-420b-56e6-60e33c649b5b",
  "kind": "theorem",
  "lexical_name": "logarithmicShallowLongRemainderPacket_eq_sub",
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
  "slug": "logarithmicshallowlongremainderpacket-eq-sub--cfb54df410aef46fdec72235",
  "source": {
    "blob": "c82b477c854b63382c98e4d29ed588647fee6d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 66,
    "path": "GRWTSK/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfb54df410aef46fdec722350eb50eca245538bea4e3ef6af4bf8bf618fdc936",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89aa2481-cef4-420b-56e6-60e33c649b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmicShallowLongRemainderPacket_eq_sub
    (j : ℕ) :
    logarithmicShallowLongRemainderPacket j =
      logarithmicShallowDepthPacket j -
        logarithmicShallowShortSignedPacket j := by
  unfold logarithmicShallowLongRemainderPacket
    logarithmicLongDepthRemainder
    logarithmicShallowDepthPacket
    logarithmicShallowShortSignedPacket
  rw [Finset.sum_sub_distrib]

/-- Absolute value of the shallow signed short-length contribution is bounded
by its nonnegative shallow budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c82b477c854b63382c98e4d29ed588647fee6d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
