# bijective_of_isLocalization_of_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33d22223-df6e-5d65-bf09-e40c7f8ed0f8",
  "kind": "lemma",
  "lexical_name": "bijective_of_isLocalization_of_span_eq_top",
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
  "slug": "bijective-of-islocalization-of-span-eq-top--cdb7ebe501a3b1487fa44920",
  "source": {
    "blob": "02220448300b9c04ac88efa715e491a2e5416a94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 332,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exactness/Variantdedd97822c0713721d02ad356458408dc50f4f622c3774dc70b4b3a46946c9d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdb7ebe501a3b1487fa44920520f8028f2d5f48bbc42d4e25cb429a278185022",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exactness/Variantdedd97822c0713721d02ad356458408dc50f4f622c3774dc70b4b3a46946c9d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33d22223-df6e-5d65-bf09-e40c7f8ed0f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bijective_of_isLocalization_of_span_eq_top
    (h : ∀ r : s, Function.Bijective (IsLocalization.Away.map (Rᵣ r) (Sᵣ r) f r.1)) :
    Function.Bijective f :=
  ⟨injective_of_isLocalization_of_span_eq_top hs _ _ _ (fun r ↦ (h r).1),
    surjective_of_isLocalization_of_span_eq_top hs _ _ _ (fun r ↦ (h r).2)⟩

end IsLocalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exactness/Variantdedd97822c0713721d02ad356458408dc50f4f622c3774dc70b4b3a46946c9d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exactness/Variantdedd97822c0713721d02ad356458408dc50f4f622c3774dc70b4b3a46946c9d8.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02220448300b9c04ac88efa715e491a2e5416a94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
