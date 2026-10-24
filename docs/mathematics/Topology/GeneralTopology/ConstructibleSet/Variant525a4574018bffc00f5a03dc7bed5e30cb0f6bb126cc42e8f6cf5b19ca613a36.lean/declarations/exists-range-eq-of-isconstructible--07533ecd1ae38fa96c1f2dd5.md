# exists_range_eq_of_isConstructible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b9466bb19e60baeed81ae48ee38aadc3a0f4f3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dff11f0c-eea0-15cc-e570-1097225e1e5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e3d8f48-5cf8-2da8-f1bc-c52c5fad63d8",
  "kind": "lemma",
  "lexical_name": "exists_range_eq_of_isConstructible",
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
  "slug": "exists-range-eq-of-isconstructible--07533ecd1ae38fa96c1f2dd5",
  "source": {
    "blob": "6b9466bb19e60baeed81ae48ee38aadc3a0f4f3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07533ecd1ae38fa96c1f2dd51fe85119c5108c12b98e077305e3c0269fb08faf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e3d8f48-5cf8-2da8-f1bc-c52c5fad63d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_range_eq_of_isConstructible {R : Type u} [CommRing R]
    {s : Set (PrimeSpectrum R)} (hs : IsConstructible s) :
    ∃ (S : Type u) (_ : CommRing S) (f : R →+* S), Set.range (comap f) = s := by
  obtain ⟨s, rfl⟩ := exists_constructibleSetData_iff.mpr hs
  refine ⟨Π i : s, Localization.Away (Ideal.Quotient.mk (Ideal.span (Set.range i.1.g)) i.1.f),
    inferInstance, algebraMap _ _, ?_⟩
  rw [coe_comap, ← iUnion_range_specComap_comp_evalRingHom, ConstructibleSetData.toSet]
  simp_rw [← Finset.mem_coe, Set.biUnion_eq_iUnion]
  congr! with _ _ C
  let I := Ideal.span (Set.range C.1.g)
  let f := Ideal.Quotient.mk I C.1.f
  trans comap (Ideal.Quotient.mk I) '' (Set.range (comap (algebraMap _ (Localization.Away f))))
  · rw [← Set.range_comp]; rfl
  · rw [localization_away_comap_range _ f, ← comap_basicOpen, TopologicalSpace.Opens.coe_comap,
      Set.image_preimage_eq_inter_range, range_comap_of_surjective _ _ Ideal.Quotient.mk_surjective,
      BasicConstructibleSetData.toSet, Set.diff_eq_compl_inter, basicOpen_eq_zeroLocus_compl,
      Ideal.mk_ker, zeroLocus_span]

@[stacks 00I0 "(1)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b9466bb19e60baeed81ae48ee38aadc3a0f4f3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
