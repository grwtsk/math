# isColimit_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffc2f6cf-b10e-d67a-97cb-cc82a3f4e5dd",
  "kind": "theorem",
  "lexical_name": "isColimit_eq_iff",
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
  "slug": "iscolimit-eq-iff--841ab7df7e7fc5043baa8985",
  "source": {
    "blob": "ac794b619300ac597451f90c29f639a0857e2294",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:841ab7df7e7fc5043baa898505571b14d8d53b0bb665d724270bbfcf5fcafd22",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffc2f6cf-b10e-d67a-97cb-cc82a3f4e5dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isColimit_eq_iff {t : Cocone F} (ht : IsColimit t) {i j : J} {xi : F.obj i} {xj : F.obj j} :
    t.ι.app i xi = t.ι.app j xj ↔ ∃ (k : _) (f : i ⟶ k) (g : j ⟶ k), F.map f xi = F.map g xj := by
  have : HasColimit F := ⟨_, ht⟩
  refine Iff.trans ?_ (colimit_eq_iff_aux F)
  rw [← (IsColimit.coconePointUniqueUpToIso ht (colimitCoconeIsColimit F)).toEquiv.injective.eq_iff]
  convert! Iff.rfl
  · exact (congr_hom
      (IsColimit.comp_coconePointUniqueUpToIso_hom ht (colimitCoconeIsColimit F) _) xi).symm
  · exact (congr_hom
      (IsColimit.comp_coconePointUniqueUpToIso_hom ht (colimitCoconeIsColimit F) _) xj).symm

variable {F} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac794b619300ac597451f90c29f639a0857e2294` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
