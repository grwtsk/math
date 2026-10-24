# weight_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72e425a3-2a8f-d91d-ca1b-6c5d362bf3ea",
  "kind": "theorem",
  "lexical_name": "weight_succ",
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
  "slug": "weight-succ--4ba0b32ecc9ca6bf12e3122d",
  "source": {
    "blob": "452c065add53650edf287f94df8a46388314e032",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualPeriodicInteriorAbel/Variant85a5cdde58a74f138cc64bbd1299a9fce6810488e0125900109efd5022ad162d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ba0b32ecc9ca6bf12e3122d58713cb613192f34198e4ea03140d558adc2b9b7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualPeriodicInteriorAbel/Variant85a5cdde58a74f138cc64bbd1299a9fce6810488e0125900109efd5022ad162d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72e425a3-2a8f-d91d-ca1b-6c5d362bf3ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weight_succ (A t : ℝ) (M : ℕ) :
    actualPeriodicColumnEndpointWeight A t (M + 1) =
      ∫ s in Real.log (M : ℝ)..Real.log ((M : ℝ) + 1), actualTwistedTimeDensity A t s := by
  unfold actualPeriodicColumnEndpointWeight
  simp only [Nat.cast_add, Nat.cast_one, add_sub_cancel_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualPeriodicInteriorAbel/Variant85a5cdde58a74f138cc64bbd1299a9fce6810488e0125900109efd5022ad162d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualPeriodicInteriorAbel/Variant85a5cdde58a74f138cc64bbd1299a9fce6810488e0125900109efd5022ad162d.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `452c065add53650edf287f94df8a46388314e032` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
