# bandedRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd5cc0ba2c7825e44c62f01ad37a035c22715ba1bcce1778d1ae33f8ca69a224",
  "kind": "def",
  "lexical_name": "bandedRoots",
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
  "slug": "bandedroots--f74039d5b671f5fa0edb6ba3",
  "source": {
    "blob": "b822095705295cce30d8c4050774726ee9f9e135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Root/Variantb8035ce58108a24d1b694258efd4191bdb274618f8b5fbdc745317724337cabd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f74039d5b671f5fa0edb6ba3bf20f2e82ee545e42a47b7481c11eec4cbf27b91",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Root/Variantb8035ce58108a24d1b694258efd4191bdb274618f8b5fbdc745317724337cabd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd5cc0ba2c7825e44c62f01ad37a035c22715ba1bcce1778d1ae33f8ca69a224`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bandedRoots : List Formal.ConceptualBoundary :=
  [ Formal.ConceptualBoundary.marker .surface "Formal.Algorithm"
  , Formal.ConceptualBoundary.marker .checked "Formal.Checked"
  , Formal.ConceptualBoundary.marker .checked "Formal.Kernel"
  , Formal.ConceptualBoundary.marker .surface "Formal.Surface"
  , Formal.ConceptualBoundary.marker .surface "Formal.Conceptual"
  , Formal.ConceptualBoundary.marker .surface "Formal.Band"
  , Formal.ConceptualBoundary.marker .blueprint "Formal.Blueprint"
  , Formal.ConceptualBoundary.marker .patch "Formal.Patches.Mathlib"
  , Formal.ConceptualBoundary.marker .external "Formal.External"
  , Formal.ConceptualBoundary.marker .archive "Formal.Archive"
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Root/Variantb8035ce58108a24d1b694258efd4191bdb274618f8b5fbdc745317724337cabd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Root/Variantb8035ce58108a24d1b694258efd4191bdb274618f8b5fbdc745317724337cabd.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b822095705295cce30d8c4050774726ee9f9e135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
