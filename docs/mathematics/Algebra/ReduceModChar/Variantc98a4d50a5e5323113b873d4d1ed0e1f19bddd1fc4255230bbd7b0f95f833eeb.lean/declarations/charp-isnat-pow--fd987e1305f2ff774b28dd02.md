# CharP.isNat_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94bbc328731b374328bade0b1a821cf2c6bcc540",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d2a88a7-36fb-2f80-1794-2760a26fc1c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a12f87c4-323c-234c-f5e8-ad9139c66199",
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
  "slug": "charp-isnat-pow--fd987e1305f2ff774b28dd02",
  "source": {
    "blob": "94bbc328731b374328bade0b1a821cf2c6bcc540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 58,
    "path": "GRWTSK/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd987e1305f2ff774b28dd029ebc4ccdf95cacb84480dc6336903db1e6f13f9a",
  "verification": {
    "reference": "docs/verification/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a12f87c4-323c-234c-f5e8-ad9139c66199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–66.

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

[Verification target and public status](../../../../../verification/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94bbc328731b374328bade0b1a821cf2c6bcc540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
