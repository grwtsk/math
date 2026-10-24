# stepDisk_contains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33203ad5-6a0a-c44e-0ce9-2902c760a8ed",
  "kind": "theorem",
  "lexical_name": "stepDisk_contains",
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
  "slug": "stepdisk-contains--461242f7076b622a15d7aabd",
  "source": {
    "blob": "df6a65cf33ed8586d20420d185ddd9df5afd79d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 140,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalWindowEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:461242f7076b622a15d7aabd52e3fe22d50406c8396997d50f87b698d7313239",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalWindowEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33203ad5-6a0a-c44e-0ce9-2902c760a8ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stepDisk_contains (gainDisk : τ → ι → Disk)
    (residualDisk : ι × ι → Disk) (nextResidualDisk : τ × τ → Disk)
    (testDisk : ι → Disk) (nextTestDisk : τ → Disk)
    (gain : τ → ι → ℂ) (residual : ι × ι → ℂ) (nextResidual : τ × τ → ℂ)
    (test : ι → ℂ) (nextTest : τ → ℂ)
    (gainEnclosure : ∀ i j, Contains (gainDisk i j) (gain i j))
    (residualEnclosure : ∀ p, Contains (residualDisk p) (residual p))
    (nextResidualEnclosure : ∀ p, Contains (nextResidualDisk p) (nextResidual p))
    (testEnclosure : ∀ i, Contains (testDisk i) (test i))
    (nextTestEnclosure : ∀ i, Contains (nextTestDisk i) (nextTest i)) :
    Contains (stepDisk gainDisk residualDisk nextResidualDisk testDisk nextTestDisk)
      (complexReadout nextTest (netResidual gain residual nextResidual) +
        readoutCorrection test (pullbackDefect gain nextTest test) residual) :=
  contains_add
    (readoutDisk_contains nextTestDisk (netResidualDisk gainDisk residualDisk nextResidualDisk)
      nextTest (netResidual gain residual nextResidual) nextTestEnclosure
      (netResidualDisk_contains gainDisk residualDisk nextResidualDisk gain residual nextResidual
        gainEnclosure residualEnclosure nextResidualEnclosure))
    (correctionDisk_contains testDisk (pullbackDisk gainDisk nextTestDisk testDisk) residualDisk
      test (pullbackDefect gain nextTest test) residual testEnclosure
      (pullbackDisk_contains gainDisk nextTestDisk testDisk gain nextTest test
        gainEnclosure nextTestEnclosure testEnclosure) residualEnclosure)

/-- No assumptions on unused terms beyond k are consumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalWindowEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalWindowEnclosure.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df6a65cf33ed8586d20420d185ddd9df5afd79d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
