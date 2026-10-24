# Coprime.coprime_mul_right_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed5514fe0c035b9a0352ca46bc5e95b608033735",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe98dcdfe07b52b5d6878895d917309245f5c583213bfed391090eb5d4f2f2eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27bf0b25-162c-e558-9df3-c4f3c16f046f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dfadb78-22a8-773b-d77b-e38f2d3a57f4",
  "kind": "theorem",
  "lexical_name": "Coprime.coprime_mul_right_right",
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
  "slug": "coprime-coprime-mul-right-right--d9951b82bd16a5721d13b454",
  "source": {
    "blob": "ed5514fe0c035b9a0352ca46bc5e95b608033735",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 330,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variantfe98dcdfe07b52b5d6878895d917309245f5c583213bfed391090eb5d4f2f2eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9951b82bd16a5721d13b454a7038ac7c43d66ec70ad328d93686db7bc1a4bed",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GCD/Variantfe98dcdfe07b52b5d6878895d917309245f5c583213bfed391090eb5d4f2f2eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dfadb78-22a8-773b-d77b-e38f2d3a57f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Coprime.coprime_mul_right_right (H : Coprime m (n * k)) : Coprime m n :=
  H.coprime_dvd_right (Nat.dvd_mul_right _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GCD/Variantfe98dcdfe07b52b5d6878895d917309245f5c583213bfed391090eb5d4f2f2eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variantfe98dcdfe07b52b5d6878895d917309245f5c583213bfed391090eb5d4f2f2eb.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed5514fe0c035b9a0352ca46bc5e95b608033735` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
