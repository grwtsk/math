# AdapterSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81b30d302251d46f783518f65296d74e0120d8a037dbfb37075859522682c3a1",
  "kind": "structure",
  "lexical_name": "AdapterSheaf",
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
  "slug": "adaptersheaf--1b556f2b34c2a310861fadbc",
  "source": {
    "blob": "0b8f2a298432a4d7d68370ae194d68ef563cec1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 184,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M56616c69646174696f6e2f41646170746572436f72726573706f6e64656e6365546f706f7341757/Variantf70f046c98457c3e73730c98c9665b39347855c75923001fc64cb431208992f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b556f2b34c2a310861fadbce06f6fcb69027dc8c4fc72b8c60d196c867339ee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M56616c69646174696f6e2f41646170746572436f72726573706f6e64656e6365546f706f7341757/Variantf70f046c98457c3e73730c98c9665b39347855c75923001fc64cb431208992f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81b30d302251d46f783518f65296d74e0120d8a037dbfb37075859522682c3a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AdapterSheaf {D : MarkdownDocument} (site : FiniteDocumentSite D) where
  sectionsOf : DocumentSection → Type
  restrict : ∀ {U V : DocumentSection}, site.refines V U → sectionsOf U → sectionsOf V
  restrict_id : ∀ {U : DocumentSection} (hUU : site.refines U U) (x : sectionsOf U),
    restrict hUU x = x
  restrict_comp : ∀ {U V W : DocumentSection}
    (hVU : site.refines V U) (hWV : site.refines W V) (hWU : site.refines W U)
    (x : sectionsOf U),
      restrict hWV (restrict hVU x) = restrict hWU x
  compatible : ∀ {U : DocumentSection} (cover : DocumentCover site U),
    (∀ V : DocumentSection, V ∈ cover.pieces → sectionsOf V) → Prop
  locality : ∀ {U : DocumentSection} (cover : DocumentCover site U)
    (x y : sectionsOf U),
      (∀ (V : DocumentSection) (hV : V ∈ cover.pieces),
        restrict (cover.pieces_refine_target V hV) x =
          restrict (cover.pieces_refine_target V hV) y) →
      x = y
  gluing : ∀ {U : DocumentSection} (cover : DocumentCover site U)
    (fam : ∀ V : DocumentSection, V ∈ cover.pieces → sectionsOf V),
      compatible cover fam →
        ∃! x : sectionsOf U,
          ∀ (V : DocumentSection) (hV : V ∈ cover.pieces),
            restrict (cover.pieces_refine_target V hV) x = fam V hV

/-- Locality is available for every adapter sheaf. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M56616c69646174696f6e2f41646170746572436f72726573706f6e64656e6365546f706f7341757/Variantf70f046c98457c3e73730c98c9665b39347855c75923001fc64cb431208992f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M56616c69646174696f6e2f41646170746572436f72726573706f6e64656e6365546f706f7341757/Variantf70f046c98457c3e73730c98c9665b39347855c75923001fc64cb431208992f0.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b8f2a298432a4d7d68370ae194d68ef563cec1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
