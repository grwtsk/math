# Const.insertMany_eq_insertListₘ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "528f47ab01ff5445a14fc8945038fcd0aef051c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 736,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b936f53-f2c0-e096-a1e4-6b760b2c76e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1f51da9-fc93-5b0e-66ae-e4cee173ea49",
  "kind": "theorem",
  "lexical_name": "Const.insertMany_eq_insertListₘ",
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
  "slug": "const-insertmany-eq-insertlist--315e31037a5dea5bd77655d7",
  "source": {
    "blob": "528f47ab01ff5445a14fc8945038fcd0aef051c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 736,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variantb11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:315e31037a5dea5bd77655d79f49b62668c07a9bb85cb879bf62840510b38c9d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variantb11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1f51da9-fc93-5b0e-66ae-e4cee173ea49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 736–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Const.insertMany_eq_insertListₘ [BEq α] [Hashable α] (m : Raw₀ α (fun _ => β))
    (l : List (α × β)) :
    (Const.insertMany m l).1 = Const.insertListₘ m l := by
  simp only [insertMany, Id.run_pure, pure_bind, List.forIn_pure_yield_eq_foldl]
  suffices ∀ (t : { m' // ∀ (P : Raw₀ α (fun _ => β) → Prop),
    (∀ {m'' : Raw₀ α (fun _ => β)} {a : α} {b : β}, P m'' → P (m''.insert a b)) → P m → P m' }),
      (List.foldl (fun m' p => ⟨m'.val.insert p.1 p.2, fun P h₁ h₂ => h₁ (m'.2 _ h₁ h₂)⟩) t l).val =
    Const.insertListₘ t.val l from this _
  intro t
  induction l generalizing m with
  | nil => simp [insertListₘ]
  | cons hd tl ih =>
    simp only [List.foldl_cons, insertListₘ]
    apply ih

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variantb11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variantb11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean#L736).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `528f47ab01ff5445a14fc8945038fcd0aef051c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
