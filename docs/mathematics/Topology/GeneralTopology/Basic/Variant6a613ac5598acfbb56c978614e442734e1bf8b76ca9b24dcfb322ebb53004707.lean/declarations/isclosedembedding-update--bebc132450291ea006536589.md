# isClosedEmbedding_update

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d3983f1-23f6-c837-5ff7-3070b98c72bb",
  "kind": "theorem",
  "lexical_name": "isClosedEmbedding_update",
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
  "slug": "isclosedembedding-update--bebc132450291ea006536589",
  "source": {
    "blob": "c717452f9310dda1e60e8cbc0e58775814c1b268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 846,
    "line": 830,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bebc132450291ea0065365896ddcbbd998b24366a18337253adb0f641795ece0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d3983f1-23f6-c837-5ff7-3070b98c72bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 830–846.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosedEmbedding_update {ι : Type*} {β : ι → Type*}
    [DecidableEq ι] [(i : ι) → TopologicalSpace (β i)]
    (x : (i : ι) → β i) (i : ι) [(i : ι) → T1Space (β i)] :
    IsClosedEmbedding (update x i) := by
  refine .of_continuous_injective_isClosedMap (continuous_const.update i continuous_id)
    (update_injective x i) fun s hs ↦ ?_
  rw [update_image]
  apply isClosed_set_pi
  simp [forall_update_iff, hs, isClosed_singleton]

/-! ### R₁ (preregular) spaces -/

section R1Space

/-- A topological space is called a *preregular* (a.k.a. R₁) space,
if any two topologically distinguishable points have disjoint neighbourhoods. -/
@[mk_iff r1Space_iff_specializes_or_disjoint_nhds]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean#L830).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c717452f9310dda1e60e8cbc0e58775814c1b268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
