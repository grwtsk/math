# equivCongrLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d11d292426d8c1af2c49700c70fb50d8c8ad0f24d5a3a67970cd5282870006e3",
  "kind": "def",
  "lexical_name": "equivCongrLeft",
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
  "slug": "equivcongrleft--30579399de2772abad9b466d",
  "source": {
    "blob": "508e6b417841822f3735dba061237c026e730a2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1142,
    "line": 1123,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30579399de2772abad9b466d2b3e17554f245bf8ee7c0c8a646372ff6ace4c24",
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

Occurrence: `declaration:d11d292426d8c1af2c49700c70fb50d8c8ad0f24d5a3a67970cd5282870006e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1123–1142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivCongrLeft [∀ i, Zero (β i)] (h : ι ≃ κ) : (Π₀ i, β i) ≃ Π₀ k, β (h.symm k) where
  toFun := comapDomain' h.symm h.right_inv
  invFun f :=
    mapRange (fun i => Equiv.cast <| congr_arg β <| h.symm_apply_apply i)
      (fun i => (Equiv.cast_eq_iff_heq _).mpr <| by rw [Equiv.symm_apply_apply])
      (@comapDomain' _ _ _ _ h _ h.left_inv f)
  left_inv f := by
    ext i
    rw [mapRange_apply, comapDomain'_apply, comapDomain'_apply, Equiv.cast_eq_iff_heq,
      h.symm_apply_apply]
  right_inv f := by
    ext k
    rw [comapDomain'_apply, mapRange_apply, comapDomain'_apply, Equiv.cast_eq_iff_heq,
      h.apply_symm_apply]

variable {α : Option ι → Type v}

/-- Adds a term to a dfinsupp, making a dfinsupp indexed by an `Option`.

This is the dfinsupp version of `Option.rec`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean#L1123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `508e6b417841822f3735dba061237c026e730a2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
