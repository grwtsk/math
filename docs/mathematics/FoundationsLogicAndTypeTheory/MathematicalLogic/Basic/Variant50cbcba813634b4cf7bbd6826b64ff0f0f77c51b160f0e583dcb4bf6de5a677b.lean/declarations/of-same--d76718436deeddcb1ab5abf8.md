# of_same

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ef783e0-b824-3b96-8384-bdefb2537010",
  "kind": "theorem",
  "lexical_name": "of_same",
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
  "slug": "of-same--d76718436deeddcb1ab5abf8",
  "source": {
    "blob": "3af3a13d0165afd4873fbef728cf13bc78dc12fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 363,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d76718436deeddcb1ab5abf8de58199fa3303fa220716f992d1998fbc304a046",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ef783e0-b824-3b96-8384-bdefb2537010`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] theorem of_same {G} [Semigroup G] [IsCancelMul G]
    (h : ∀ {A : Finset G}, A.Nonempty → ∃ a1 ∈ A, ∃ a2 ∈ A, UniqueMul A A a1 a2) :
    UniqueProds G where
  uniqueMul_of_nonempty {A B} hA hB := by
    classical
    obtain ⟨g1, h1, g2, h2, hu⟩ := h (hB.mul hA)
    obtain ⟨b1, hb1, a1, ha1, rfl⟩ := mem_mul.mp h1
    obtain ⟨b2, hb2, a2, ha2, rfl⟩ := mem_mul.mp h2
    refine ⟨a1, ha1, b2, hb2, fun a b ha hb he => ?_⟩
    specialize hu (mul_mem_mul hb1 ha) (mul_mem_mul hb ha2) _
    · rw [mul_assoc b1, ← mul_assoc a, he, mul_assoc a1, ← mul_assoc b1]
    exact ⟨mul_left_cancel hu.1, mul_right_cancel hu.2⟩

/-- If a group has `UniqueProds`, then it actually has `TwoUniqueProds`.
  For an example of a semigroup `G` embeddable into a group that has `UniqueProds`
  but not `TwoUniqueProds`, see Example 10.13 in
  [J. Okniński, *Semigroup Algebras*][Okninski1991]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3af3a13d0165afd4873fbef728cf13bc78dc12fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
