# ZMod.ringHom_eq_of_ker_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8941478-f1fe-4eac-a924-51a3a5aad187",
  "kind": "theorem",
  "lexical_name": "ZMod.ringHom_eq_of_ker_eq",
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
  "slug": "zmod-ringhom-eq-of-ker-eq--df6def93969b684811eb08d0",
  "source": {
    "blob": "16381a6b9fb6ef3f7c7e23245aa6c63bd11f6692",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 40,
    "path": "GRWTSK/Algebra/ZMod/Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df6def93969b684811eb08d005eae0b61829a8f0523b7bf9a86671e817ab5b14",
  "verification": {
    "reference": "docs/verification/Algebra/ZMod/Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8941478-f1fe-4eac-a924-51a3a5aad187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZMod.ringHom_eq_of_ker_eq {n : ℕ} {R : Type*} [Ring R] (f g : R →+* ZMod n)
    (h : RingHom.ker f = RingHom.ker g) : f = g := by
  have := f.liftOfRightInverse_comp _ (ZMod.ringHom_rightInverse f) ⟨g, le_of_eq h⟩
  rw [Subtype.coe_mk] at this
  rw [← this, RingHom.ext_zmod (f.liftOfRightInverse _ _ ⟨g, _⟩) _, RingHom.id_comp]

/-- `ZMod n` is reduced iff `n` is square-free (or `n=0`). -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZMod/Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZMod/Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16381a6b9fb6ef3f7c7e23245aa6c63bd11f6692` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
