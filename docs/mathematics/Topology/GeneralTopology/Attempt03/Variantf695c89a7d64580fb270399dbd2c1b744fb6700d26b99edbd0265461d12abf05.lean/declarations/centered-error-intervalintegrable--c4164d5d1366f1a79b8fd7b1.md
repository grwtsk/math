# centered_error_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed279fc5-fcf6-46d3-53a9-eeea9d014fee",
  "kind": "theorem",
  "lexical_name": "centered_error_intervalIntegrable",
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
  "slug": "centered-error-intervalintegrable--c4164d5d1366f1a79b8fd7b1",
  "source": {
    "blob": "ba77b0328a8227a94e76b27e3d3191b872098c97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variantf695c89a7d64580fb270399dbd2c1b744fb6700d26b99edbd0265461d12abf05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4164d5d1366f1a79b8fd7b17543821baef6c3bfb2bf83faf81956129079a191",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03/Variantf695c89a7d64580fb270399dbd2c1b744fb6700d26b99edbd0265461d12abf05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed279fc5-fcf6-46d3-53a9-eeea9d014fee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem centered_error_intervalIntegrable {l b : ℝ}
    (hl : 0 ≤ l) (hlb : l ≤ b) :
    IntervalIntegrable actualCenteredMangoldtLogError volume l b := by
  have hb : 0 ≤ b := hl.trans hlb
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb id (by fun_prop)
  have he : IntervalIntegrable mangoldtLogError volume 0 b := by
    simpa only [deriv_id, mul_one] using hi
  exact (he.add intervalIntegrable_const).mono_set (by
    rw [uIcc_of_le hb, uIcc_of_le hlb]
    exact Icc_subset_Icc hl le_rfl)

/-- Genuine finite L1 is established for the actual moving source before splitting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03/Variantf695c89a7d64580fb270399dbd2c1b744fb6700d26b99edbd0265461d12abf05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03/Variantf695c89a7d64580fb270399dbd2c1b744fb6700d26b99edbd0265461d12abf05.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba77b0328a8227a94e76b27e3d3191b872098c97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
