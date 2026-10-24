# Ideal.torsionMapQuot_inj

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
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3277fb03-2e98-b6be-c9c8-93bf2c722dc4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24a378db-8bc6-4ef4-7822-c9b35458f2b8",
  "kind": "theorem",
  "lexical_name": "Ideal.torsionMapQuot_inj",
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
  "slug": "ideal-torsionmapquot-inj--ab11025e3f2acde4c8f85715",
  "source": {
    "blob": "db683007f03664e2020ace3a71a069e9a1ec25af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab11025e3f2acde4c8f85715e32a34c4a7688a3652d0a50d447e4a13e905a0d0",
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

Occurrence: `result:24a378db-8bc6-4ef4-7822-c9b35458f2b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.torsionMapQuot_inj (hI₁ : absNorm I ≠ 1)
    (hI₂ : (absNorm I).Coprime (torsionOrder K)) {x y : torsion K} :
    torsionMapQuot I x = torsionMapQuot I y ↔ x = y :=
  (torsionMapQuot_injective hI₁ hI₂).eq_iff

open IntermediateField in
/--
If the prime ideal `P` is unramified over `ℤ` and the norm of the prime of `ℤ` lying under `P` is
greater than `2`, then the map `Ideal.torsionMapQuot` is injective.

See `Ideal.torsionMapQuot_injective` for a version where, instead, the norm of the ideal is
assumed coprime with `torsionOrder K`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db683007f03664e2020ace3a71a069e9a1ec25af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
