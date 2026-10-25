# inadmissibleProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8c6c30572c1060e6e9d9955bbd28747248b23ce3cd2de5963ba895562578058",
  "kind": "def",
  "lexical_name": "inadmissibleProfile",
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
  "slug": "inadmissibleprofile--d8dcd11103c72ed8fbd11086",
  "source": {
    "blob": "0dfaf3785bbf40848ecf515e0cdf28a66c8a8e9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/01Tt11ObservationIndependence/Variantae793617c8369023def75f5a434b0035935b2769279782541ebbe76203a11d13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8dcd11103c72ed8fbd11086ede0909d7fbeebe3d355ba361d6a769c990db047",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/01Tt11ObservationIndependence/Variantae793617c8369023def75f5a434b0035935b2769279782541ebbe76203a11d13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8c6c30572c1060e6e9d9955bbd28747248b23ce3cd2de5963ba895562578058`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inadmissibleProfile : IntervalProfile Unit Unit where
  version := ref "profile"
  sourceTheorem := ref "source-theorem"
  domainVersion := ref "domain"
  lowerVersion := ref "lower"
  upperVersion := ref "upper"
  assumptionSet := ref "assumptions"
  orientation := .Forward
  sourceNotation := "probe"
  domain := fun _ => False
  lower := fun _ => ()
  upper := fun _ => ()
  lowerMode := .Closed
  upperMode := .Closed
  witnessQualifies := fun _ => True
  order := fun _ _ => False

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/01Tt11ObservationIndependence/Variantae793617c8369023def75f5a434b0035935b2769279782541ebbe76203a11d13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/01Tt11ObservationIndependence/Variantae793617c8369023def75f5a434b0035935b2769279782541ebbe76203a11d13.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dfaf3785bbf40848ecf515e0cdf28a66c8a8e9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
