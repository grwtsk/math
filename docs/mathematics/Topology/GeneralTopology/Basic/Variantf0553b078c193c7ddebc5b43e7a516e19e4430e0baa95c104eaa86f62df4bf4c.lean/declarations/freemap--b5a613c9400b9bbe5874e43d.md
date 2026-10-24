# freeMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f03cf2e10259ee87a34326d86ca804e20a6c65eca49e939bb424885d5173349",
  "kind": "def",
  "lexical_name": "freeMap",
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
  "slug": "freemap--b5a613c9400b9bbe5874e43d",
  "source": {
    "blob": "ab431d86c48f7fe7a53b6a53304981ab7a2dbb51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 395,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5a613c9400b9bbe5874e43debe2d7d8804f4f408b0fc9dca9a5f906e3d33487",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f03cf2e10259ee87a34326d86ca804e20a6c65eca49e939bb424885d5173349`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def freeMap {X Y : TopCat.{v}} (f : X ⟶ Y) : freeObj R X ⟶ freeObj R Y :=
  ConcreteCategory.ofHom ⟨Finsupp.lmapDomain _ _ f.hom, by
    rw [continuous_iff_coinduced_le]
    refine le_sInf fun (τ : TopologicalSpace (_ →₀ R)) ⟨hτ₁, hτ₂, hτ₃⟩ ↦ ?_
    rw [coinduced_le_iff_le_induced]
    refine sInf_le ⟨continuousSMul_induced (Finsupp.lmapDomain _ _ f.hom),
      continuousAdd_induced (Finsupp.lmapDomain _ _ f.hom), ?_⟩
    rw [← coinduced_le_iff_le_induced]
    refine le_trans ?_ hτ₃
    refine le_of_eq_of_le ?_ (coinduced_mono (continuous_iff_coinduced_le.mp f.hom.2))
    rw [coinduced_compose, coinduced_compose]
    congr 1
    ext x
    simp [coe_freeObj]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab431d86c48f7fe7a53b6a53304981ab7a2dbb51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
