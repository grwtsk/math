# splitOnAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da899637fcb5c4c6d21f6f68cc9c43c1e7195d1902872b6755e288025c6b4b0d",
  "kind": "def",
  "lexical_name": "splitOnAux",
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
  "slug": "splitonaux--087cea9cb8c7e87f9b168ed7",
  "source": {
    "blob": "944f258937fa6355d91a8e97c470b14b0737568d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variantb27e6a8c10d94a9796ef383b2fd85bceb2ccc6743842c70a71309f8881ffd711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:087cea9cb8c7e87f9b168ed7799d241c6a781a1c857ea0ef35631c14affd8e8e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variantb27e6a8c10d94a9796ef383b2fd85bceb2ccc6743842c70a71309f8881ffd711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da899637fcb5c4c6d21f6f68cc9c43c1e7195d1902872b6755e288025c6b4b0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitOnAux (s sep : String) (b : Pos.Raw) (i : Pos.Raw) (j : Pos.Raw) (r : List String) : List String :=
  if i.atEnd s then
    let r := (b.extract s i)::r
    r.reverse
  else
    if i.get s == j.get sep then
      let i := i.next s
      let j := j.next sep
      if j.atEnd sep then
        splitOnAux s sep i i 0 (b.extract s (i.unoffsetBy j)::r)
      else
        splitOnAux s sep b i j r
    else
      splitOnAux s sep b ((i.unoffsetBy j).next s) 0 r
termination_by (s.rawEndPos.1 - (j.byteDistance i), sep.rawEndPos.1 - j.1)
decreasing_by
  focus
    rename_i h _ _
    left; exact Nat.sub_lt_sub_left
      (Nat.lt_of_le_of_lt (Nat.sub_le ..) (Nat.gt_of_not_le (mt decide_eq_true h)))
      (Nat.lt_of_le_of_lt (Nat.sub_le ..) (Pos.Raw.lt_next s _))
  focus
    rename_i i₀ j₀ _ eq h'
    rw [show (j₀.next sep).byteDistance (i₀.next s) = j₀.byteDistance i₀ by
      change (_ + Char.utf8Size _) - (_ + Char.utf8Size _) = _
      rw [(beq_iff_eq ..).1 eq, Nat.add_sub_add_right]; rfl]
    right; exact Nat.sub_lt_sub_left
      (Nat.lt_of_le_of_lt (Nat.le_add_right ..) (Nat.gt_of_not_le (mt decide_eq_true h')))
      (Pos.Raw.lt_next sep _)
  focus
    rename_i h _
    left; exact Nat.sub_lt_sub_left
      (Nat.lt_of_le_of_lt (Nat.sub_le ..) (Nat.gt_of_not_le (mt decide_eq_true h)))
      (Pos.Raw.lt_next s _)

/--
Splits a string `s` on occurrences of the separator string `sep`. The default separator is `" "`.

When `sep` is empty, the result is `[s]`. When `sep` occurs in overlapping patterns, the first match
is taken. There will always be exactly `n+1` elements in the returned list if there were `n`
non-overlapping matches of `sep` in the string. The separators are not included in the returned
substrings.

This is a legacy function. Use `String.split` instead.

Examples:
* `"here is some text ".splitOn = ["here", "is", "some", "text", ""]`
* `"here is some text ".splitOn "some" = ["here is ", " text "]`
* `"here is some text ".splitOn "" = ["here is some text "]`
* `"ababacabac".splitOn "aba" = ["", "bac", "c"]`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variantb27e6a8c10d94a9796ef383b2fd85bceb2ccc6743842c70a71309f8881ffd711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variantb27e6a8c10d94a9796ef383b2fd85bceb2ccc6743842c70a71309f8881ffd711.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `944f258937fa6355d91a8e97c470b14b0737568d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
