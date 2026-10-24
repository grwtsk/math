# isCoprime_iff_aeval_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a97d2417-537d-8f34-0725-c01996d5550a",
  "kind": "lemma",
  "lexical_name": "isCoprime_iff_aeval_ne_zero",
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
  "slug": "iscoprime-iff-aeval-ne-zero--cdad75f6cc45a173f4bef668",
  "source": {
    "blob": "0fd60394cccf4618d01efbad3ab77ca6d6d4fd43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 85,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant26d9c188d057f58ae0d0981647f3a3f54dba3112f807016ba3008059aac33dbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdad75f6cc45a173f4bef668cfb10b61438bc616f2f54412e0bc25dad86e1918",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Construction/Variant26d9c188d057f58ae0d0981647f3a3f54dba3112f807016ba3008059aac33dbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a97d2417-537d-8f34-0725-c01996d5550a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCoprime_iff_aeval_ne_zero (f g : K[X]) : IsCoprime f g ↔ ∀ {A : Type v} [CommRing A]
    [IsDomain A] [Algebra K A] (a : A), aeval a f ≠ 0 ∨ aeval a g ≠ 0 := by
  refine ⟨fun h => aeval_ne_zero_of_isCoprime h, fun h => isCoprime_of_dvd _ _ ?_ fun x hx _ => ?_⟩
  · replace h := @h K _ _ _ 0
    contrapose! h
    rw [h.left, h.right, map_zero, and_self]
  · rintro ⟨_, rfl⟩ ⟨_, rfl⟩
    replace h := not_and_or.mpr <| h <| AdjoinRoot.root x.factor
    simp only [AdjoinRoot.aeval_eq, AdjoinRoot.mk_eq_zero,
      dvd_mul_of_dvd_left <| factor_dvd_of_not_isUnit hx, true_and, not_true] at h

/-- Divide a polynomial f by `X - C r` where `r` is a root of `f` in a bigger field extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Construction/Variant26d9c188d057f58ae0d0981647f3a3f54dba3112f807016ba3008059aac33dbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant26d9c188d057f58ae0d0981647f3a3f54dba3112f807016ba3008059aac33dbc.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fd60394cccf4618d01efbad3ab77ca6d6d4fd43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
