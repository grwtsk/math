# primPart_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b317f3e1371b32d47162d04e20a03d11533894c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9373cae9-e20e-00f6-90f0-3c17fcb84439",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ff4a20a-6e3d-761e-e806-c179db952b8b",
  "kind": "theorem",
  "lexical_name": "primPart_mul",
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
  "slug": "primpart-mul--d2bcb6146268a0ac0d571423",
  "source": {
    "blob": "8b317f3e1371b32d47162d04e20a03d11533894c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 389,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variant85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2bcb6146268a0ac0d5714234458cc9333873672a0712d735c0d59a891124728",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Content/Variant85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ff4a20a-6e3d-761e-e806-c179db952b8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primPart_mul {R} [CommRing R] [StrongNormalizedGCDMonoid R] {p q : R[X]} (h0 : p * q ≠ 0) :
    (p * q).primPart = p.primPart * q.primPart := by
  rw [Ne, ← content_eq_zero_iff, ← C_eq_zero] at h0
  apply mul_left_cancel₀ h0
  conv_lhs =>
    rw [← (p * q).eq_C_content_mul_primPart, p.eq_C_content_mul_primPart,
      q.eq_C_content_mul_primPart]
  rw [content_mul, map_mul]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Content/Variant85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Content/Variant85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b317f3e1371b32d47162d04e20a03d11533894c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
