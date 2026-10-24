# instRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:135ccaf496294d71975c4b96cc007911a1b982f8f83428ce94dc44a769dab387",
  "kind": "instance",
  "lexical_name": "instRing",
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
  "slug": "instring--7bce08d32b84289bd8faed6b",
  "source": {
    "blob": "5f4b3eab78e482a95e7dd03469b199ec730067d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 338,
    "path": "GRWTSK/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bce08d32b84289bd8faed6b7bea901799247fe6975fb827ad2bfe26a80a741a",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:135ccaf496294d71975c4b96cc007911a1b982f8f83428ce94dc44a769dab387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instRing {R : Type uR} [Ring R] (r : R → R → Prop) : Ring (RingQuot r) :=
  { RingQuot.instSemiring r with
    neg := Neg.neg
    neg_add_cancel := by
      rintro ⟨⟨⟩⟩
      simp [neg_quot, add_quot, ← zero_quot]
    sub := Sub.sub
    sub_eq_add_neg := by
      rintro ⟨⟨⟩⟩ ⟨⟨⟩⟩
      simp [neg_quot, sub_quot, add_quot, sub_eq_add_neg]
    zsmul := (· • ·)
    zsmul_zero' := by
      rintro ⟨⟨⟩⟩
      simp [smul_quot, ← zero_quot]
    zsmul_succ' := by
      rintro n ⟨⟨⟩⟩
      simp [smul_quot, add_quot, add_mul, add_comm]
    zsmul_neg' := by
      rintro n ⟨⟨⟩⟩
      simp [smul_quot, neg_quot, add_mul]
    intCast := intCast r
    intCast_ofNat := fun n => congrArg RingQuot.mk <| by
      exact congrArg (Quot.mk _) (Int.cast_natCast _)
    intCast_negSucc := fun n => congrArg RingQuot.mk <| by
      simp_rw [neg_def]
      exact congrArg (Quot.mk _) (Int.cast_negSucc n) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4b3eab78e482a95e7dd03469b199ec730067d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
