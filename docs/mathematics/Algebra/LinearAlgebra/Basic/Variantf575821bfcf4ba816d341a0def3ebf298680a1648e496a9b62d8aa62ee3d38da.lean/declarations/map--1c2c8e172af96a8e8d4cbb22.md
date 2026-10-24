# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:615cc9a2bdad9a3a695c519bf9730ba49cdd797c8d3c2a0315f97fd20b99880e",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--1c2c8e172af96a8e8d4cbb22",
  "source": {
    "blob": "72e9c56851bcba5136672abb60b391eb93eb7a5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1176,
    "line": 1167,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf575821bfcf4ba816d341a0def3ebf298680a1648e496a9b62d8aa62ee3d38da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c2c8e172af96a8e8d4cbb2285b3941745e58e11b170d411e856cfd80ebb0715",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantf575821bfcf4ba816d341a0def3ebf298680a1648e496a9b62d8aa62ee3d38da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:615cc9a2bdad9a3a695c519bf9730ba49cdd797c8d3c2a0315f97fd20b99880e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1167–1176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map : (M →ₗ[R] N) →ₗ[R] (M' →ₗ[R] N') where
  toFun h := lift S f (g ∘ₗ h) (IsLocalizedModule.map_units g)
  map_add' h₁ h₂ := by
    apply IsLocalizedModule.ext S f (IsLocalizedModule.map_units g)
    simp only [lift_comp, LinearMap.add_comp, LinearMap.comp_add]
  map_smul' r h := by
    apply IsLocalizedModule.ext S f (IsLocalizedModule.map_units g)
    simp only [lift_comp, LinearMap.add_comp, LinearMap.comp_add, LinearMap.smul_comp,
      LinearMap.comp_smul, RingHom.id_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantf575821bfcf4ba816d341a0def3ebf298680a1648e496a9b62d8aa62ee3d38da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantf575821bfcf4ba816d341a0def3ebf298680a1648e496a9b62d8aa62ee3d38da.lean#L1167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72e9c56851bcba5136672abb60b391eb93eb7a5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
