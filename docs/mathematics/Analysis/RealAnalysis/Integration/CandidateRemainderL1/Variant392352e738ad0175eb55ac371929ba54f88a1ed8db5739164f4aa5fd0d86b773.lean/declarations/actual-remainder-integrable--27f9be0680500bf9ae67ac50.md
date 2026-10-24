# actual_remainder_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98c6ccee-b56f-7ab9-056f-54cf94fa42aa",
  "kind": "theorem",
  "lexical_name": "actual_remainder_integrable",
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
  "slug": "actual-remainder-integrable--27f9be0680500bf9ae67ac50",
  "source": {
    "blob": "65b8b31a3a67df85a91dcbaaf04c59d5a3f018bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateRemainderL1/Variant392352e738ad0175eb55ac371929ba54f88a1ed8db5739164f4aa5fd0d86b773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27f9be0680500bf9ae67ac50678cce742d27fa57165bc90d08375eb9319d5bfe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateRemainderL1/Variant392352e738ad0175eb55ac371929ba54f88a1ed8db5739164f4aa5fd0d86b773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98c6ccee-b56f-7ab9-056f-54cf94fa42aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_remainder_integrable : IntegrableOn actualRemainder (Ioi (0:ℝ)) := by
  apply (psiRelativeError_integrable.sub psiErrorTail_integrable).congr_fun
  · intro t ht
    exact (actual_remainder_eq_tail ht.le).symm
  · exact measurableSet_Ioi

end ContinuousResearch.CandidateRemainderL1
set_option pp.fullNames true
set_option pp.universes true
#check ContinuousResearch.CandidateRemainderL1.actual_remainder_integrable
#print ContinuousResearch.CandidateRemainderL1.actual_remainder_integrable
#print axioms ContinuousResearch.CandidateRemainderL1.actual_remainder_integrable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateRemainderL1/Variant392352e738ad0175eb55ac371929ba54f88a1ed8db5739164f4aa5fd0d86b773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateRemainderL1/Variant392352e738ad0175eb55ac371929ba54f88a1ed8db5739164f4aa5fd0d86b773.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65b8b31a3a67df85a91dcbaaf04c59d5a3f018bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
