# ofMkLEMk_comp_ofMkLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e1308517f932515fce704195eee1a6d6775b1bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 395,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c8445119292c15212eff744991446b4202a1a48a3725390f82c7fc392f01f2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:686b390c-d118-041a-573b-921ba6205e92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff75d2ed-f381-efd1-e762-f78ebcdced4c",
  "kind": "theorem",
  "lexical_name": "ofMkLEMk_comp_ofMkLE",
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
  "slug": "ofmklemk-comp-ofmkle--ca3dc7b3ba3de778d92fde40",
  "source": {
    "blob": "5e1308517f932515fce704195eee1a6d6775b1bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 395,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c8445119292c15212eff744991446b4202a1a48a3725390f82c7fc392f01f2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca3dc7b3ba3de778d92fde40b2cf037e38a9420847a422daf6bd0e08e4fd0925",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c8445119292c15212eff744991446b4202a1a48a3725390f82c7fc392f01f2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff75d2ed-f381-efd1-e762-f78ebcdced4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofMkLEMk_comp_ofMkLE {B A₁ A₂ : C} (f : A₁ ⟶ B) [Mono f] (g : A₂ ⟶ B) [Mono g]
    (X : Subobject B) (h₁ : mk f ≤ mk g) (h₂ : mk g ≤ X) :
    ofMkLEMk f g h₁ ≫ ofMkLE g X h₂ = ofMkLE f X (h₁.trans h₂) := by
  simp only [ofMkLE, ofLE, ofMkLEMk, ← Functor.map_comp underlying,
    assoc, Iso.hom_inv_id_assoc]
  congr 1

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c8445119292c15212eff744991446b4202a1a48a3725390f82c7fc392f01f2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c8445119292c15212eff744991446b4202a1a48a3725390f82c7fc392f01f2f.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e1308517f932515fce704195eee1a6d6775b1bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
