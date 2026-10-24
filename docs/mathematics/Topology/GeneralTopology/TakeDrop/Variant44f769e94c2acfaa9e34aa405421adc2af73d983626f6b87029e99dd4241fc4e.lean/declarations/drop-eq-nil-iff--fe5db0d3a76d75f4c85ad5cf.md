# drop_eq_nil_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdd3240e-8b6f-4b1a-dd28-e8c1764a6063",
  "kind": "theorem",
  "lexical_name": "drop_eq_nil_iff",
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
  "slug": "drop-eq-nil-iff--fe5db0d3a76d75f4c85ad5cf",
  "source": {
    "blob": "7072742fea8da6891a2adcb222fb663149dcf6cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/TakeDrop/Variant44f769e94c2acfaa9e34aa405421adc2af73d983626f6b87029e99dd4241fc4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe5db0d3a76d75f4c85ad5cf9b5383d8b78e4fd60f1a339ab5f733d4529ddd0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TakeDrop/Variant44f769e94c2acfaa9e34aa405421adc2af73d983626f6b87029e99dd4241fc4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdd3240e-8b6f-4b1a-dd28-e8c1764a6063`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem drop_eq_nil_iff {l : List α} {i : Nat} : l.drop i = [] ↔ l.length ≤ i := by
  refine ⟨fun h => ?_, drop_eq_nil_of_le⟩
  induction i generalizing l with
  | zero =>
    simp only [drop] at h
    simp [h]
  | succ i hi =>
    cases l
    · simp
    · simp only [drop] at h
      simpa [Nat.succ_le_succ_iff] using hi h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TakeDrop/Variant44f769e94c2acfaa9e34aa405421adc2af73d983626f6b87029e99dd4241fc4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TakeDrop/Variant44f769e94c2acfaa9e34aa405421adc2af73d983626f6b87029e99dd4241fc4e.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7072742fea8da6891a2adcb222fb663149dcf6cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
