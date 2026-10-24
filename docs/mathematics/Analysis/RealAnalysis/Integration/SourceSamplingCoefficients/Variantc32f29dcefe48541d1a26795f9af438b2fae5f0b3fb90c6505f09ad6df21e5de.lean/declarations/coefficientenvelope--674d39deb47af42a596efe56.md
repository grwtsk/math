# coefficientEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24ec20a596594c25e66a7fcf9aa4c7c8b7288b09cf98fdd7c47e81929c4bc6cf",
  "kind": "def",
  "lexical_name": "coefficientEnvelope",
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
  "slug": "coefficientenvelope--674d39deb47af42a596efe56",
  "source": {
    "blob": "8f8717f97ebc4e425b2439522f89d9b4813585c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:674d39deb47af42a596efe561d7230babcc782512fc1232c728ea907b54bfd26",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24ec20a596594c25e66a7fcf9aa4c7c8b7288b09cf98fdd7c47e81929c4bc6cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficientEnvelope (j : ℕ) (u : ℝ) : ℝ :=
  min u 1 * u ^ (-(3 : ℝ) / 2) * |Real.log u| ^ j

/-- The logarithmic change of variables turns the envelope into an even exponential. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f8717f97ebc4e425b2439522f89d9b4813585c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
