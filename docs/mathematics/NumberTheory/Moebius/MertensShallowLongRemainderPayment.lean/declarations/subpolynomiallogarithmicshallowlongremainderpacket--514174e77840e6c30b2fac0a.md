# subpolynomialLogarithmicShallowLongRemainderPacket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7c4f735-3af2-421d-096a-68fb3d1f041c",
  "kind": "theorem",
  "lexical_name": "subpolynomialLogarithmicShallowLongRemainderPacket",
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
  "slug": "subpolynomiallogarithmicshallowlongremainderpacket--514174e77840e6c30b2fac0a",
  "source": {
    "blob": "c82b477c854b63382c98e4d29ed588647fee6d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:514174e77840e6c30b2fac0ae9adc4046f1a86b5ea19c75fdc3e1274fbc10c43",
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

Occurrence: `result:f7c4f735-3af2-421d-096a-68fb3d1f041c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialLogarithmicShallowLongRemainderPacket :
    SubpolynomialLogarithmicShallowLongRemainderPacket := by
  intro δ hδ
  obtain ⟨Cdepth, hCdepth, hdepth⟩ :=
    subpolynomialLogarithmicShallowDepthPacket δ hδ
  obtain ⟨Cshort, hCshort, hshort⟩ :=
    subpolynomialLogThresholdShortPacketBudget δ hδ
  refine ⟨Cdepth + Cshort, add_nonneg hCdepth hCshort, ?_⟩
  intro j
  calc
    |logarithmicShallowLongRemainderPacket j| ≤
      |logarithmicShallowDepthPacket j| +
        logarithmicShallowNormalizedShortBudget j :=
      abs_logarithmicShallowLongRemainderPacket_le j
    _ ≤ |logarithmicShallowDepthPacket j| +
        normalizedShortPacketBudget j := by
      exact add_le_add le_rfl (logarithmicShallowNormalizedShortBudget_le_full j)
    _ ≤ Cdepth * (((2 ^ j : ℕ) : ℝ) ^ δ) +
        Cshort * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      exact add_le_add (hdepth j) (hshort j)
    _ = (Cdepth + Cshort) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- A subpolynomial deep-long remainder supplies the complete long remainder
once the deterministic shallow-long part is restored. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c82b477c854b63382c98e4d29ed588647fee6d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
