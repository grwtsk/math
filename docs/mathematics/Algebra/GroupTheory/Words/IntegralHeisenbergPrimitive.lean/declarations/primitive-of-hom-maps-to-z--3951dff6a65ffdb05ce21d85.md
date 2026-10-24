# primitive_of_hom_maps_to_Z

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:037d2733-5d5e-df49-4fd3-05b1d3517dc4",
  "kind": "theorem",
  "lexical_name": "primitive_of_hom_maps_to_Z",
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
  "slug": "primitive-of-hom-maps-to-z--3951dff6a65ffdb05ce21d85",
  "source": {
    "blob": "d0e8da0cb242646f7c8b2a5d97a7d9ebf3f7d6b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 218,
    "path": "GRWTSK/GroupTheory/Words/IntegralHeisenbergPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3951dff6a65ffdb05ce21d85e6f44174861a85028fa715361d652888e9a4acac",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:037d2733-5d5e-df49-4fd3-05b1d3517dc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_of_hom_maps_to_Z {T : Type*} [Group T]
    (f : T →* IntegralHeisenberg) {g : T}
    (hg : f g = IntegralHeisenberg.Z) :
    IsPrimitiveConjugacy g := by
  constructor
  · intro h1
    apply IntegralHeisenberg.Z_ne_one
    have hf : f g = 1 := by simp [h1]
    exact hg.symm.trans hf
  · rintro ⟨r, n, hn, hr⟩
    apply IntegralHeisenberg.Z_not_properPower
    refine ⟨f r, n, hn, ?_⟩
    calc
      (f r) ^ n = f (r ^ n) := by rw [map_pow]
      _ = f g := by rw [hr]
      _ = IntegralHeisenberg.Z := hg

end GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/GroupTheory/Words/IntegralHeisenbergPrimitive.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0e8da0cb242646f7c8b2a5d97a7d9ebf3f7d6b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
