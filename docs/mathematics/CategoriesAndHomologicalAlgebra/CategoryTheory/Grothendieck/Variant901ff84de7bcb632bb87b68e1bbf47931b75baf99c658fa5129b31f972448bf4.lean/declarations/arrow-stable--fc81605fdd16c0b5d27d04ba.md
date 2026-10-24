# arrow_stable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31afd744-a052-2e28-3752-c11410606b12",
  "kind": "theorem",
  "lexical_name": "arrow_stable",
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
  "slug": "arrow-stable--fc81605fdd16c0b5d27d04ba",
  "source": {
    "blob": "5390412736ef2bf447a2cee63a758794af68b1b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant901ff84de7bcb632bb87b68e1bbf47931b75baf99c658fa5129b31f972448bf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc81605fdd16c0b5d27d04bad9fd60a2400742fdf5954c24a0a0dd19a11ce753",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant901ff84de7bcb632bb87b68e1bbf47931b75baf99c658fa5129b31f972448bf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31afd744-a052-2e28-3752-c11410606b12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arrow_stable (f : Y ⟶ X) (S : Sieve X) (h : J.Covers S f) {Z : C} (g : Z ⟶ Y) :
    J.Covers S (g ≫ f) := by
  rw [covers_iff] at h ⊢
  simp [h, Sieve.pullback_comp]

/-- The transitivity axiom in 'arrow' form: If `S` covers `f` and every arrow in `S` is covered by
`R`, then `R` covers `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant901ff84de7bcb632bb87b68e1bbf47931b75baf99c658fa5129b31f972448bf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant901ff84de7bcb632bb87b68e1bbf47931b75baf99c658fa5129b31f972448bf4.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5390412736ef2bf447a2cee63a758794af68b1b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
