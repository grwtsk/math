# stepDefectDisk_contains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0357137-18fd-27f3-15e9-046fd4dc071d",
  "kind": "theorem",
  "lexical_name": "stepDefectDisk_contains",
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
  "slug": "stepdefectdisk-contains--25222006350427eabd191b27",
  "source": {
    "blob": "e73efa445284ec1999553322bdab0510b9d8983c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 93,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalGramModelDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25222006350427eabd191b278879236549bce22e5eb0f80a22e8ecdc74cf7e63",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalGramModelDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0357137-18fd-27f3-15e9-046fd4dc071d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stepDefectDisk_contains (gainDisk : τ → ι → Disk) (currentDisk : ι × ι → Disk)
    (nextDisk injectionDisk : τ × τ → Disk)
    (gain : τ → ι → ℂ) (current : ι × ι → ℂ) (next injection : τ × τ → ℂ)
    (gainEnclosure : ∀ i j, Contains (gainDisk i j) (gain i j))
    (currentEnclosure : ∀ p, Contains (currentDisk p) (current p))
    (nextEnclosure : ∀ p, Contains (nextDisk p) (next p))
    (injectionEnclosure : ∀ p, Contains (injectionDisk p) (injection p)) (p : τ × τ) :
    Contains (stepDefectDisk gainDisk currentDisk nextDisk injectionDisk p)
      (next p - complexTransport gain current p - injection p) := by
  exact contains_sub (contains_sub (nextEnclosure p)
    (transportDisk_contains gainDisk currentDisk gain current gainEnclosure currentEnclosure p))
    (injectionEnclosure p)

/-- Actual model-update error is enclosed even when feature counts or coordinates change. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalGramModelDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalGramModelDefect.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e73efa445284ec1999553322bdab0510b9d8983c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
