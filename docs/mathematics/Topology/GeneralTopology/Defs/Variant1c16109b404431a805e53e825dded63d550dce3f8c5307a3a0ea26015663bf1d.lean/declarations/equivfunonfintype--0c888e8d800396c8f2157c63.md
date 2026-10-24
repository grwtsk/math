# equivFunOnFintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2c252807e1b9678c58ae015c17220bcca829d12b17d8ed09be1ba5a33a6037b",
  "kind": "def",
  "lexical_name": "equivFunOnFintype",
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
  "slug": "equivfunonfintype--0c888e8d800396c8f2157c63",
  "source": {
    "blob": "508e6b417841822f3735dba061237c026e730a2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 444,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c888e8d800396c8f2157c633f98ed783e9c7620e265b5e8a296149588d49df0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2c252807e1b9678c58ae015c17220bcca829d12b17d8ed09be1ba5a33a6037b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivFunOnFintype [Fintype ι] : (Π₀ i, β i) ≃ ∀ i, β i where
  toFun := (⇑)
  invFun f := ⟨f, Trunc.mk ⟨Finset.univ.1, fun _ => Or.inl <| Finset.mem_univ_val _⟩⟩
  left_inv _ := DFunLike.coe_injective rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `508e6b417841822f3735dba061237c026e730a2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
