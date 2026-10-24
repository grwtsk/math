# coreLongDepthEndpointCorrectionL1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36fbb004a46133822d37c6ddc121865fd22630be43e10097e8d9c34d80d88834",
  "kind": "def",
  "lexical_name": "coreLongDepthEndpointCorrectionL1",
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
  "slug": "corelongdepthendpointcorrectionl1--59e04fdaa830f59822a4efbe",
  "source": {
    "blob": "5d0d72a373b496c47c1725f47a4d7e44bc0c6c89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 92,
    "path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59e04fdaa830f59822a4efbe6f100221dc0cd33827c2626694836f22efd497eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36fbb004a46133822d37c6ddc121865fd22630be43e10097e8d9c34d80d88834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coreLongDepthEndpointCorrectionL1
    (j t : ℕ) : ℝ :=
  2 * (
    (if harmonicShiftCount j t = 0 then 0 else
      ambientEndpointStartCorrection j (harmonicShiftCount j t) *
        harmonicShiftFirstDifference j t (harmonicShiftCount j t - 1)) +
    ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
        (fun k => logarithmicShiftThreshold j ≤ k + 1),
      ambientEndpointStartCorrection j (k + 1) *
        harmonicShiftSecondDifference j t k)

/-- Exact one-depth split into theorem-compatible blocks, low-scale blocks,
and the explicit two-start endpoint correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0d72a373b496c47c1725f47a4d7e44bc0c6c89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
