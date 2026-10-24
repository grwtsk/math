# isIntegral_character

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4548bcc5-b10d-d9e0-1634-81b0262aea41",
  "kind": "theorem",
  "lexical_name": "isIntegral_character",
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
  "slug": "isintegral-character--bef3f1b74b8263a2eb9b27a0",
  "source": {
    "blob": "50df4080b1f98bc6fa3308787dab1228e79a32ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 109,
    "path": "GRWTSK/Algebra/LinearAlgebra/Character/Variant44646722003e4534e796de650d3fd5bc1559d358a82a43cc6c024083f81fa27c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bef3f1b74b8263a2eb9b27a0521d37a78fb772b405f8c2d19baedd723feb5dde",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Character/Variant44646722003e4534e796de650d3fd5bc1559d358a82a43cc6c024083f81fa27c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4548bcc5-b10d-d9e0-1634-81b0262aea41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_character [Finite G] (g : G) : IsIntegral ℤ (ρ.character g) := by
  rw [← isIntegral_algebraMap_iff (B := AlgebraicClosure k), character, ← trace_baseChange,
    End.trace_eq_sum_roots_charpoly_of_splits (IsAlgClosed.splits _)]
  refine IsIntegral.multiset_sum fun x hx ↦ ?_
  obtain ⟨v, hv⟩ := End.hasEigenvalue_iff_isRoot_charpoly .. |>.2
    (Polynomial.isRoot_of_mem_roots hx) |>.exists_hasEigenvector
  have hxn : x ^ orderOf g = 1 := smul_left_injective (R := AlgebraicClosure k) hv.2 <| by
    simp [← hv.pow_apply, ← baseChange_pow, ← map_pow]
  exact IsIntegral.of_pow (orderOf_pos g) (hxn ▸ isIntegral_one)

variable [Fintype G] [Invertible (Nat.card G : k)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Character/Variant44646722003e4534e796de650d3fd5bc1559d358a82a43cc6c024083f81fa27c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Character/Variant44646722003e4534e796de650d3fd5bc1559d358a82a43cc6c024083f81fa27c.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50df4080b1f98bc6fa3308787dab1228e79a32ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
