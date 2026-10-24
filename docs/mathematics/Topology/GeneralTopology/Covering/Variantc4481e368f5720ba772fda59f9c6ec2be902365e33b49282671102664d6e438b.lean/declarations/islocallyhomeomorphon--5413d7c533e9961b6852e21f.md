# isLocallyHomeomorphOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:080d821b-c973-f0f5-4f56-c8b05be22124",
  "kind": "theorem",
  "lexical_name": "isLocallyHomeomorphOn",
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
  "slug": "islocallyhomeomorphon--5413d7c533e9961b6852e21f",
  "source": {
    "blob": "7586a6763e936e6cf658078aa4552ebbaac5b776",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5413d7c533e9961b6852e21fa7f98a057d487695a41f66261283e4dc82a3ffa2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:080d821b-c973-f0f5-4f56-c8b05be22124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isLocallyHomeomorphOn (hf : IsCoveringMapOn f s) :
    IsLocallyHomeomorphOn f (f ⁻¹' s) := by
  refine' IsLocallyHomeomorphOn.mk f (f ⁻¹' s) fun x hx => _
  let e := (hf (f x) hx).toTrivialization
  have h := (hf (f x) hx).mem_toTrivialization_baseSet
  let he := e.mem_source.2 h
  refine'
    ⟨e.toLocalHomeomorph.trans
        { toFun := fun p => p.1
          invFun := fun p => ⟨p, x, rfl⟩
          source := e.baseSet ×ˢ ({⟨x, rfl⟩} : Set (f ⁻¹' {f x}))
          target := e.baseSet
          open_source :=
            e.open_baseSet.prod (singletons_open_iff_discrete.2 (hf (f x) hx).1 ⟨x, rfl⟩)
          open_target := e.open_baseSet
          map_source' := fun p => And.left
          map_target' := fun p hp => ⟨hp, rfl⟩
          left_inv' := fun p hp => Prod.ext rfl hp.2.symm
          right_inv' := fun p _ => rfl
          continuous_toFun := continuous_fst.continuousOn
          continuous_invFun := (continuous_id'.prod_mk continuous_const).continuousOn },
      ⟨he, by rwa [e.toLocalHomeomorph.symm_symm, e.proj_toFun x he],
        (hf (f x) hx).toTrivialization_apply⟩,
      fun p h => (e.proj_toFun p h.1).symm⟩
#align is_covering_map_on.is_locally_homeomorph_on IsCoveringMapOn.isLocallyHomeomorphOn

end IsCoveringMapOn

/-- A covering map is a continuous function `f : E → X` with discrete fibers such that each point
  of `X` has an evenly covered neighborhood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7586a6763e936e6cf658078aa4552ebbaac5b776` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
