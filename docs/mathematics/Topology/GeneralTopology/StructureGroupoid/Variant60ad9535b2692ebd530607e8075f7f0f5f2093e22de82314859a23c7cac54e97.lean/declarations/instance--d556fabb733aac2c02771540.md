# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e8c0c6db90e7674363f3240ae21fa1d81ca2614c834f4de6bc7d2b9eae94b8b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d556fabb733aac2c02771540",
  "source": {
    "blob": "aa88b98ac85accab9df7b4be012ac92bd37c4ca7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 123,
    "path": "GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d556fabb733aac2c027715404f6faea06b789b56ee52adffe087e31b9d6dfeb3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e8c0c6db90e7674363f3240ae21fa1d81ca2614c834f4de6bc7d2b9eae94b8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Min (StructureGroupoid H) :=
  ⟨fun G G' => StructureGroupoid.mk
    (members := G.members ∩ G'.members)
    (trans' := fun e e' he he' =>
      ⟨G.trans' e e' he.left he'.left, G'.trans' e e' he.right he'.right⟩)
    (symm' := fun e he => ⟨G.symm' e he.left, G'.symm' e he.right⟩)
    (id_mem' := ⟨G.id_mem', G'.id_mem'⟩)
    (locality' := by
      intro e hx
      apply (mem_inter_iff e G.members G'.members).mpr
      refine And.intro (G.locality' e ?_) (G'.locality' e ?_)
      all_goals
        intro x hex
        rcases hx x hex with ⟨s, hs⟩
        use s
        refine And.intro hs.left (And.intro hs.right.left ?_)
      · exact hs.right.right.left
      · exact hs.right.right.right)
    (mem_of_eqOnSource' := fun e e' he hee' =>
      ⟨G.mem_of_eqOnSource' e e' he.left hee', G'.mem_of_eqOnSource' e e' he.right hee'⟩)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa88b98ac85accab9df7b4be012ac92bd37c4ca7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
