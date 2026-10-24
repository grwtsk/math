# SourceTreeMedoidPredicate.closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb09bab25068b690a6f10a8445ccd30f1abe7c6233947dadcf1312e051c3336e",
  "kind": "def",
  "lexical_name": "SourceTreeMedoidPredicate.closed",
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
  "slug": "sourcetreemedoidpredicate-closed--1666f2e9d97d295340eae879",
  "source": {
    "blob": "e2317f2089c373f32ce72bc2a9f61fc78f20981f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e/Variant49626d482c591d2a03f954fc469da6cd874a42b22c19c8da8710381f424c5603.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1666f2e9d97d295340eae879d617cad199f36d71dc20956069511b0f951c47fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e/Variant49626d482c591d2a03f954fc469da6cd874a42b22c19c8da8710381f424c5603.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb09bab25068b690a6f10a8445ccd30f1abe7c6233947dadcf1312e051c3336e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SourceTreeMedoidPredicate.closed
    (w : SourceTreeMedoidPredicate) : Prop :=
  w.coverCount = w.medoidCount
    /\ w.missingMedoidCount = 0
    /\ w.duplicateMedoidCount = 0
    /\ w.medoidOwnerConfusionCount = 0
    /\ w.lMedoidCollisionCount = 0
    /\ w.rMedoidInstabilityCount = 0
    /\ w.dominantFaceMedoidPresent = true
    /\ w.refactorLeafMedoidGaugePassed = true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e/Variant49626d482c591d2a03f954fc469da6cd874a42b22c19c8da8710381f424c5603.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e/Variant49626d482c591d2a03f954fc469da6cd874a42b22c19c8da8710381f424c5603.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2317f2089c373f32ce72bc2a9f61fc78f20981f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
