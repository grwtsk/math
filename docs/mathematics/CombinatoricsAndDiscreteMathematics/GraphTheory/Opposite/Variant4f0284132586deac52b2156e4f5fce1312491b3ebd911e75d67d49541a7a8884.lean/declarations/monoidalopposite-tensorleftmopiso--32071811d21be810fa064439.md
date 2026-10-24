# MonoidalOpposite.tensorLeftMopIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c75a4a6f1db8f7a4857f16d1195fc92426348336c098ebf0436a27df714d399f",
  "kind": "def",
  "lexical_name": "MonoidalOpposite.tensorLeftMopIso",
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
  "slug": "monoidalopposite-tensorleftmopiso--32071811d21be810fa064439",
  "source": {
    "blob": "8bebad6c206db5f0109f5e3e7986a1626d429f1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 347,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variant4f0284132586deac52b2156e4f5fce1312491b3ebd911e75d67d49541a7a8884.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32071811d21be810fa06443914014892653e323944c566b676226169957ce4c8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variant4f0284132586deac52b2156e4f5fce1312491b3ebd911e75d67d49541a7a8884.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c75a4a6f1db8f7a4857f16d1195fc92426348336c098ebf0436a27df714d399f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MonoidalOpposite.tensorLeftMopIso (X : C) :
    tensorLeft (mop X) ≅ unmopFunctor C ⋙ tensorRight X ⋙ mopFunctor C :=
  Iso.refl _

/-- The identification `unmop X ⊗ - = unmop (mop - ⊗ X)` as a natural isomorphism. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variant4f0284132586deac52b2156e4f5fce1312491b3ebd911e75d67d49541a7a8884.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variant4f0284132586deac52b2156e4f5fce1312491b3ebd911e75d67d49541a7a8884.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bebad6c206db5f0109f5e3e7986a1626d429f1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
