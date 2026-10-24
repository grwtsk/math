# mapRoots_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "094a30064014772afc689d7314ea56a90716de29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f23ac7e91d2374d28f4875a90e5c8f124b0331806f72dad054c6dc15006875a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1427bb0-b87a-180b-cf58-589436a2c2ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:399e11e2-346d-6b9a-596b-8b313f3fba92",
  "kind": "theorem",
  "lexical_name": "mapRoots_bijective",
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
  "slug": "maproots-bijective--07a1961a470b57b2578c9d87",
  "source": {
    "blob": "094a30064014772afc689d7314ea56a90716de29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 131,
    "path": "GRWTSK/Algebra/PolynomialGaloisGroup/Variantf23ac7e91d2374d28f4875a90e5c8f124b0331806f72dad054c6dc15006875a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07a1961a470b57b2578c9d874fed818a65196ae4097c2165b17ba5604de317e1",
  "verification": {
    "reference": "docs/verification/Algebra/PolynomialGaloisGroup/Variantf23ac7e91d2374d28f4875a90e5c8f124b0331806f72dad054c6dc15006875a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:399e11e2-346d-6b9a-596b-8b313f3fba92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapRoots_bijective [h : Fact ((p.map (algebraMap F E)).Splits)] :
    Function.Bijective (mapRoots p E) := by
  constructor
  · exact fun _ _ h => Subtype.ext (RingHom.injective _ (Subtype.ext_iff.mp h))
  · intro y
    -- this is just an equality of two different ways to write the roots of `p` as an `E`-polynomial
    have key := (IsSplittingField.splits p.SplittingField p).roots_map
      (IsScalarTower.toAlgHom F p.SplittingField E : p.SplittingField →+* E)
    rw [map_map, AlgHom.comp_algebraMap] at key
    have hy := Subtype.mem y
    simp only [rootSet, Finset.mem_coe, Multiset.mem_toFinset, key, Multiset.mem_map] at hy
    rcases hy with ⟨x, hx1, hx2⟩
    exact ⟨⟨x, (@Multiset.mem_toFinset _ (Classical.decEq _) _ _).mpr hx1⟩, Subtype.ext hx2⟩

/-- A bijection between `rootSet p p.SplittingField` and `rootSet p E`. This is an auxilliary
definition used to define the Galois-equivariant `Polynomial.Gal.rootsEquivRoots`, but we keep
this definition public to help prove facts about `galAction`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PolynomialGaloisGroup/Variantf23ac7e91d2374d28f4875a90e5c8f124b0331806f72dad054c6dc15006875a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PolynomialGaloisGroup/Variantf23ac7e91d2374d28f4875a90e5c8f124b0331806f72dad054c6dc15006875a2.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `094a30064014772afc689d7314ea56a90716de29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
