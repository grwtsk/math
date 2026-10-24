# scanl_get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b22429f57fedb55d5af78f635541741fc6dfb04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b8d0a2b-e96f-3e3c-2796-934d085574e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:968008fc-9bd7-65ac-3c8f-af71f7247e73",
  "kind": "theorem",
  "lexical_name": "scanl_get",
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
  "slug": "scanl-get--bb9322ee5ff8c50ea30cdba0",
  "source": {
    "blob": "8b22429f57fedb55d5af78f635541741fc6dfb04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 365,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb9322ee5ff8c50ea30cdba049f7903e3645985d92da83cf8b461937cf46f037",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:968008fc-9bd7-65ac-3c8f-af71f7247e73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scanl_get (i : Fin n) :
    (scanl f b v).get i.succ = f ((scanl f b v).get (Fin.castSucc i)) (v.get i) := by
  rcases n with - | n
  · exact i.elim0
  induction' n with n hn generalizing b
  · have i0 : i = 0 := Fin.eq_zero _
    simp [scanl_singleton, i0, get_zero]; simp [get_eq_get_toList, List.get]
  · rw [← cons_head_tail v, scanl_cons, get_cons_succ]
    refine Fin.cases ?_ ?_ i
    · simp only [get_zero, scanl_head, Fin.castSucc_zero, head_cons]
    · intro i'
      simp only [hn, Fin.castSucc_fin_succ, get_cons_succ]

end Scan

/-- Monadic analog of `Vector.ofFn`.
Given a monadic function on `Fin n`, return a `Vector α n` inside the monad. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b22429f57fedb55d5af78f635541741fc6dfb04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
