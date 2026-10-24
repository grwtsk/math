# subpolynomialCoreLongDeepRemainderPacket_of_boundary_and_signedLength

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b23201c2-aab8-768f-c7d7-23844ed8157c",
  "kind": "theorem",
  "lexical_name": "subpolynomialCoreLongDeepRemainderPacket_of_boundary_and_signedLength",
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
  "slug": "subpolynomialcorelongdeepremainderpacket-of-boundary-and-signedlength--6a2aaa680b6fa06a5a97f830",
  "source": {
    "blob": "719c8e2193cfc30c1e421772402732a666c0a8ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 270,
    "path": "GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a2aaa680b6fa06a5a97f83096b39709d8acebce12b5ee07bd5cf644f236df12",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b23201c2-aab8-768f-c7d7-23844ed8157c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialCoreLongDeepRemainderPacket_of_boundary_and_signedLength
    (hBoundary : SubpolynomialCoreBoundarySignedPacket)
    (hNonboundary : SubpolynomialCoreNonboundarySignedLengthPacket) :
    SubpolynomialCoreLongDeepRemainderPacket := by
  intro δ hδ
  obtain ⟨Cb, hCb, hb⟩ := hBoundary δ hδ
  obtain ⟨Cn, hCn, hn⟩ := hNonboundary δ hδ
  refine ⟨Cb + Cn, add_nonneg hCb hCn, ?_⟩
  intro j
  rw [coreLongDeepRemainderPacket_eq_boundary_add_nonboundary,
    coreNonboundarySignedRemainderPacket_eq_lengthPacket]
  calc
    coreBoundarySignedPacket j + coreNonboundarySignedLengthPacket j ≤
      |coreBoundarySignedPacket j| +
        |coreNonboundarySignedLengthPacket j| := by
      exact add_le_add (le_abs_self _) (le_abs_self _)
    _ ≤ Cb * (((2 ^ j : ℕ) : ℝ) ^ δ) +
        Cn * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      exact add_le_add (hb j) (hn j)
    _ = (Cb + Cn) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Exact conditional endpoint with classical Weak Mertens on the exceptional
boundary and signed cancellation retained throughout the non-boundary packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719c8e2193cfc30c1e421772402732a666c0a8ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
