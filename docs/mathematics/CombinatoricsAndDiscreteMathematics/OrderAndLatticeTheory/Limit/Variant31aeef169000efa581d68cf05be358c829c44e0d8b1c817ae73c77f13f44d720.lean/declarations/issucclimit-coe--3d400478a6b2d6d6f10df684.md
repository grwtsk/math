# isSuccLimit_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf985ff4-1b08-d637-8d72-c99ff87db0e1",
  "kind": "lemma",
  "lexical_name": "isSuccLimit_coe",
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
  "slug": "issucclimit-coe--3d400478a6b2d6d6f10df684",
  "source": {
    "blob": "290f66246f054fc5a1dccbca571025af61ce8538",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant31aeef169000efa581d68cf05be358c829c44e0d8b1c817ae73c77f13f44d720.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d400478a6b2d6d6f10df6841f83f627d75e596bc8e8201384504b4584e972b9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant31aeef169000efa581d68cf05be358c829c44e0d8b1c817ae73c77f13f44d720.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf985ff4-1b08-d637-8d72-c99ff87db0e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSuccLimit_coe {J : Type u} [LinearOrder J] {j : J}
    (m : Set.Ici j) (hm : Order.IsSuccLimit m) :
    Order.IsSuccLimit m.1 :=
  ⟨Set.not_isMin_coe _ hm.1, fun b ↦ by
    simp only [CovBy, not_lt, not_and, not_forall, Classical.not_imp, not_le]
    intro hb
    by_cases hb' : j ≤ b
    · have := hm.2 ⟨b, hb'⟩
      rw [not_covBy_iff (by exact hb)] at this
      obtain ⟨⟨x, h₁⟩, h₂, h₃⟩ := this
      refine ⟨x, h₂, h₃⟩
    · simp only [not_le] at hb'
      refine ⟨j, hb', ?_⟩
      by_contra!
      apply hm.1
      rintro ⟨k, hk⟩ _
      exact this.trans (by simpa using hk)⟩

end Set.Ici
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant31aeef169000efa581d68cf05be358c829c44e0d8b1c817ae73c77f13f44d720.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant31aeef169000efa581d68cf05be358c829c44e0d8b1c817ae73c77f13f44d720.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290f66246f054fc5a1dccbca571025af61ce8538` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
