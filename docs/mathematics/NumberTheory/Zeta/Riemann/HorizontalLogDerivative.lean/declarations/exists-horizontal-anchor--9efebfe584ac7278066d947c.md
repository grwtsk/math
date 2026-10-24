# exists_horizontal_anchor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9536985d-1bc9-ef5e-8043-194a6f3b2291",
  "kind": "theorem",
  "lexical_name": "exists_horizontal_anchor",
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
  "slug": "exists-horizontal-anchor--9efebfe584ac7278066d947c",
  "source": {
    "blob": "673dcccd858866aa66b420141af02e3fbbf80070",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9efebfe584ac7278066d947c7231eefa97da13a4859654c01cc382480dd45cf3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9536985d-1bc9-ef5e-8043-194a6f3b2291`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_horizontal_anchor (σ : ℝ) (hσ : σ ≤ -1) :
    ∃ k : ℕ, -3 < σ + 2 * (k : ℝ) ∧ σ + 2 * (k : ℝ) ≤ -1 ∧
      (k : ℝ) ≤ (-1 - σ) / 2 := by
  let q : ℝ := (-1 - σ) / 2
  have hq : 0 ≤ q := by dsimp [q]; linarith
  refine ⟨⌊q⌋₊, ?_, ?_, Nat.floor_le hq⟩
  · have hu := Nat.lt_floor_add_one q
    dsimp [q] at hu
    linarith
  · have hl := Nat.floor_le hq
    dsimp [q] at hl
    linarith

/-- Only the fixed strip [-3,2] needs a new height-dependent source estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673dcccd858866aa66b420141af02e3fbbf80070` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
