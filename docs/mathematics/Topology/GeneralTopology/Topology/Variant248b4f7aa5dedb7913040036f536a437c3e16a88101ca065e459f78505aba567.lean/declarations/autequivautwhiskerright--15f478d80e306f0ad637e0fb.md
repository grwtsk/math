# autEquivAutWhiskerRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60711e60196f2d44dda3de1f7626329384d1abb9382c16284e041d9d35c294f5",
  "kind": "def",
  "lexical_name": "autEquivAutWhiskerRight",
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
  "slug": "autequivautwhiskerright--15f478d80e306f0ad637e0fb",
  "source": {
    "blob": "674ea2d06bc0bd7fdf3776d619c6b881696e5572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 142,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant248b4f7aa5dedb7913040036f536a437c3e16a88101ca065e459f78505aba567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15f478d80e306f0ad637e0fbaf2ffd3310a70481f00da26a6d486e5755d34e45",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant248b4f7aa5dedb7913040036f536a437c3e16a88101ca065e459f78505aba567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60711e60196f2d44dda3de1f7626329384d1abb9382c16284e041d9d35c294f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def autEquivAutWhiskerRight {G : FintypeCat.{w} ⥤ FintypeCat.{v}}
    (h : G.FullyFaithful) :
    Aut F ≃ₜ* Aut (F ⋙ G) where
  __ := (h.whiskeringRight C).autMulEquivOfFullyFaithful F
  continuous_toFun := continuous_mapAut_whiskeringRight F G
  continuous_invFun := Continuous.continuous_symm_of_equiv_compact_to_t2
    (f := ((h.whiskeringRight C).autMulEquivOfFullyFaithful F).toEquiv)
    (continuous_mapAut_whiskeringRight F G)

variable [GaloisCategory C] [FiberFunctor F]

/--
If `H` is an open subset of `Aut F` such that `1 ∈ H`, there exists a finite
set `I` of connected objects of `C` such that every `σ : Aut F` that induces the identity
on `F.obj X` for all `X ∈ I` is contained in `H`. In other words: The kernel
of the evaluation map `Aut F →* ∏ X : I ↦ Aut (F.obj X)` is contained in `H`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant248b4f7aa5dedb7913040036f536a437c3e16a88101ca065e459f78505aba567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant248b4f7aa5dedb7913040036f536a437c3e16a88101ca065e459f78505aba567.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `674ea2d06bc0bd7fdf3776d619c6b881696e5572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
