# Poly.mul_go_NonnegCoeffs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bef07089fb88e27643bc64183b037fa15b9362ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 362,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63a35cb1-6065-cbb5-1092-036f6b5a128d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ff360b6-66c4-b0e0-9976-cb7505b65de7",
  "kind": "theorem",
  "lexical_name": "Poly.mul_go_NonnegCoeffs",
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
  "slug": "poly-mul-go-nonnegcoeffs--a0c0bc35c25b1bb5927f44d5",
  "source": {
    "blob": "bef07089fb88e27643bc64183b037fa15b9362ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 362,
    "path": "GRWTSK/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0c0bc35c25b1bb5927f44d55db27eefcc1385c697a3bf47c996fe14b8198c61",
  "verification": {
    "reference": "docs/verification/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ff360b6-66c4-b0e0-9976-cb7505b65de7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.mul_go_NonnegCoeffs (p₁ p₂ acc : Poly)
    : p₁.NonnegCoeffs → p₂.NonnegCoeffs → acc.NonnegCoeffs → (mul.go p₂ p₁ acc).NonnegCoeffs := by
  fun_induction mul.go
  next =>
    intro h₁ h₂ h₃
    cases h₁; rename_i h₁
    have := mulConst_NonnegCoeffs h₁ h₂
    apply combine_NonnegCoeffs <;> assumption
  next ih =>
    intro h₁ h₂ h₃
    cases h₁
    apply ih
    assumption; assumption
    apply Poly.combine_NonnegCoeffs; assumption
    apply Poly.mulMon_NonnegCoeffs <;> assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bef07089fb88e27643bc64183b037fa15b9362ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
