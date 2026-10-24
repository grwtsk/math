# HasBasis.biInf_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35a66baf-c33e-8fcb-4b2d-c87a28e24ec1",
  "kind": "theorem",
  "lexical_name": "HasBasis.biInf_finset",
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
  "slug": "hasbasis-biinf-finset--4f562b667fb3993f2128a1cc",
  "source": {
    "blob": "3a1c08d3822ced071a902b1e2342aeef4ce7fd84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f562b667fb3993f2128a1cc08819fbc0c846048d242bd0b402fdcf6164bc291",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35a66baf-c33e-8fcb-4b2d-c87a28e24ec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasBasis.biInf_finset {ι : Type*} {ι' : ι → Type*} (I : Finset ι)
    {l : ι → Filter α} {p : ∀ i, ι' i → Prop} {s : ∀ i, ι' i → Set α}
    (hl : ∀ i ∈ I, (l i).HasBasis (p i) (s i)) :
    (⨅ i ∈ I, l i).HasBasis (fun f : ∀ i : I, ι' i ↦ ∀ i : I, p i (f i))
      fun f ↦ ⋂ i : I, s i (f i) := by
  rw [iInf_subtype']
  exact HasBasis.iInf_of_finite fun i : I ↦ hl i i.2

open scoped Function in -- required for scoped `on` notation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a1c08d3822ced071a902b1e2342aeef4ce7fd84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
