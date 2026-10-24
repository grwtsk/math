# kakeya_tube_sheaf_centered_at_mu

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcb6ecd3-dd59-bc77-dc5d-791b7f69e69d",
  "kind": "theorem",
  "lexical_name": "kakeya_tube_sheaf_centered_at_mu",
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
  "slug": "kakeya-tube-sheaf-centered-at-mu--2f0337c645c1a9291fd4639f",
  "source": {
    "blob": "6bf4a9cfb370dd62333a94648a012418a97828d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 328,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LocalLoopStability/Variantb53404b61a881c34272a912c0f2abb6f0147e7694857f25ad3c1e719b8567e9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f0337c645c1a9291fd4639fed306530c8d008f6280012ca1f136b5592829758",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LocalLoopStability/Variantb53404b61a881c34272a912c0f2abb6f0147e7694857f25ad3c1e719b8567e9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcb6ecd3-dd59-bc77-dc5d-791b7f69e69d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kakeya_tube_sheaf_centered_at_mu :
    (kakeyaTubeSheafWitnessAt radoProjectedHeatflowMemorySurface).center =
        selectKakeyaMedoid radoProjectedHeatflowMemorySurface ∧
      (kakeyaTubeSheafWitnessAt radoProjectedHeatflowMemorySurface).finiteTubeWitness =
        true ∧
      (kakeyaTubeSheafWitnessAt radoProjectedHeatflowMemorySurface).finiteSheafWitness =
        true ∧
      (kakeyaTubeSheafWitnessAt radoProjectedHeatflowMemorySurface).kakeyaTheoremClaim =
        false := by
  native_decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LocalLoopStability/Variantb53404b61a881c34272a912c0f2abb6f0147e7694857f25ad3c1e719b8567e9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LocalLoopStability/Variantb53404b61a881c34272a912c0f2abb6f0147e7694857f25ad3c1e719b8567e9b.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bf4a9cfb370dd62333a94648a012418a97828d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
