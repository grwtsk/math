# unitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:980e2a5b72c0f713db1cb4dddd6ba2e7ea1d8bf9b45ad35ea52f575420f32276",
  "kind": "def",
  "lexical_name": "unitIso",
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
  "slug": "unitiso--bef94a7a0eaaa75b3e888f84",
  "source": {
    "blob": "9ebaec5da02899ac759589c0720028f1fa9cd004",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 150,
    "path": "GRWTSK/Algebra/LinearAlgebra/Iso/Variant0f890c61a855c91c9c1f72515892519e69369b31d21371ce274130774aea915d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bef94a7a0eaaa75b3e888f843c69efeba5125356f0a456f8cd00f70c55ad1540",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Iso/Variant0f890c61a855c91c9c1f72515892519e69369b31d21371ce274130774aea915d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:980e2a5b72c0f713db1cb4dddd6ba2e7ea1d8bf9b45ad35ea52f575420f32276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitIso (V : Rep.{w} k G) : V ≅ (toModuleMonoidAlgebra ⋙ ofModuleMonoidAlgebra).obj V :=
  mkIso <| .mk
  { unitIsoAddEquiv (k := k) (G := G) with
    map_smul' r x := show (RestrictScalars.addEquiv _ _ _).symm
      (V.ρ.asModuleEquiv.symm (r • x)) = _ by
      simp only [Representation.asModuleEquiv_symm_map_smul]
      rfl } fun g ↦ by ext; exact unit_iso_comm ..

/-- The categorical equivalence `Rep k G ≌ ModuleCat k[G]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Iso/Variant0f890c61a855c91c9c1f72515892519e69369b31d21371ce274130774aea915d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Iso/Variant0f890c61a855c91c9c1f72515892519e69369b31d21371ce274130774aea915d.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ebaec5da02899ac759589c0720028f1fa9cd004` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
