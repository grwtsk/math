# forall₂_of_length_eq_of_get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2801855f-51bc-721e-a9b2-a6752503834c",
  "kind": "theorem",
  "lexical_name": "forall₂_of_length_eq_of_get",
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
  "slug": "forall-of-length-eq-of-get--c61281f1f77c031e07476da2",
  "source": {
    "blob": "23f5b72ecb6c408ff541ecf2a0d009a6c36e1e3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ddb1d3c8d5e806a74910e42040e1848057ae7cb9595a9d80a504e58a7f9754c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c61281f1f77c031e07476da2a6847d5a9cfa66941c42bd301e63293a857bc77b",
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

Occurrence: `result:2801855f-51bc-721e-a9b2-a6752503834c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall₂_of_length_eq_of_get :
    ∀ {x : List α} {y : List β},
      x.length = y.length → (∀ i h₁ h₂, R (x.get ⟨i, h₁⟩) (y.get ⟨i, h₂⟩)) → Forall₂ R x y
  | [], [], _, _ => Forall₂.nil
  | _ :: _, _ :: _, hl, h =>
    Forall₂.cons (h 0 (Nat.zero_lt_succ _) (Nat.zero_lt_succ _))
      (forall₂_of_length_eq_of_get (succ.inj hl) fun i h₁ h₂ =>
        h i.succ (succ_lt_succ h₁) (succ_lt_succ h₂))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ddb1d3c8d5e806a74910e42040e1848057ae7cb9595a9d80a504e58a7f9754c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ddb1d3c8d5e806a74910e42040e1848057ae7cb9595a9d80a504e58a7f9754c.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23f5b72ecb6c408ff541ecf2a0d009a6c36e1e3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
