# pfInfinity_iff_blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2306a36d-1ce0-35a2-f97a-ab6139adbe71",
  "kind": "theorem",
  "lexical_name": "pfInfinity_iff_blocks",
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
  "slug": "pfinfinity-iff-blocks--c749b22e2c149c97763aec9e",
  "source": {
    "blob": "c921b0d971f4cd283baa0cc739de180e4faf6424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/Toeplitz/Varianta3fa508dd11e9ce6e00b1d722c926f4e09fc38fb5cbb5d0f1f3c86c5ddd894fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c749b22e2c149c97763aec9e421fb5df963af3cf93230a6d6b04ea97a8a6fa0d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Toeplitz/Varianta3fa508dd11e9ce6e00b1d722c926f4e09fc38fb5cbb5d0f1f3c86c5ddd894fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2306a36d-1ce0-35a2-f97a-ab6139adbe71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pfInfinity_iff_blocks (a : ℕ → ℝ) :
    PFInfinity a ↔ ∀ N, FiniteNonnegative (block a N) := by
  constructor
  · intro h N k r c
    let rn : Fin k ↪o ℕ := OrderEmbedding.ofStrictMono
      (fun i => (r i).val) (fun _ _ hij => r.strictMono hij)
    let cn : Fin k ↪o ℕ := OrderEmbedding.ofStrictMono
      (fun i => (c i).val) (fun _ _ hij => c.strictMono hij)
    exact h k rn cn
  · intro h k r c
    let N := (∑ i, r i) + (∑ i, c i) + 1
    have hr : ∀ i, r i < N := by
      intro i
      have hi : r i ≤ ∑ j, r j :=
        Finset.single_le_sum (fun j _ => Nat.zero_le (r j)) (Finset.mem_univ i)
      dsimp [N]
      omega
    have hc : ∀ i, c i < N := by
      intro i
      have hi : c i ≤ ∑ j, c j :=
        Finset.single_le_sum (fun j _ => Nat.zero_le (c j)) (Finset.mem_univ i)
      dsimp [N]
      omega
    let rf : Fin k ↪o Fin N := OrderEmbedding.ofStrictMono
      (fun i => ⟨r i, hr i⟩) (fun _ _ hij => r.strictMono hij)
    let cf : Fin k ↪o Fin N := OrderEmbedding.ofStrictMono
      (fun i => ⟨c i, hc i⟩) (fun _ _ hij => c.strictMono hij)
    exact h N k rf cf

/-- Coefficient rescaling induced by substituting `q*w` in a generating function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Toeplitz/Varianta3fa508dd11e9ce6e00b1d722c926f4e09fc38fb5cbb5d0f1f3c86c5ddd894fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Toeplitz/Varianta3fa508dd11e9ce6e00b1d722c926f4e09fc38fb5cbb5d0f1f3c86c5ddd894fe.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c921b0d971f4cd283baa0cc739de180e4faf6424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
