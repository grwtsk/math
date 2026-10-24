# CharP.isNat_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d386b56ef496e6d134bae2380548d2e3b277d89c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f3b8c1f-972c-7af6-896c-fff57a8e1205",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8878d9e0-c625-01b0-93cb-b38b483bac6a",
  "kind": "lemma",
  "lexical_name": "CharP.isNat_pow",
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
  "slug": "charp-isnat-pow--5ee9706ba847a931eccd334d",
  "source": {
    "blob": "d386b56ef496e6d134bae2380548d2e3b277d89c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 52,
    "path": "GRWTSK/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ee9706ba847a931eccd334d8fb694fc388e6241bd957b984149e5d25b7deae6",
  "verification": {
    "reference": "docs/verification/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8878d9e0-c625-01b0-93cb-b38b483bac6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CharP.isNat_pow {α} [Semiring α] : ∀ {f : α → ℕ → α} {a : α} {a' b b' c n n' : ℕ},
    CharP α n → f = HPow.hPow → IsNat a a' → IsNat b b' → IsNat n n' →
    Nat.mod (Nat.pow a' b') n' = c → IsNat (f a b) c
  | _, _, a, _, b, _, _, n, _, rfl, ⟨h⟩, ⟨rfl⟩, ⟨rfl⟩, rfl => ⟨by
    rw [h, Nat.cast_id, Nat.pow_eq, ← Nat.cast_pow, CharP.natCast_eq_natCast_mod α n]
    rfl⟩

attribute [local instance] Mathlib.Meta.monadLiftOptionMetaM in
/-- Evaluates `e` to an integer using `norm_num` and reduces the result modulo `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d386b56ef496e6d134bae2380548d2e3b277d89c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
