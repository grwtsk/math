# definedAtRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9e9fae194ccfcb23ec1af0c15728f82dbc498cbb4ffc311b2dca5fe7d124758",
  "kind": "def",
  "lexical_name": "definedAtRight",
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
  "slug": "definedatright--24cf606a8abbbc37ae638610",
  "source": {
    "blob": "dcd3b17b5cd06c739512ef9ba00a4f48af355372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 164,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24cf606a8abbbc37ae63861056354a6f9b677ff32d36f1f9ed3f47cb89735b5f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9e9fae194ccfcb23ec1af0c15728f82dbc498cbb4ffc311b2dca5fe7d124758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def definedAtRight [DenselyOrdered α] [NoMinOrder α] [NoMaxOrder α] [Nonempty α] (b : β) :
    Cofinal (PartialIso α β) where
  carrier := {f | ∃ a, (a, b) ∈ f.val}
  mem_gt f := by
    rcases (definedAtLeft α b).mem_gt f.comm with ⟨f', ⟨a, ha⟩, hl⟩
    refine' ⟨f'.comm, ⟨a, _⟩, _⟩
    · change (a, b) ∈ f'.val.image _
      rwa [← Finset.mem_coe, Finset.coe_image, Equiv.image_eq_preimage]
    · change _ ⊆ f'.val.image _
      rwa [← Finset.coe_subset, Finset.coe_image, ← Equiv.subset_image, ← Finset.coe_image,
        Finset.coe_subset]
#align order.partial_iso.defined_at_right Order.PartialIso.definedAtRight

variable {α}

/-- Given an ideal which intersects `definedAtLeft β a`, pick `b : β` such that
    some partial function in the ideal maps `a` to `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd3b17b5cd06c739512ef9ba00a4f48af355372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
