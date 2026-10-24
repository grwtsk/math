# centeredSignedValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f1c5999b18d24e69302d4ed3b0d4694e1edab755aa33aab509ad295a89317f9",
  "kind": "def",
  "lexical_name": "centeredSignedValue",
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
  "slug": "centeredsignedvalue--d57cc3f925eea72690bc6bcb",
  "source": {
    "blob": "2d0a97a5ce5c959ce2be9f99a35622594f2cdafd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 261,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d57cc3f925eea72690bc6bcb9c509ebcec47288d71d734386d2513aaa5a0d55a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f1c5999b18d24e69302d4ed3b0d4694e1edab755aa33aab509ad295a89317f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def centeredSignedValue (r : DilationRealization) (A : Set.Ici (1 : ℝ)) : ℝ :=
  (∫ t in lowerEndpoint..2 * A,
    (evenPart lowerEndpoint (2 * A) errorProfile t + 2) * evenWeight r A t) +
  (∫ t in lowerEndpoint..2 * A,
    oddPart lowerEndpoint (2 * A) errorProfile t * oddWeight r A t) -
  primeTwoBoundary r.secondDerivative A / 2

/-- The reduction preserves the original signed arithmetic quantity exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d0a97a5ce5c959ce2be9f99a35622594f2cdafd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
