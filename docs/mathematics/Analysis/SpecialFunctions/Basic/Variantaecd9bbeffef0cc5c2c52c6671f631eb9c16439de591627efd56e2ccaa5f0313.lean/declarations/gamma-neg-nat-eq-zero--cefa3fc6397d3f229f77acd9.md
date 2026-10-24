# Gamma_neg_nat_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78241d02a3ed3f1e088d42bf3bc8e87a85456767",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 517,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/aecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:407bbe46-e58a-14f3-9443-dad32e203b0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ade8adf-0d90-4114-a1ee-51b16f536771",
  "kind": "theorem",
  "lexical_name": "Gamma_neg_nat_eq_zero",
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
  "slug": "gamma-neg-nat-eq-zero--cefa3fc6397d3f229f77acd9",
  "source": {
    "blob": "78241d02a3ed3f1e088d42bf3bc8e87a85456767",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 517,
    "path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cefa3fc6397d3f229f77acd9daec3a42468197b0d5912b0f29bd028aa34c87b5",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ade8adf-0d90-4114-a1ee-51b16f536771`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Gamma_neg_nat_eq_zero (n : ℕ) : Gamma (-n) = 0 := by
  simpa only [← Complex.ofReal_nat_cast, ← Complex.ofReal_neg, Complex.Gamma_ofReal,
    Complex.ofReal_eq_zero] using Complex.Gamma_neg_nat_eq_zero n
#align real.Gamma_neg_nat_eq_zero Real.Gamma_neg_nat_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78241d02a3ed3f1e088d42bf3bc8e87a85456767` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
