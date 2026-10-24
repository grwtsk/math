# adjoinCommSemiringOfComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a327dfc51a6ab75e5f43d2743bc9048e5996b817047a4a9e277354321b0ed3c",
  "kind": "def",
  "lexical_name": "adjoinCommSemiringOfComm",
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
  "slug": "adjoincommsemiringofcomm--e89099210ff6562db1f99c56",
  "source": {
    "blob": "3be6966e7671d199a86294832c71fc349e4dead5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 559,
    "path": "GRWTSK/Algebra/Subalgebra/Variant32a856fdd118f40564fc90f221793fcfe3cd72ddac7e34beb6b1ee3af94d35e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e89099210ff6562db1f99c569cdbd900dccd3ae62acc4e04c00de62593503655",
  "verification": {
    "reference": "docs/verification/Algebra/Subalgebra/Variant32a856fdd118f40564fc90f221793fcfe3cd72ddac7e34beb6b1ee3af94d35e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a327dfc51a6ab75e5f43d2743bc9048e5996b817047a4a9e277354321b0ed3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adjoinCommSemiringOfComm {s : Set A} (hcomm : ∀ a : A, a ∈ s → ∀ b : A, b ∈ s → a * b = b * a)
    (hcomm_star : ∀ a : A, a ∈ s → ∀ b : A, b ∈ s → a * star b = star b * a) :
    CommSemiring (adjoin R s) :=
  { (adjoin R s).toSubalgebra.toSemiring with
    mul_comm := by
      rintro ⟨x, hx⟩ ⟨y, hy⟩
      ext
      simp only [MulMemClass.mk_mul_mk]
      rw [← mem_toSubalgebra, adjoin_toSubalgebra] at hx hy
      letI : CommSemiring (Algebra.adjoin R (s ∪ star s)) :=
        Algebra.adjoinCommSemiringOfComm R
          (by
            intro a ha b hb
            cases' ha with ha ha <;> cases' hb with hb hb
            · exact hcomm _ ha _ hb
            · exact star_star b ▸ hcomm_star _ ha _ hb
            · exact star_star a ▸ (hcomm_star _ hb _ ha).symm
            · simpa only [star_mul, star_star] using congr_arg star (hcomm _ hb _ ha))
      exact congr_arg Subtype.val (mul_comm (⟨x, hx⟩ : Algebra.adjoin R (s ∪ star s)) ⟨y, hy⟩) }
#align star_subalgebra.adjoin_comm_semiring_of_comm StarSubalgebra.adjoinCommSemiringOfComm

/-- If all elements of `s : Set A` commute pairwise and also commute pairwise with elements of
`star s`, then `StarSubalgebra.adjoin R s` is commutative. See note [reducible non-instances]. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Subalgebra/Variant32a856fdd118f40564fc90f221793fcfe3cd72ddac7e34beb6b1ee3af94d35e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Subalgebra/Variant32a856fdd118f40564fc90f221793fcfe3cd72ddac7e34beb6b1ee3af94d35e9.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3be6966e7671d199a86294832c71fc349e4dead5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
