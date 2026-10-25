# oneEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46b84002aad5aad895a163144a54223a43ed633e80e3413acacf39dd0a3b4344",
  "kind": "def",
  "lexical_name": "oneEquiv",
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
  "slug": "oneequiv--00481d0fa0a1a242d2d34cbd",
  "source": {
    "blob": "ddd435c1736746f9f390f5c6e084ac45d8c0b6b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 481,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00481d0fa0a1a242d2d34cbdb45903f410ef7cf5ec85dbdcac89eaed66fc4d64",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46b84002aad5aad895a163144a54223a43ed633e80e3413acacf39dd0a3b4344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oneEquiv : α ≃ Sym α 1 where
  toFun a := ⟨{a}, by simp⟩
  invFun s := (Equiv.subtypeQuotientEquivQuotientSubtype
      (·.length = 1) _ (fun _ ↦ Iff.rfl) (fun l l' ↦ by rfl) s).liftOn
    (fun l ↦ l.1.head <| List.length_pos_iff.mp <| by simp)
    fun ⟨_, _⟩ ⟨_, h⟩ ↦ fun perm ↦ by
      obtain ⟨a, rfl⟩ := List.length_eq_one_iff.mp h
      exact List.eq_of_mem_singleton (List.Perm.mem_iff perm |>.mp <| List.head_mem _)
  right_inv := by rintro ⟨⟨l⟩, h⟩; obtain ⟨a, rfl⟩ := List.length_eq_one_iff.mp h; rfl

/-- Fill a term `m : Sym α (n - i)` with `i` copies of `a` to obtain a term of `Sym α n`.
This is a convenience wrapper for `m.append (replicate i a)` that adjusts the term using
`Sym.cast`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddd435c1736746f9f390f5c6e084ac45d8c0b6b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
