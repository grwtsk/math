# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Map.Variant215a8edc840c6972f66f6e1bcbec7db3b410efcde0ab91fbe9cd377b698a0593.List.toFinset_filterMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef6c9a8b-7ee4-37bb-4fc3-4be17bf92d39",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Map.Variant215a8edc840c6972f66f6e1bcbec7db3b410efcde0ab91fbe9cd377b698a0593.List.toFinset_filterMap",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-map-variant215a8edc840c6--0d97417823baf47c5e6c9064",
  "source": {
    "blob": "10d06b669a30f29a6e5e2dd693593f1e7aa4bb3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 643,
    "line": 630,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant062cda106421effd43a96ecff0ca74f3e27ebe5e07f0d4b5eead2ffc6d73779f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d97417823baf47c5e6c90642bd6c8b140522f9e426718aedee71ddbb35f9bbe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Image/Variant062cda106421effd43a96ecff0ca74f3e27ebe5e07f0d4b5eead2ffc6d73779f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef6c9a8b-7ee4-37bb-4fc3-4be17bf92d39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 630–643.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Map.Variant215a8edc840c6972f66f6e1bcbec7db3b410efcde0ab91fbe9cd377b698a0593.List.toFinset_filterMap [DecidableEq α] [DecidableEq β]
    (f_inj : ∀ (a a' : α) (b : β), f a = some b → f a' = some b → a = a') (s : List α) :
    (s.filterMap f).toFinset = s.toFinset.filterMap f f_inj := by
  simp [← Finset.coe_inj]

end FilterMap

/-! ### Subtype -/


section Subtype

/-- Given a finset `s` and a predicate `p`, `s.subtype p` is the finset of `Subtype p` whose
elements belong to `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Image/Variant062cda106421effd43a96ecff0ca74f3e27ebe5e07f0d4b5eead2ffc6d73779f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant062cda106421effd43a96ecff0ca74f3e27ebe5e07f0d4b5eead2ffc6d73779f.lean#L630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10d06b669a30f29a6e5e2dd693593f1e7aa4bb3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
