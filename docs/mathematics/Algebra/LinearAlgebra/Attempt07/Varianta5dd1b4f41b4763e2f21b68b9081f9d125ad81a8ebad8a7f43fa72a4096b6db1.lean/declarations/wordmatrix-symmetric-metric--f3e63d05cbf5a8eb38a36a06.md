# wordMatrix_symmetric_metric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b35f30d7-d8b3-45d1-9265-39ca8b3b42ed",
  "kind": "theorem",
  "lexical_name": "wordMatrix_symmetric_metric",
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
  "slug": "wordmatrix-symmetric-metric--f3e63d05cbf5a8eb38a36a06",
  "source": {
    "blob": "20d6b3813eb20e962e6cce92dac2652c6ac15472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3e63d05cbf5a8eb38a36a065e7031e4e536dedf4dd90ec51b5b73dc6c1ca5d6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b35f30d7-d8b3-45d1-9265-39ca8b3b42ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wordMatrix_symmetric_metric {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (hsymm : ∀ i j, A i j = A j i)
    (w : List (Fin n)) :
    (wordMatrix A w)ᵀ * cartanMatrix A * wordMatrix A w = cartanMatrix A := by
  have hbalance : ∀ i j, (1 : ℤ) * A i j = 1 * A j i := by
    simpa only [one_mul] using hsymm
  simpa using wordMatrix_weighted_metric A hzero (fun _ => 1) hbalance w

/-- Disconnected vertices commute; both incoming edge multiplicities must vanish. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20d6b3813eb20e962e6cce92dac2652c6ac15472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
