# BijOn.toLocalEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2bc276db593f322bcadb77946f32d361bc113d2ee81d0addaaf7e377e1ee83f",
  "kind": "def",
  "lexical_name": "BijOn.toLocalEquiv",
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
  "slug": "bijon-tolocalequiv--b371c5de9ec75da7ee8e5bfb",
  "source": {
    "blob": "0442a0874ccf8355f51208b67ad3cd6e0fb94ec7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1108,
    "line": 1091,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant0ef28416b586dfd1b473890796fa78b24cce951bff679765bdf3059639da2722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b371c5de9ec75da7ee8e5bfb32256efec5176808148af0cdc8ee636791605ce7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant0ef28416b586dfd1b473890796fa78b24cce951bff679765bdf3059639da2722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2bc276db593f322bcadb77946f32d361bc113d2ee81d0addaaf7e377e1ee83f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1091–1108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def BijOn.toLocalEquiv [Nonempty α] (f : α → β) (s : Set α) (t : Set β)
    (hf : BijOn f s t) : LocalEquiv α β where
  toFun := f
  invFun := invFunOn f s
  source := s
  target := t
  map_source' := hf.mapsTo
  map_target' := hf.surjOn.mapsTo_invFunOn
  left_inv' := hf.invOn_invFunOn.1
  right_inv' := hf.invOn_invFunOn.2
#align set.bij_on.to_local_equiv Set.BijOn.toLocalEquiv
#align set.bij_on.to_local_equiv_target Set.BijOn.toLocalEquiv_target
#align set.bij_on.to_local_equiv_symm_apply Set.BijOn.toLocalEquiv_symm_apply
#align set.bij_on.to_local_equiv_apply Set.BijOn.toLocalEquiv_apply
#align set.bij_on.to_local_equiv_source Set.BijOn.toLocalEquiv_source

/-- A map injective on a subset of its domain provides a local equivalence. -/
@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant0ef28416b586dfd1b473890796fa78b24cce951bff679765bdf3059639da2722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant0ef28416b586dfd1b473890796fa78b24cce951bff679765bdf3059639da2722.lean#L1091).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0442a0874ccf8355f51208b67ad3cd6e0fb94ec7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
