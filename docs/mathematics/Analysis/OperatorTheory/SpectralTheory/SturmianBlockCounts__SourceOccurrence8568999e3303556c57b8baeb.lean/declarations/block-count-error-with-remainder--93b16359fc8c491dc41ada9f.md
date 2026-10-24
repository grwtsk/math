# block_count_error_with_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5c31412-4db2-4b4a-3a9f-72dfe20b1443",
  "kind": "theorem",
  "lexical_name": "block_count_error_with_remainder",
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
  "slug": "block-count-error-with-remainder--93b16359fc8c491dc41ada9f",
  "source": {
    "blob": "80854f59fdec0fa8d0bd5503b59e8b8055fb48d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 89,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93b16359fc8c491dc41ada9f49fbfdf264027457835016d14643b53192dc23ee",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5c31412-4db2-4b4a-3a9f-72dfe20b1443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem block_count_error_with_remainder (q L r : ℕ) (hL : 0 < L)
    (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |blockCountSum q L α V ξ origin E +
      (sturmianCount r α V ξ (origin + ((q*L : ℕ) : ℤ)) E : ℝ) -
      (sturmianCount (q*L+r) α V ξ origin E : ℝ)| ≤ 2*(q : ℝ) := by
  induction q generalizing origin with
  | zero => simp [blockCountSum]
  | succ q ih =>
    have hv : (q+1)*L+r = L+(q*L+r) := by ring
    have ho : origin + (((q+1)*L : ℕ) : ℤ) =
        origin + (L : ℤ) + ((q*L : ℕ) : ℤ) := by push_cast; ring
    rw [blockCountSum_succ, hv, ho]
    have hcut := adjacent_count_error L (q*L+r) hL α V ξ origin E
    calc
      _ = |(blockCountSum q L α V ξ (origin+(L:ℤ)) E +
          (sturmianCount r α V ξ (origin+(L:ℤ)+((q*L:ℕ):ℤ)) E : ℝ) -
          (sturmianCount (q*L+r) α V ξ (origin+(L:ℤ)) E : ℝ)) +
          ((sturmianCount L α V ξ origin E : ℝ) +
          (sturmianCount (q*L+r) α V ξ (origin+(L:ℤ)) E : ℝ) -
          (sturmianCount (L+(q*L+r)) α V ξ origin E : ℝ))| := by congr 1; ring
      _ ≤ |blockCountSum q L α V ξ (origin+(L:ℤ)) E +
          (sturmianCount r α V ξ (origin+(L:ℤ)+((q*L:ℕ):ℤ)) E : ℝ) -
          (sturmianCount (q*L+r) α V ξ (origin+(L:ℤ)) E : ℝ)| +
          |(sturmianCount L α V ξ origin E : ℝ) +
          (sturmianCount (q*L+r) α V ξ (origin+(L:ℤ)) E : ℝ) -
          (sturmianCount (L+(q*L+r)) α V ξ origin E : ℝ)| := abs_add_le _ _
      _ ≤ 2*(q:ℝ)+2 := add_le_add (ih (origin+(L:ℤ))) hcut
      _ = 2*((q+1:ℕ):ℝ) := by push_cast; ring

/-- For q complete blocks there are only q-1 joining edges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80854f59fdec0fa8d0bd5503b59e8b8055fb48d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
