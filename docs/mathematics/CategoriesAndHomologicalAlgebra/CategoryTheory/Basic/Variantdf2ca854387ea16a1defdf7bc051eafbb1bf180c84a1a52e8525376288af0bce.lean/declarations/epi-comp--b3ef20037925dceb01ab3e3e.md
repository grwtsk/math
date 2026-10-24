# epi_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6ce3cea2416d223958dff4d79a63a300c795da44ce5b96e7af47a1774f32748",
  "kind": "instance",
  "lexical_name": "epi_comp",
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
  "slug": "epi-comp--b3ef20037925dceb01ab3e3e",
  "source": {
    "blob": "91810bb25a94b84f40772a93c5ee7adc3be73d42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 357,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf2ca854387ea16a1defdf7bc051eafbb1bf180c84a1a52e8525376288af0bce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3ef20037925dceb01ab3e3eb54f179c26a7153cc9f4ab696fc918d6319d908f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf2ca854387ea16a1defdf7bc051eafbb1bf180c84a1a52e8525376288af0bce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6ce3cea2416d223958dff4d79a63a300c795da44ce5b96e7af47a1774f32748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance epi_comp (f : X ⟶ Y) [Epi f] (g : Y ⟶ Z) [Epi g] : Epi (f ≫ g) :=
  ⟨fun _ _ w => (cancel_epi g).1 <| (cancel_epi_assoc_iff f).1 w⟩

/-- The composition of epimorphisms is again an epimorphism. This version takes `Epi f` and `Epi g`
as explicit arguments. For a version taking them as typeclass arguments, see `epi_comp`. -/
@[to_dual (reorder := hf hg)
/-- The composition of monomorphisms is again a monomorphism. This version takes `Mono f` and
`Mono g` as explicit arguments. For a version taking them as typeclass arguments, see `mono_comp`.
-/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf2ca854387ea16a1defdf7bc051eafbb1bf180c84a1a52e8525376288af0bce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf2ca854387ea16a1defdf7bc051eafbb1bf180c84a1a52e8525376288af0bce.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91810bb25a94b84f40772a93c5ee7adc3be73d42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
