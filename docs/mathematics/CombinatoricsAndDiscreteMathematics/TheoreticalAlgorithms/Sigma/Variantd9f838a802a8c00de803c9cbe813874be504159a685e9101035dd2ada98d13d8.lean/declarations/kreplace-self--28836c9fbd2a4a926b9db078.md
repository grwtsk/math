# kreplace_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8da839d6857d52af3ee935eb50cd0bd12a0ea55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 351,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9f838a802a8c00de803c9cbe813874be504159a685e9101035dd2ada98d13d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36d051ac-be66-b526-2192-cda2f7ecae91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4dc7de21-2594-988b-4d55-0c6fcad60f8d",
  "kind": "theorem",
  "lexical_name": "kreplace_self",
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
  "slug": "kreplace-self--28836c9fbd2a4a926b9db078",
  "source": {
    "blob": "f8da839d6857d52af3ee935eb50cd0bd12a0ea55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 351,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variantd9f838a802a8c00de803c9cbe813874be504159a685e9101035dd2ada98d13d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28836c9fbd2a4a926b9db0780aa3f67f347779a1ceb771803f7bc0b29a720c6e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variantd9f838a802a8c00de803c9cbe813874be504159a685e9101035dd2ada98d13d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4dc7de21-2594-988b-4d55-0c6fcad60f8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kreplace_self {a : α} {b : β a} {l : List (Sigma β)} (nd : NodupKeys l)
    (h : Sigma.mk a b ∈ l) : kreplace a b l = l := by
  refine' (lookmap_congr _).trans (lookmap_id' (Option.guard fun (s : Sigma β) => a = s.1) _ _)
  · rintro ⟨a', b'⟩ h'
    dsimp [Option.guard]
    split_ifs
    · subst a'
      simp [nd.eq_of_mk_mem h h']
    · rfl
  · rintro ⟨a₁, b₁⟩ ⟨a₂, b₂⟩
    dsimp [Option.guard]
    split_ifs
    · simp
    · rintro ⟨⟩
#align list.kreplace_self List.kreplace_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variantd9f838a802a8c00de803c9cbe813874be504159a685e9101035dd2ada98d13d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variantd9f838a802a8c00de803c9cbe813874be504159a685e9101035dd2ada98d13d8.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8da839d6857d52af3ee935eb50cd0bd12a0ea55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
