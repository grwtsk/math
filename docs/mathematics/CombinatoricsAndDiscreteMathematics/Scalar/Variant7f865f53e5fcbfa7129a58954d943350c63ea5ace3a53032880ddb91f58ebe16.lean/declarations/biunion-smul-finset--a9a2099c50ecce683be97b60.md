# biUnion_smul_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b39f1584-be68-bc33-216d-f081756b032d",
  "kind": "lemma",
  "lexical_name": "biUnion_smul_finset",
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
  "slug": "biunion-smul-finset--a9a2099c50ecce683be97b60",
  "source": {
    "blob": "5b722477fd2b0986abef0e6e922d02de594edf84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 225,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variant7f865f53e5fcbfa7129a58954d943350c63ea5ace3a53032880ddb91f58ebe16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9a2099c50ecce683be97b60eef4819f9d93e0aaf96c65b00c1b887cf50770cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Scalar/Variant7f865f53e5fcbfa7129a58954d943350c63ea5ace3a53032880ddb91f58ebe16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b39f1584-be68-bc33-216d-f081756b032d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma biUnion_smul_finset (s : Finset α) (t : Finset β) : s.biUnion (· • t) = s • t :=
  biUnion_image_left

end SMul

open scoped Pointwise

/-! ### Instances -/

open scoped Pointwise

/-! ### Scalar division and subtraction of finsets -/

section SDiv

variable [SDiv α β] [DecidableEq α] {s s₁ s₂ t t₁ t₂ : Finset β} {u : Finset α} {a : α} {b c : β}

/-- The pointwise division of two finsets `s` and `t`: `s /ₛ t = {x /ₛ y | x ∈ s, y ∈ t}`. -/
@[to_additive (attr := instance_reducible)
  /-- The pointwise subtraction of two finsets `s` and `t`: `s -ᵥ t = {x -ᵥ y | x ∈ s, y ∈ t}`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Scalar/Variant7f865f53e5fcbfa7129a58954d943350c63ea5ace3a53032880ddb91f58ebe16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variant7f865f53e5fcbfa7129a58954d943350c63ea5ace3a53032880ddb91f58ebe16.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b722477fd2b0986abef0e6e922d02de594edf84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
