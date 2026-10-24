# le_biUnion_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e7e73e5f2b1241bea304697b6c235f34e9b9309",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 552,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ce2c9ff-d271-4c88-8755-f9bb843820be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ce55ad5-528a-b22c-052d-5c6843819936",
  "kind": "theorem",
  "lexical_name": "le_biUnion_iff",
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
  "slug": "le-biunion-iff--73373e6b1c5c0985fb25abe7",
  "source": {
    "blob": "8e7e73e5f2b1241bea304697b6c235f34e9b9309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 552,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73373e6b1c5c0985fb25abe725dcd02b7983f4b989da88d0ad6812be0037f2ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ce55ad5-528a-b22c-052d-5c6843819936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_biUnion_iff {πi : ∀ J, Prepartition J} {π' : Prepartition I} :
    π' ≤ π.biUnion πi ↔ π' ≤ π ∧ ∀ J ∈ π, π'.restrict J ≤ πi J := by
  refine' ⟨fun H => ⟨H.trans (π.biUnion_le πi), fun J hJ => _⟩, _⟩
  · rw [← π.restrict_biUnion πi hJ]
    exact restrict_mono H
  · rintro ⟨H, Hi⟩ J' hJ'
    rcases H hJ' with ⟨J, hJ, hle⟩
    have : J' ∈ π'.restrict J :=
      π'.mem_restrict.2 ⟨J', hJ', (inf_of_le_right <| WithBot.coe_le_coe.2 hle).symm⟩
    rcases Hi J hJ this with ⟨Ji, hJi, hlei⟩
    exact ⟨Ji, π.mem_biUnion.2 ⟨J, hJ, hJi⟩, hlei⟩
#align box_integral.prepartition.le_bUnion_iff BoxIntegral.Prepartition.le_biUnion_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e7e73e5f2b1241bea304697b6c235f34e9b9309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
