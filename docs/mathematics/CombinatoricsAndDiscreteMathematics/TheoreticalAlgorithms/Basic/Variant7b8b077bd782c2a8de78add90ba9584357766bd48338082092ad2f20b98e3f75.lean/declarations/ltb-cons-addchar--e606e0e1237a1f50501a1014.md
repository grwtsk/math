# ltb_cons_addChar'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09e54fea-fa10-d7ad-e930-4b9050932d9d",
  "kind": "theorem",
  "lexical_name": "ltb_cons_addChar'",
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
  "slug": "ltb-cons-addchar--e606e0e1237a1f50501a1014",
  "source": {
    "blob": "6c2370d1c703b8be64362c6f98a381104977441d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7b8b077bd782c2a8de78add90ba9584357766bd48338082092ad2f20b98e3f75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e606e0e1237a1f50501a1014a18551cdf472804644b8ef5d7bc4878542de5f9b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7b8b077bd782c2a8de78add90ba9584357766bd48338082092ad2f20b98e3f75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09e54fea-fa10-d7ad-e930-4b9050932d9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ltb_cons_addChar' (c : Char) (s₁ s₂ : Legacy.Iterator) :
    ltb ⟨ofList (c :: s₁.s.toList), s₁.i + c⟩ ⟨ofList (c :: s₂.s.toList), s₂.i + c⟩ =
      ltb s₁ s₂ := by
  fun_induction ltb s₁ s₂ with
  | case1 s₁ s₂ h₁ h₂ h ih =>
    rw [ltb, Legacy.Iterator.hasNext_cons_addChar, Legacy.Iterator.hasNext_cons_addChar,
      if_pos (by simpa using h₁), if_pos (by simpa using h₂), if_pos, ← ih]
    · simp only [Legacy.Iterator.next, Pos.Raw.next, get_cons_addChar, ofList_toList]
      congr 2 <;> apply Pos.Raw.add_char_right_comm
    · simpa only [Legacy.Iterator.curr, get_cons_addChar, ofList_toList] using h
  | case2 s₁ s₂ h₁ h₂ h =>
    rw [ltb, Legacy.Iterator.hasNext_cons_addChar, Legacy.Iterator.hasNext_cons_addChar,
      if_pos (by simpa using h₁), if_pos (by simpa using h₂), if_neg]
    · simp only [Legacy.Iterator.curr, get_cons_addChar, ofList_toList, decide_eq_decide]
    · simpa only [Legacy.Iterator.curr, get_cons_addChar, ofList_toList] using h
  | case3 s₁ s₂ h₁ h₂ =>
    rw [ltb, Legacy.Iterator.hasNext_cons_addChar, Legacy.Iterator.hasNext_cons_addChar,
      if_pos (by simpa using h₁), if_neg (by simpa using h₂)]
  | case4 s₁ s₂ h₁ =>
    rw [ltb, Legacy.Iterator.hasNext_cons_addChar, if_neg (by simpa using h₁)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7b8b077bd782c2a8de78add90ba9584357766bd48338082092ad2f20b98e3f75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7b8b077bd782c2a8de78add90ba9584357766bd48338082092ad2f20b98e3f75.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c2370d1c703b8be64362c6f98a381104977441d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
