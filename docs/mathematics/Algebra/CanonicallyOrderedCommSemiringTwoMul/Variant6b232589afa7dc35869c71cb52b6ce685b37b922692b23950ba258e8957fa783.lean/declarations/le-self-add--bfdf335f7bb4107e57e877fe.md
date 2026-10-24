# le_self_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:252c234f-2121-5135-e557-330aa3ddc772",
  "kind": "theorem",
  "lexical_name": "le_self_add",
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
  "slug": "le-self-add--bfdf335f7bb4107e57e877fe",
  "source": {
    "blob": "ee0638ac5b7d7919f6f64b0bcce5e495b8bcf79a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 241,
    "path": "GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfdf335f7bb4107e57e877fe61601b9a8ff03d23cf8b0e19948c5a0c8984fcf7",
  "verification": {
    "reference": "docs/verification/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:252c234f-2121-5135-e557-330aa3ddc772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_self_add : ∀ a b : L, a ≤ a + b := by
  rintro a ⟨⟨bn, b2⟩, hb⟩
  obtain rfl | h := Nat.eq_zero_or_pos bn
  · obtain rfl | rfl := mem_zmod_2 b2
    · exact Or.inl (Prod.ext (add_zero _).symm (add_zero _).symm)
    · exact (hb rfl).elim
  · exact Or.inr ((lt_add_iff_pos_right _).mpr h)
#align counterexample.ex_L.le_self_add Counterexample.ExL.le_self_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee0638ac5b7d7919f6f64b0bcce5e495b8bcf79a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
