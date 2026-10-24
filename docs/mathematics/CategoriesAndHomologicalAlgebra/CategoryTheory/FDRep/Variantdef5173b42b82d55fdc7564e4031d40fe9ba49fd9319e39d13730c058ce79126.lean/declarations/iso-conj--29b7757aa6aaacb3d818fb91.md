# Iso.conj_ρ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f6ef4fe94932e4533999ea3500faea8c3ea8a6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/def5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e022ae74-b1e3-52b6-444a-70759b17b0a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74517072-56b4-cd0f-db92-0938fa8c6bc7",
  "kind": "theorem",
  "lexical_name": "Iso.conj_ρ",
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
  "slug": "iso-conj--29b7757aa6aaacb3d818fb91",
  "source": {
    "blob": "8f6ef4fe94932e4533999ea3500faea8c3ea8a6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FdRep/Variantdef5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29b7757aa6aaacb3d818fb917e58f1e2b9f170e797830aee3452f1d7881d5bf2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantdef5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74517072-56b4-cd0f-db92-0938fa8c6bc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iso.conj_ρ {V W : FdRep k G} (i : V ≅ W) (g : G) :
    W.ρ g = (FdRep.isoToLinearEquiv i).conj (V.ρ g) := by
  -- Porting note: Changed `rw` to `erw`
  erw [FdRep.isoToLinearEquiv, ← FGModuleCat.Iso.conj_eq_conj, Iso.conj_apply]
  rw [Iso.eq_inv_comp ((Action.forget (FGModuleCat k) (MonCat.of G)).mapIso i)]
  exact (i.hom.comm g).symm
#align fdRep.iso.conj_ρ FdRep.Iso.conj_ρ

/-- Lift an unbundled representation to `FdRep`. -/
@[simps ρ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantdef5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FdRep/Variantdef5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f6ef4fe94932e4533999ea3500faea8c3ea8a6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
