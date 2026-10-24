# Prod.instLieGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f38b605452ef2d9a0b55e63847ba91c6903dd70e8fc80d495cef92014568b36c",
  "kind": "instance",
  "lexical_name": "Prod.instLieGroup",
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
  "slug": "prod-instliegroup--ac0120288f482e2db4a7a574",
  "source": {
    "blob": "0c9541fc57fa034b80084ad2f117ae06094f34d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 191,
    "path": "GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantfb30647903e97d0acada4a7c16284aea10e187d5c7995b80f30aba597ce1e66d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac0120288f482e2db4a7a57435d6e6d5cf0ffdeee03fa0db8d23cc688e217109",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/LieGroup/Variantfb30647903e97d0acada4a7c16284aea10e187d5c7995b80f30aba597ce1e66d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f38b605452ef2d9a0b55e63847ba91c6903dd70e8fc80d495cef92014568b36c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.instLieGroup {𝕜 : Type*} [NontriviallyNormedField 𝕜] {n : ℕ∞ω}
    {H : Type*} [TopologicalSpace H] {E : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] {I : ModelWithCorners 𝕜 E H} {G : Type*}
    [TopologicalSpace G] [ChartedSpace H G] [Group G] [LieGroup I n G] {E' : Type*}
    [NormedAddCommGroup E'] [NormedSpace 𝕜 E'] {H' : Type*} [TopologicalSpace H']
    {I' : ModelWithCorners 𝕜 E' H'} {G' : Type*} [TopologicalSpace G'] [ChartedSpace H' G']
    [Group G'] [LieGroup I' n G'] : LieGroup (I.prod I') n (G × G') :=
  { ContMDiffMul.prod _ _ _ _ with contMDiff_inv := contMDiff_fst.inv.prodMk contMDiff_snd.inv }

end Product

/-! ### Normed spaces are Lie groups -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/LieGroup/Variantfb30647903e97d0acada4a7c16284aea10e187d5c7995b80f30aba597ce1e66d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantfb30647903e97d0acada4a7c16284aea10e187d5c7995b80f30aba597ce1e66d.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c9541fc57fa034b80084ad2f117ae06094f34d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
