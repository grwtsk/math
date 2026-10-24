# outerDisk_contains_unique_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4607f2f0-79e5-9da1-a23d-e9d399ab380e",
  "kind": "theorem",
  "lexical_name": "outerDisk_contains_unique_zero",
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
  "slug": "outerdisk-contains-unique-zero--f08cc3024c13bf92d9295987",
  "source": {
    "blob": "790a7421e0fc16ed9363e00ec1e1f11c0ef67799",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variantdc04ecc31d1e608aeafc45d3ecffca48ce475a7db90914abe6ecb87d6239c4e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f08cc3024c13bf92d92959876cca60faa374c4281a37b3beb485610c6742097a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Envelope/Variantdc04ecc31d1e608aeafc45d3ecffca48ce475a7db90914abe6ecb87d6239c4e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4607f2f0-79e5-9da1-a23d-e9d399ab380e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem outerDisk_contains_unique_zero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (unique :
      UniqueZeroCertificate authority cell)
    {carrier : Set ℂ}
    (cellInside :
      cell.interior ⊆ carrier)
    (disk : CertifiedOuterDisk carrier) :
    dist unique.zero disk.center ≤ disk.radius :=
  disk.contains unique.zero
    (cellInside unique.zero_mem)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Envelope/Variantdc04ecc31d1e608aeafc45d3ecffca48ce475a7db90914abe6ecb87d6239c4e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variantdc04ecc31d1e608aeafc45d3ecffca48ce475a7db90914abe6ecb87d6239c4e3.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `790a7421e0fc16ed9363e00ec1e1f11c0ef67799` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
