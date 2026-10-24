# actual_weighted_remainder_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90162fa6-5638-5139-629f-7aa22c1a131b",
  "kind": "theorem",
  "lexical_name": "actual_weighted_remainder_integrable",
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
  "slug": "actual-weighted-remainder-integrable--5a1a20fd3baf1a06f79ec2c6",
  "source": {
    "blob": "5d693c720d14961f3be99641dd221d0d6398ffff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a1a20fd3baf1a06f79ec2c6e6629aee87d6b380d9c5bfca26e81465ddbb33ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90162fa6-5638-5139-629f-7aa22c1a131b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_weighted_remainder_integrable
    (hI : IntegrableOn actualRemainder (Ioi (0 : ℝ))) {s : ℝ} (hs : 0 ≤ s) :
    IntegrableOn (fun t => Real.exp (-s*t) * actualRemainder t) (Ioi (0 : ℝ)) := by
  exact hI.bdd_mul
    ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).aestronglyMeasurable)
    (ae_restrict_of_forall_mem measurableSet_Ioi fun t ht => by
      simpa only [Real.norm_eq_abs] using laplaceWeight_abs_le_one hs ht.le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d693c720d14961f3be99641dd221d0d6398ffff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
