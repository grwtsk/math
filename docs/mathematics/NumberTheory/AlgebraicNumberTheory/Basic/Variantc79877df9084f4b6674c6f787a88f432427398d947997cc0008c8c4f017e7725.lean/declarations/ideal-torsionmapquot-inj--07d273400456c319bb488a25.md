# Ideal.torsionMapQuot_inj'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db683007f03664e2020ace3a71a069e9a1ec25af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea7b7f71-617d-2982-edca-a6fe79ab7159",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48404bfa-1c7c-7235-de90-a26c6538433d",
  "kind": "theorem",
  "lexical_name": "Ideal.torsionMapQuot_inj'",
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
  "slug": "ideal-torsionmapquot-inj--07d273400456c319bb488a25",
  "source": {
    "blob": "db683007f03664e2020ace3a71a069e9a1ec25af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 164,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07d273400456c319bb488a25d180852c03c732c5049836c9f7b6bad2c0d5ff80",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48404bfa-1c7c-7235-de90-a26c6538433d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.torsionMapQuot_inj' {P : Ideal (𝓞 K)} [hP : P.IsPrime]
    (hP₁ : Algebra.IsUnramifiedAt ℤ P) (hP₂ : 2 < absNorm (under ℤ P)) {x y : torsion K} :
    P.torsionMapQuot x = P.torsionMapQuot y ↔ x = y :=
  (torsionMapQuot_injective' hP₁ hP₂).eq_iff

/--
If the norm of the (nonzero) prime ideal `P` is coprime with the order of the torsion of `K`, then
the norm of `P` is congruent to `1` modulo `torsionOrder K`.

See `NumberField.torsionOrder_dvd_absNorm_sub_one'` for a version where this coprimality is replaced
by `P` being unramified over `ℤ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db683007f03664e2020ace3a71a069e9a1ec25af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
