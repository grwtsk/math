# endpointDisk_contains_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24950eb2-e4ce-0124-50df-c38fe54c4fcd",
  "kind": "theorem",
  "lexical_name": "endpointDisk_contains_window",
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
  "slug": "endpointdisk-contains-window--5fc7cd2f37a7d3b28b831745",
  "source": {
    "blob": "81a9cc507e91e2991d7b34477476fcbbd77ce263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fc7cd2f37a7d3b28b8317454826417d5ba1eba5d1a30a997700f69b56e18b23",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24950eb2-e4ce-0124-50df-c38fe54c4fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointDisk_contains_window {I : ℕ → Type*} [∀ n, Fintype (I n)]
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (residual : ∀ n, I n × I n → ℂ) (test : ∀ n, I n → ℂ) (tail : ℝ) (k : ℕ)
    (testDisk : I k → Disk) (residualDisk : I k × I k → Disk) (tailDisk : Disk)
    (testEnclosure : ∀ i, Contains (testDisk i) (test k i))
    (residualEnclosure : ∀ p, Contains (residualDisk p) (residual k p))
    (tailEnclosure : Contains tailDisk (tail : ℂ)) :
    Contains (endpointDisk testDisk residualDisk tailDisk) (windowValue gain residual test tail k) := by
  rw [windowValue_eq_terminal]
  exact endpointDisk_contains testDisk residualDisk tailDisk (test k) (residual k) tail
    testEnclosure residualEnclosure tailEnclosure

/-- Exact terminal relation to the independent real source; source positivity is not assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81a9cc507e91e2991d7b34477476fcbbd77ce263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
