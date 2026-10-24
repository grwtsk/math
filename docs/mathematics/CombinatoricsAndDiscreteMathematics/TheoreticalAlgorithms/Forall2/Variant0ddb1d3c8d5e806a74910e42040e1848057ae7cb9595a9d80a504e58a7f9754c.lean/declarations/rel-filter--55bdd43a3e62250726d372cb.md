# rel_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c746093a-8ada-37d9-127f-83e8f6d0910e",
  "kind": "theorem",
  "lexical_name": "rel_filter",
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
  "slug": "rel-filter--55bdd43a3e62250726d372cb",
  "source": {
    "blob": "23f5b72ecb6c408ff541ecf2a0d009a6c36e1e3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 257,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ddb1d3c8d5e806a74910e42040e1848057ae7cb9595a9d80a504e58a7f9754c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55bdd43a3e62250726d372cb9a30e99aca97cf2305e60d83ab8a4ddd7bf4ba32",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ddb1d3c8d5e806a74910e42040e1848057ae7cb9595a9d80a504e58a7f9754c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c746093a-8ada-37d9-127f-83e8f6d0910e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rel_filter {p : α → Bool} {q : β → Bool}
    (hpq : (R ⇒ (· ↔ ·)) (fun x => p x) (fun x => q x)) :
    (Forall₂ R ⇒ Forall₂ R) (filter p) (filter q)
  | _, _, Forall₂.nil => Forall₂.nil
  | a :: as, b :: bs, Forall₂.cons h₁ h₂ => by
    dsimp [LiftFun] at hpq
    by_cases h : p a
    · have : q b := by rwa [← hpq h₁]
      simp only [filter_cons_of_pos h, filter_cons_of_pos this, forall₂_cons, h₁, true_and,
        rel_filter hpq h₂]
    · have : ¬q b := by rwa [← hpq h₁]
      simp only [filter_cons_of_neg h, filter_cons_of_neg this, rel_filter hpq h₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ddb1d3c8d5e806a74910e42040e1848057ae7cb9595a9d80a504e58a7f9754c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ddb1d3c8d5e806a74910e42040e1848057ae7cb9595a9d80a504e58a7f9754c.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23f5b72ecb6c408ff541ecf2a0d009a6c36e1e3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
