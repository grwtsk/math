# insertLeft_equiv_of_lf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ced70079-24b3-82ce-0006-e364b450cfd5",
  "kind": "lemma",
  "lexical_name": "insertLeft_equiv_of_lf",
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
  "slug": "insertleft-equiv-of-lf--076dad37a3f7a318c28140ef",
  "source": {
    "blob": "d42f9ef2c98893c853896bc87f608cbb790df2c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 729,
    "line": 706,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:076dad37a3f7a318c28140ef6dec2558a2ccc83ee093a7146ad9a7b5eae84613",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ced70079-24b3-82ce-0006-e364b450cfd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 706–729.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma insertLeft_equiv_of_lf {x x' : PGame} (h : x' ⧏ x) : insertLeft x x' ≈ x := by
  rw [equiv_def]
  constructor
  · rw [le_def]
    constructor
    · intro i
      rcases x with ⟨xl, xr, xL, xR⟩
      simp only [insertLeft, moveLeft_mk] at i ⊢
      rcases i with i | _
      · rw [Sum.elim_inl]
        left
        use i
      · rw [Sum.elim_inr]
        simpa only [lf_iff_exists_le] using h
    · intro j
      right
      rcases x with ⟨xl, xr, xL, xR⟩
      simp only [insertLeft, moveRight_mk]
      use j
  · apply le_insertLeft

/-- Adding a gift horse right option does not change the value of `x`. A gift horse right option is
a game `x'` with `x ⧏ x'`. It is called "gift horse" because it seems like Right has gotten the
"gift" of a new option, but actually the value of the game did not change. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean#L706).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d42f9ef2c98893c853896bc87f608cbb790df2c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
