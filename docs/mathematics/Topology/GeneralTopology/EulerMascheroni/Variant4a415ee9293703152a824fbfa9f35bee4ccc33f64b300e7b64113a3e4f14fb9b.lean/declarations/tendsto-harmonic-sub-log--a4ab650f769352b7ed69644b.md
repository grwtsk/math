# tendsto_harmonic_sub_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52fa0288-ef99-a8c2-a4a1-5430e9acc8a8",
  "kind": "lemma",
  "lexical_name": "tendsto_harmonic_sub_log",
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
  "slug": "tendsto-harmonic-sub-log--a4ab650f769352b7ed69644b",
  "source": {
    "blob": "45a45b26c3b72e2e2e863d3ea55ef8e4a8412916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4ab650f769352b7ed69644b15cb1496d043d9823dc346d443aef8eba38c9f7e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52fa0288-ef99-a8c2-a4a1-5430e9acc8a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_harmonic_sub_log :
    Tendsto (fun n : ℕ ↦ harmonic n - log n) atTop (𝓝 eulerMascheroniConstant) := by
  apply tendsto_eulerMascheroniSeq'.congr'
  filter_upwards [eventually_ne_atTop 0] with n hn
  simp_rw [eulerMascheroniSeq', hn, ite_false]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a45b26c3b72e2e2e863d3ea55ef8e4a8412916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
