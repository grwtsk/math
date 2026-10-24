# count_not_eq_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abe76bd2-f148-2435-ac02-f3718408eb4d",
  "kind": "theorem",
  "lexical_name": "count_not_eq_count",
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
  "slug": "count-not-eq-count--5e215ec30983ed5f3ca44c03",
  "source": {
    "blob": "3279cfa58f65c4dbaf40bb3f5c2d783c8f2f1826",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e215ec30983ed5f3ca44c03a53d68a99bd6660bac3a8de08eca2cb2bb764877",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abe76bd2-f148-2435-ac02-f3718408eb4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_not_eq_count (hl : Chain' (· ≠ ·) l) (h2 : Even (length l)) (b : Bool) :
    count (!b) l = count b l := by
  cases' l with x l
  · rfl
  rw [length_cons, Nat.even_add_one, Nat.not_even_iff] at h2
  suffices count (!x) (x :: l) = count x (x :: l) by
    -- Porting note: old proof is
    -- cases b <;> cases x <;> try exact this;
    cases b <;> cases x <;>
    revert this <;> simp only [Bool.not_false, Bool.not_true] <;> intro this <;>
    (try exact this) <;> exact this.symm
  rw [count_cons_of_ne x.not_ne_self, hl.count_not, h2, count_cons_self]
#align list.chain'.count_bnot_eq_count List.Chain'.count_not_eq_count

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3279cfa58f65c4dbaf40bb3f5c2d783c8f2f1826` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
