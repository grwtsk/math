# IsProjectiveMeasureFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a67b2530d4a7503d55bfd0914febd5a5117db8d6e98c13acf0d70d41c1ad2b8b",
  "kind": "def",
  "lexical_name": "IsProjectiveMeasureFamily",
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
  "slug": "isprojectivemeasurefamily--0d024558f72eb510e011b1c0",
  "source": {
    "blob": "a58ad567c1eb848f86ebd08b0efa5d58ed07d59f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 53,
    "path": "GRWTSK/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d024558f72eb510e011b1c056c92cef687add63079ca41064a1c18ba62fbd6e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a67b2530d4a7503d55bfd0914febd5a5117db8d6e98c13acf0d70d41c1ad2b8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsProjectiveMeasureFamily (P : ∀ J : Finset ι, Measure (∀ j : J, α j)) : Prop :=
  ∀ (I J : Finset ι) (hJI : J ⊆ I),
    P J = (P I).map (Finset.restrict₂ hJI)

namespace IsProjectiveMeasureFamily

variable {I J : Finset ι}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a58ad567c1eb848f86ebd08b0efa5d58ed07d59f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
