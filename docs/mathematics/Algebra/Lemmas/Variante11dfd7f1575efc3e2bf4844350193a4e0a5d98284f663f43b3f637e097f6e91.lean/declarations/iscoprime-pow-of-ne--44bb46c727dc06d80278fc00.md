# isCoprime_pow_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "686c0c8b6fa489e9b367a44f2bf30d2992107068",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 556,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e62df914-7c13-cab5-a00f-975df41b672a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a11dd2b7-de20-7d4a-c580-59e70a12f430",
  "kind": "theorem",
  "lexical_name": "isCoprime_pow_of_ne",
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
  "slug": "iscoprime-pow-of-ne--44bb46c727dc06d80278fc00",
  "source": {
    "blob": "686c0c8b6fa489e9b367a44f2bf30d2992107068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 556,
    "path": "GRWTSK/Algebra/Lemmas/Variante11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44bb46c727dc06d80278fc007e65e4361974d9468025b37e3a721d21fcdb71e5",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variante11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a11dd2b7-de20-7d4a-c580-59e70a12f430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCoprime_pow_of_ne (P Q : HeightOneSpectrum R) (hPQ : P ≠ Q) (n m : ℕ) :
    IsCoprime (P.asIdeal ^ n) (Q.asIdeal ^ m) :=
  Ideal.isCoprime_iff_sup_eq.mpr (Ideal.pow_sup_pow_eq_top (P.isCoprime_of_ne Q hPQ).sup_eq)

variable (R)

/-- A Dedekind domain is equal to the intersection of its localizations at all its height one
non-zero prime ideals viewed as subalgebras of its field of fractions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variante11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variante11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `686c0c8b6fa489e9b367a44f2bf30d2992107068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
