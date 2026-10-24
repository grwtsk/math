# Coprime.mul_gcd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8eac03865690984f848f912d5fb3812dad719e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1c6e7fb-3533-aa61-5be4-13ac5a23d288",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa1d5be0-8110-bb10-14b6-c577fc8416af",
  "kind": "theorem",
  "lexical_name": "Coprime.mul_gcd",
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
  "slug": "coprime-mul-gcd--de56e6268cd6bdf8b0f2370a",
  "source": {
    "blob": "b8eac03865690984f848f912d5fb3812dad719e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 184,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de56e6268cd6bdf8b0f2370a407a4854989fdd8509830401ad2cc576c017830d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa1d5be0-8110-bb10-14b6-c577fc8416af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Coprime.mul_gcd (h : Coprime m n) (k : Nat) : gcd (m * n) k = gcd m k * gcd n k := by
  rw [gcd_comm, h.gcd_mul, gcd_comm k, gcd_comm k]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8eac03865690984f848f912d5fb3812dad719e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
