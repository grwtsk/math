# gaussSum_eq_zero_of_isPrimitive_of_not_isPrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a9dab37c8e891357cf7850cc013548bed36911",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74278dba-c0ac-f9da-02fb-a4c8ee4b5c54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a40ae51a-9909-2105-bda9-cbdf50a09632",
  "kind": "lemma",
  "lexical_name": "gaussSum_eq_zero_of_isPrimitive_of_not_isPrimitive",
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
  "slug": "gausssum-eq-zero-of-isprimitive-of-not-isprimitive--fe8b16cb8f181f2667cfaa8f",
  "source": {
    "blob": "f6a9dab37c8e891357cf7850cc013548bed36911",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe8b16cb8f181f2667cfaa8f0232ee682ba11a71b5cf9755a293ca30c6c75327",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a40ae51a-9909-2105-bda9-cbdf50a09632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussSum_eq_zero_of_isPrimitive_of_not_isPrimitive [IsDomain R]
    {χ : DirichletCharacter R N} (hχ : IsPrimitive χ) (he : ¬IsPrimitive e) :
    gaussSum χ e = 0 := by
  contrapose! hχ
  rcases e.exists_divisor_of_not_isPrimitive he with ⟨d, hd₁, hd₂, hed⟩
  have : χ.conductor ≤ d := Nat.sInf_le <| factorsThrough_of_gaussSum_ne_zero e hd₁ hed hχ
  exact (this.trans_lt hd₂).ne

/-- If `χ` is a primitive character, then the function `a ↦ gaussSum χ (e.mulShift a)`, for any
fixed additive character `e`, is a constant multiple of `χ⁻¹`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a9dab37c8e891357cf7850cc013548bed36911` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
