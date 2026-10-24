# norm_goldbachCenteredProgressionCircleResidual_le_of_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3759151c-0dcc-5e55-4008-7f5570ab045f",
  "kind": "theorem",
  "lexical_name": "norm_goldbachCenteredProgressionCircleResidual_le_of_residue",
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
  "slug": "norm-goldbachcenteredprogressioncircleresidual-le-of-residue--d63a9b875c79ae00de6babba",
  "source": {
    "blob": "0aadd1999fa478e25c0f2fa4d6366d8b8706cc15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 228,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d63a9b875c79ae00de6babbaba93667ce3e6695ee95f23462af6e101483d94ac",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3759151c-0dcc-5e55-4008-7f5570ab045f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_goldbachCenteredProgressionCircleResidual_le_of_residue
    {N a q : ℕ} (hq : 0 < q) {β : ℝ}
    {residueError : ℕ → ℝ}
    (herror : ∀ r ∈ Finset.range q,
      ‖goldbachResidueProgressionDiscrepancy N q r β‖ ≤
        residueError r) :
    ‖goldbachCenteredProgressionCircleResidual N a q β‖ ≤
      (∑ r ∈ Finset.range q, residueError r) *
        (goldbachPrimeLogTotal N + (N + 1 : ℝ)) := by
  have hdisc :=
    norm_goldbachProgressionExponentialDiscrepancy_le
      (N := N) (a := a) (q := q) (β := β)
      (residueError := residueError) herror
  have hexact :=
    norm_goldbachResidueClassExponentialKernel_le
      (N := N) (a := a) (q := q) hq β
  have hmodel :=
    norm_goldbachProgressionExponentialModel_le
      (N := N) (a := a) (q := q) hq β
  have hsum_nonneg :
      0 ≤ ∑ r ∈ Finset.range q, residueError r :=
    (norm_nonneg
      (goldbachProgressionExponentialDiscrepancy
        N a q β)).trans hdisc
  exact
    (norm_goldbachCenteredProgressionCircleResidual_le
      N a q β).trans
      (mul_le_mul hdisc (add_le_add hexact hmodel)
        (add_nonneg (norm_nonneg _) (norm_nonneg _)) hsum_nonneg)

/-- One raw three-lift rational arc has measure at most six times its declared
radius. Overlap can only decrease the measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aadd1999fa478e25c0f2fa4d6366d8b8706cc15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
