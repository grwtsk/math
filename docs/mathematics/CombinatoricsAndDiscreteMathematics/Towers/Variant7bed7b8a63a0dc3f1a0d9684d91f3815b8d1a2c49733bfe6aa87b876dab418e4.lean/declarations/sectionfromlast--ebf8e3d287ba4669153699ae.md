# sectionFromLast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4def5884eef9bd00ece64bf44a680ecf3176deaaeb272d00987c667c7b031b84",
  "kind": "def",
  "lexical_name": "sectionFromLast",
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
  "slug": "sectionfromlast--ebf8e3d287ba4669153699ae",
  "source": {
    "blob": "3fcd1c0d9271a978685afc886c9671ba168cac0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebf8e3d287ba4669153699aeb399c96e70515fe54e6568ce619f78b5325df037",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4def5884eef9bd00ece64bf44a680ecf3176deaaeb272d00987c667c7b031b84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sectionFromLast {N : ℕ} (T : FiniteInverseSystem N) (x : T.Stage (Fin.last N))
    (i : Fin (N + 1)) : T.Stage i :=
  T.restrict i (Fin.last N) (Fin.le_last i) x

/-- The section from the last stage is compatible because the maps actually compose. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fcd1c0d9271a978685afc886c9671ba168cac0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
