# lex_trichotomous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1a5cc537528b2bcb46b1333b3a7b9197235d3c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:280d8357-d29e-595e-5508-fce53537cabe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99dd4583-7da4-66a8-eb32-33d13429a20f",
  "kind": "theorem",
  "lexical_name": "lex_trichotomous",
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
  "slug": "lex-trichotomous--a9b577bfd73257d175c77ed9",
  "source": {
    "blob": "a1a5cc537528b2bcb46b1333b3a7b9197235d3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 280,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9b577bfd73257d175c77ed91b118624285344ed8dbc8b03840ececd0ccdf117",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99dd4583-7da4-66a8-eb32-33d13429a20f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lex_trichotomous [DecidableEq α] {r : α → α → Prop} [DecidableRel r]
    (trichotomous : ∀ x y : α, ¬ r x y → ¬ r y x → x = y)
    {as bs : List α} (h₁ : ¬ Lex r bs as) (h₂ : ¬ Lex r as bs) : as = bs :=
  match as, bs with
  | [],    []    => rfl
  | [],    _::_ => False.elim <| h₂ (List.Lex.nil ..)
  | _::_, []    => False.elim <| h₁ (List.Lex.nil ..)
  | a::as, b::bs => by
    by_cases hab : r a b
    · exact False.elim <| h₂ (List.Lex.rel hab)
    · by_cases eq : a = b
      · subst eq
        have h₁ : ¬ Lex r bs as := fun h => h₁ (List.Lex.cons h)
        have h₂ : ¬ Lex r as bs := fun h => h₂ (List.Lex.cons h)
        simp [lex_trichotomous trichotomous h₁ h₂]
      · exfalso
        by_cases hba : r b a
        · exact h₁ (Lex.rel hba)
        · exact eq (trichotomous _ _ hab hba)

@[deprecated lex_trichotomous (since := "2025-10-27")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1a5cc537528b2bcb46b1333b3a7b9197235d3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
