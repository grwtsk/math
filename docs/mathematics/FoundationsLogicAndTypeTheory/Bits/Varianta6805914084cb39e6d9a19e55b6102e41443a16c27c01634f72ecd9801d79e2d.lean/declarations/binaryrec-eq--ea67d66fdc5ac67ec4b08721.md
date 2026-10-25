# binaryRec_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41c47ad3-474e-52de-690c-033da1c0e52c",
  "kind": "theorem",
  "lexical_name": "binaryRec_eq'",
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
  "slug": "binaryrec-eq--ea67d66fdc5ac67ec4b08721",
  "source": {
    "blob": "35c12bd1a77d162124ea8d50d799a6cdd9c73002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea67d66fdc5ac67ec4b0872128a928d78c3b1a3fee29ce02e0285f5fcf1dd7bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41c47ad3-474e-52de-690c-033da1c0e52c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binaryRec_eq' {C : ℕ → Sort*} {z : C 0} {f : ∀ b n, C n → C (bit b n)} (b n)
    (h : f false 0 z = z ∨ (n = 0 → b = true)) :
    binaryRec z f (bit b n) = f b n (binaryRec z f n) := by
  rw [binaryRec]
  split_ifs with h'
  · rcases bit_eq_zero_iff.mp h' with ⟨rfl, rfl⟩
    rw [binaryRec_zero]
    simp only [imp_false, or_false_iff, eq_self_iff_true, not_true] at h
    exact h.symm
  · dsimp only []
    -- Porting note: this line was `generalize_proofs e`:
    generalize @id (C (bit b n) = C (bit (bodd (bit b n)) (div2 (bit b n))))
      (Eq.symm (bit_decomp (bit b n)) ▸ Eq.refl (C (bit b n))) = e
    revert e
    rw [bodd_bit, div2_bit]
    intros
    rfl
#align nat.binary_rec_eq' Nat.binaryRec_eq'

/-- The same as `binaryRec`, but the induction step can assume that if `n=0`,
  the bit being appended is `true`-/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c12bd1a77d162124ea8d50d799a6cdd9c73002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
