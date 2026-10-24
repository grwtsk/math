# add_eq_left_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6625bbd5-fdea-4458-5e96-62dfe34f67ee",
  "kind": "lemma",
  "lexical_name": "add_eq_left_of_lt",
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
  "slug": "add-eq-left-of-lt--918b709ba9358e45ebd8f6ba",
  "source": {
    "blob": "ae3af9de5366c308ac511910fd8b3546801cbf27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variante25e23b87f484b5680280c9dcf8b02522adb3a09dcba161342b08eb8732c1e70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:918b709ba9358e45ebd8f6bae64290a89679a25fd8fdc58ce89fd743981a1b0b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variante25e23b87f484b5680280c9dcf8b02522adb3a09dcba161342b08eb8732c1e70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6625bbd5-fdea-4458-5e96-62dfe34f67ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma add_eq_left_of_lt {F α : Type*} [AddGroup α] [FunLike F α R]
    [AddGroupSeminormClass F α R] {f : F} (hna : IsNonarchimedean f) {x y : α}
    (h_lt : f y < f x) : f (x + y) = f x := by
  by_contra! h
  have h1 : f (x + y) ≤ f x := (hna x y).trans_eq (max_eq_left_of_lt h_lt)
  apply lt_irrefl (f x)
  calc
    f x = f (x + y + -y) := by simp
    _   ≤ max (f (x + y)) (f (-y)) := hna (x + y) (-y)
    _   < max (f x) (f x) := by
      rw [max_self, map_neg_eq_map]
      apply max_lt (lt_of_le_of_ne h1 h) h_lt
    _   = f x := max_self (f x)

/-- If `f` is a nonarchimedean additive group seminorm on `α` and `x y : α` are such that
  `f x ≠ f y`, then `f (x + y) = max (f x) (f y)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variante25e23b87f484b5680280c9dcf8b02522adb3a09dcba161342b08eb8732c1e70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variante25e23b87f484b5680280c9dcf8b02522adb3a09dcba161342b08eb8732c1e70.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae3af9de5366c308ac511910fd8b3546801cbf27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
