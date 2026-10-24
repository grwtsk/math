# forwardHalfKernel_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9275c83-7eaa-0e81-285b-4f031582c38c",
  "kind": "theorem",
  "lexical_name": "forwardHalfKernel_integrable",
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
  "slug": "forwardhalfkernel-integrable--ce79476f37f027eb6680ea87",
  "source": {
    "blob": "331617700fa009d57b853c1cbdff9680ab09feaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Variant5d7b6b0a436b5b345a7fc1abba839393f93926bdd95778da7940eca1c5801958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce79476f37f027eb6680ea874c5cafe4373afa8657121c6a966a09fa26143b40",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Variant5d7b6b0a436b5b345a7fc1abba839393f93926bdd95778da7940eca1c5801958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9275c83-7eaa-0e81-285b-4f031582c38c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardHalfKernel_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (forwardHalfKernel A) (volume.prod volume) :=
  (forwardHalfKernel_continuous hA).integrable_of_hasCompactSupport
    (forwardHalfKernel_hasCompactSupport hA)

/-- Freeze the plus-shift convention using the proved even autocorrelation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Variant5d7b6b0a436b5b345a7fc1abba839393f93926bdd95778da7940eca1c5801958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Variant5d7b6b0a436b5b345a7fc1abba839393f93926bdd95778da7940eca1c5801958.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `331617700fa009d57b853c1cbdff9680ab09feaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
