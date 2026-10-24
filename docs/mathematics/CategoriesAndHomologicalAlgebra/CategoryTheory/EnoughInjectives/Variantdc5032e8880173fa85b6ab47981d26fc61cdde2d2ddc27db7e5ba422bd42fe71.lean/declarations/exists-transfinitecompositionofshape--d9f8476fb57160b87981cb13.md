# exists_transfiniteCompositionOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:346d63f6-cf36-196b-d662-622e5967687f",
  "kind": "lemma",
  "lexical_name": "exists_transfiniteCompositionOfShape",
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
  "slug": "exists-transfinitecompositionofshape--d9f8476fb57160b87981cb13",
  "source": {
    "blob": "7609ab9a835f25876c9d87c7209dfcde032efe09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 293,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9f8476fb57160b87981cb13d05e6ede3148cb7fae158712dc0d8676ffdcd36b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:346d63f6-cf36-196b-d662-622e5967687f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_transfiniteCompositionOfShape :
    ∃ (J : Type w) (_ : LinearOrder J) (_ : OrderBot J) (_ : SuccOrder J)
        (_ : WellFoundedLT J),
    Nonempty ((generatingMonomorphisms G).pushouts.TransfiniteCompositionOfShape J f) := by
  obtain ⟨o, j, hj⟩ := exists_ordinal hG (Subobject.mk f)
  letI : OrderBot o.toType := Ordinal.toTypeOrderBot (by
    simpa only [← Ordinal.toType_nonempty_iff_ne_zero] using Nonempty.intro j)
  exact ⟨_, _, _, _, _, ⟨transfiniteCompositionOfShapeOfEqTop hG hj⟩⟩

end generatingMonomorphisms

open MorphismProperty

variable {G}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7609ab9a835f25876c9d87c7209dfcde032efe09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
