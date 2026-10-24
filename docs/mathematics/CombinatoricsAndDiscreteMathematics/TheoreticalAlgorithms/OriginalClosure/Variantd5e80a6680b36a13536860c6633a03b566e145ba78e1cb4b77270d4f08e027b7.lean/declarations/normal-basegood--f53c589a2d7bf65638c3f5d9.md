# normal_baseGood

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 10401,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a48b74ae-f5fc-350f-5e0d-3cd200e5f291",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec21b1df-f087-233d-3369-f23ca1411527",
  "kind": "theorem",
  "lexical_name": "normal_baseGood",
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
  "slug": "normal-basegood--f53c589a2d7bf65638c3f5d9",
  "source": {
    "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 10410,
    "line": 10401,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f53c589a2d7bf65638c3f5d9b75521afca30f4e9a41b6433e4aca9c5b9118893",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec21b1df-f087-233d-3369-f23ca1411527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10401–10410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_baseGood {Γ : List (Expr S)} {M : Expr S} {s : S} {σ : Nat → Expr S}
    (h : HasType P Γ M (.sort s)) (hn : Normal M) (hne : Neutral M)
    (hσ : Ω.TypedSubstitution Γ σ) (hr : Relevant (P := P) C Γ M) {v : Prop}
    (hv : ActiveLayer P C (Ω.profile (Expr.sort s |>.subst σ)) → v) :
    baseGood Ω C M (.sort s) σ v := by
  intro hm
  have hp := relevant_actual_mem Ω C hw hC h hσ hr hm
  rw [Profile.neutral hn hne h] at hp
  exact ⟨s,rfl,hp,hv,fun _ => hne⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean#L10401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
