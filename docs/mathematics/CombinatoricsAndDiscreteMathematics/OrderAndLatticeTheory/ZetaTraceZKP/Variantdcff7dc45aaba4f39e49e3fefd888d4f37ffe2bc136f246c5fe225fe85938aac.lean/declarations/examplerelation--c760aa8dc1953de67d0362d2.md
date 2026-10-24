# exampleRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b7b4a563c326df2918551e75a3897a98ef73a54d1ad51c15b8ba43a2ff2cbe9",
  "kind": "def",
  "lexical_name": "exampleRelation",
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
  "slug": "examplerelation--c760aa8dc1953de67d0362d2",
  "source": {
    "blob": "1bd8bb9f272a0d23a0967feb0d32c5123a59ef2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1179,
    "line": 1165,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variantdcff7dc45aaba4f39e49e3fefd888d4f37ffe2bc136f246c5fe225fe85938aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c760aa8dc1953de67d0362d2ec14ca92e1bdf5b5d5b87aa0a28891899ac1106f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variantdcff7dc45aaba4f39e49e3fefd888d4f37ffe2bc136f246c5fe225fe85938aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b7b4a563c326df2918551e75a3897a98ef73a54d1ad51c15b8ba43a2ff2cbe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1165–1179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleRelation : ZetaTraceZKPRelation where
  statement := examplePublicStatement
  witness := examplePrivateWitness
  publicMatchesWitness := True
  sharedLocusAdmissible :=
    exampleSharedTraceLocus.admissible.errorBelowMargin
  groupReductionOK := trivial
  connesBridgeOK := trivial
  prismaticOK := trivial
  analyticPrimeBridgeOK := ⟨rfl, rfl⟩
  functionalEquationOK := trivial
  ellipticTorsionOK := trivial
  ellipticTorsionNotFromFieldHomology := trivial

/-- The example relation reduces to its certified total-error inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variantdcff7dc45aaba4f39e49e3fefd888d4f37ffe2bc136f246c5fe225fe85938aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variantdcff7dc45aaba4f39e49e3fefd888d4f37ffe2bc136f246c5fe225fe85938aac.lean#L1165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bd8bb9f272a0d23a0967feb0d32c5123a59ef2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
