# integerOrbit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56404efe59ed21f351be684f172a7bd8bc7bceb27f4946a4962bdec4177e0a38",
  "kind": "def",
  "lexical_name": "integerOrbit",
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
  "slug": "integerorbit--0825c36e94db18a22dc13e86",
  "source": {
    "blob": "abcc8ac7564f6bdcd9384c5b0d4467c50b1a7939",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0825c36e94db18a22dc13e86a790bac5706cf49cc9fe96fc2c9e43b69a11837a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56404efe59ed21f351be684f172a7bd8bc7bceb27f4946a4962bdec4177e0a38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def integerOrbit (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) : PositiveL2 :=
  dilate (n.val : ℝ) (by exact_mod_cast n.property) (actualComplexL2 A hA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abcc8ac7564f6bdcd9384c5b0d4467c50b1a7939` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
