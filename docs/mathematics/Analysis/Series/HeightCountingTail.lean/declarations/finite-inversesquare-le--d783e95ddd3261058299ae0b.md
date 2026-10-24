# finite_inverseSquare_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b969d49e-33e1-7529-1dec-dde071f70d0e",
  "kind": "theorem",
  "lexical_name": "finite_inverseSquare_le",
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
  "slug": "finite-inversesquare-le--d783e95ddd3261058299ae0b",
  "source": {
    "blob": "1b467d7c96dca5e8412e6e823f898f3734c5d710",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 247,
    "path": "GRWTSK/Analysis/Series/HeightCountingTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d783e95ddd3261058299ae0bd742ae1ce695554fb9e428b305e9b98f4425e0c7",
  "verification": {
    "reference": "docs/verification/Analysis/Series/HeightCountingTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b969d49e-33e1-7529-1dec-dde071f70d0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_inverseSquare_le (S : Finset ι) (height weight : ι → ℝ)
    (T : ℝ) (hT : 1 ≤ T) (hlower : ∀ i ∈ S, T < height i)
    (hcount : ∀ t, T ≤ t → finiteCountingMass S height weight t ≤ t * Real.log t) :
    (∑ i ∈ S, weight i / height i ^ 2) ≤ inverseSquareBudget T := by
  classical
  obtain ⟨R, hTR, hupper⟩ := finite_height_upper S height T
  have h := finite_inverseSquare_le_with_boundary S height weight T R hT hTR
    hlower hupper (fun t ht => hcount t ht.1)
  have hR1 : 1 ≤ R := hT.trans hTR
  have hnonneg : 0 ≤ (Real.log R + 2) / R :=
    div_nonneg (by have := Real.log_nonneg hR1; linarith)
      (zero_le_one.trans hR1)
  exact h.trans (sub_le_self _ hnonneg)

/-- Uniform finite counting bounds derive summability; no tsum convention is
used to stand in for convergence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Series/HeightCountingTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Series/HeightCountingTail.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b467d7c96dca5e8412e6e823f898f3734c5d710` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
