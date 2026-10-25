# IsCycle.sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ec98e08-e0cc-fb62-e323-d6b614746f00",
  "kind": "theorem",
  "lexical_name": "IsCycle.sign",
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
  "slug": "iscycle-sign--1d00d0adf78f76bc3bdf0afa",
  "source": {
    "blob": "0bbd1a91e27836660b62a37ccb45042c976989f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 443,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d00d0adf78f76bc3bdf0afa2f96f5f82fa18d8e1677b97898bfbc27f1112b43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ec98e08-e0cc-fb62-e323-d6b614746f00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCycle.sign {f : Perm α} (hf : IsCycle f) : sign f = -(-1) ^ #f.support :=
  let ⟨x, hx⟩ := hf
  calc
    Perm.sign f = Perm.sign (swap x (f x) * (swap x (f x) * f)) := by
      {rw [← mul_assoc, mul_def, mul_def, swap_swap, trans_refl]}
    _ = -(-1) ^ #f.support :=
      if h1 : f (f x) = x then by
        have h : swap x (f x) * f = 1 := by
          simp only [mul_def, one_def]
          rw [hf.eq_swap_of_apply_apply_eq_self hx.1 h1, swap_apply_left, swap_swap]
        rw [sign_mul, sign_swap hx.1.symm, h, sign_one,
          hf.eq_swap_of_apply_apply_eq_self hx.1 h1, card_support_swap hx.1.symm]
        rfl
      else by
        have h : #(swap x (f x) * f).support + 1 = #f.support := by
          rw [← insert_erase (mem_support.2 hx.1), support_swap_mul_eq _ _ h1,
            card_insert_of_notMem (notMem_erase _ _), sdiff_singleton_eq_erase]
        have : #(swap x (f x) * f).support < #f.support := card_support_swap_mul hx.1
        rw [sign_mul, sign_swap hx.1.symm, (hf.swap_mul hx.1 h1).sign, ← h]
        simp only [mul_neg, neg_mul, one_mul, neg_neg, pow_add, pow_one, mul_one]
termination_by #f.support

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bbd1a91e27836660b62a37ccb45042c976989f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
