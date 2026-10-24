# openAddSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b9ed48415068f10747744367f60b6d66c38e73112a704a393022efdc34ca81e",
  "kind": "def",
  "lexical_name": "openAddSubgroup",
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
  "slug": "openaddsubgroup--02c6f1308d22eb4fe21ce49e",
  "source": {
    "blob": "984977b3e2a612a34a43d9e0028851d2a2084ba3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 184,
    "path": "GRWTSK/Topology/Bases/Variantde6eb1ee52d9dfbd35b0c673ebd9bc9b66164004efebde9e2779cffea794542b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02c6f1308d22eb4fe21ce49ef618a3741903e2d7be12c3c9934580f196dc367a",
  "verification": {
    "reference": "docs/verification/Topology/Bases/Variantde6eb1ee52d9dfbd35b0c673ebd9bc9b66164004efebde9e2779cffea794542b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b9ed48415068f10747744367f60b6d66c38e73112a704a393022efdc34ca81e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def openAddSubgroup (i : ι) : @OpenAddSubgroup A _ hB.topology :=
  -- Porting note: failed to synthesize instance `TopologicalSpace A`
  let _ := hB.topology
  { B i with
    isOpen' := by
      rw [isOpen_iff_mem_nhds]
      intro a a_in
      rw [(hB.hasBasis_nhds a).mem_iff]
      use i, trivial
      rintro b b_in
      simpa using (B i).add_mem a_in b_in }
#align ring_subgroups_basis.open_add_subgroup RingSubgroupsBasis.openAddSubgroup

-- see Note [nonarchimedean non instances]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Bases/Variantde6eb1ee52d9dfbd35b0c673ebd9bc9b66164004efebde9e2779cffea794542b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Bases/Variantde6eb1ee52d9dfbd35b0c673ebd9bc9b66164004efebde9e2779cffea794542b.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984977b3e2a612a34a43d9e0028851d2a2084ba3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
