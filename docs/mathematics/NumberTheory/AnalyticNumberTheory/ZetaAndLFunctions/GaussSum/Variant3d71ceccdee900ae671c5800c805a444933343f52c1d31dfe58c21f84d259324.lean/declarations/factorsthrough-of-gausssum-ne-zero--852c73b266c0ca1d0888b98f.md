# factorsThrough_of_gaussSum_ne_zero

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
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7005ceeb-efbe-8ce8-524a-03ccf49212a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:368de34d-d111-146b-307a-2daffbf1d785",
  "kind": "lemma",
  "lexical_name": "factorsThrough_of_gaussSum_ne_zero",
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
  "slug": "factorsthrough-of-gausssum-ne-zero--852c73b266c0ca1d0888b98f",
  "source": {
    "blob": "f6a9dab37c8e891357cf7850cc013548bed36911",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:852c73b266c0ca1d0888b98faebb04ba0db1a3b456804d97d45058d510ff7442",
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

Occurrence: `result:368de34d-d111-146b-307a-2daffbf1d785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma factorsThrough_of_gaussSum_ne_zero [IsDomain R] {χ : DirichletCharacter R N} {d : ℕ}
    (hd : d ∣ N) (he : e.mulShift d = 1) (h_ne : gaussSum χ e ≠ 0) :
    χ.FactorsThrough d := by
  rw [DirichletCharacter.factorsThrough_iff_ker_unitsMap hd]
  intro u hu
  rw [MonoidHom.mem_ker, ← Units.eq_iff, MulChar.coe_toUnitHom]
  simpa only [Units.val_one, ne_eq, h_ne, not_false_eq_true, mul_eq_right₀] using
    gaussSum_aux_of_mulShift e χ hd he hu

/-- If `χ` is primitive, but `e` is not, then `gaussSum χ e = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a9dab37c8e891357cf7850cc013548bed36911` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
