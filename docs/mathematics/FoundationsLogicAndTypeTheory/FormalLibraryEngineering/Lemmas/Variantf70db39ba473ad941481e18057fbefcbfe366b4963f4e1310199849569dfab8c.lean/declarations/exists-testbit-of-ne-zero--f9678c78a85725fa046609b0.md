# exists_testBit_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e2c2f26-134b-44a1-e32e-6e78b30fb032",
  "kind": "theorem",
  "lexical_name": "exists_testBit_of_ne_zero",
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
  "slug": "exists-testbit-of-ne-zero--f9678c78a85725fa046609b0",
  "source": {
    "blob": "13928f1646079f8cf5e67bf1a29431a1557e6804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf70db39ba473ad941481e18057fbefcbfe366b4963f4e1310199849569dfab8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9678c78a85725fa046609b06c4b9a4a17fc20d1f037b2f5a367c43f3a76c90d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf70db39ba473ad941481e18057fbefcbfe366b4963f4e1310199849569dfab8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e2c2f26-134b-44a1-e32e-6e78b30fb032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_testBit_of_ne_zero {x : Nat} (xnz : x ≠ 0) : ∃ i, testBit x i := by
  induction x using div2Induction with
  | ind x hyp =>
    have x_pos : x > 0 := Nat.pos_of_ne_zero xnz
    match mod_two_eq_zero_or_one x with
    | Or.inl mod2_eq =>
      rw [←div_add_mod x 2] at xnz
      simp only [mod2_eq, ne_eq, Nat.mul_eq_zero, Nat.add_zero, false_or, reduceCtorEq] at xnz
      have ⟨d, dif⟩   := hyp x_pos xnz
      apply Exists.intro (d+1)
      simp_all
    | Or.inr mod2_eq =>
      apply Exists.intro 0
      simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf70db39ba473ad941481e18057fbefcbfe366b4963f4e1310199849569dfab8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf70db39ba473ad941481e18057fbefcbfe366b4963f4e1310199849569dfab8c.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13928f1646079f8cf5e67bf1a29431a1557e6804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
