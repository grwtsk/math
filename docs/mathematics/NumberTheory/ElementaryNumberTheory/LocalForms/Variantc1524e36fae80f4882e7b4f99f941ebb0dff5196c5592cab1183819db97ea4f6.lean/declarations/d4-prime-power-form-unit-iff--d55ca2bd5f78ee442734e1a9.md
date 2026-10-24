# d4_prime_power_form_unit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95ad2ee4-7995-68ae-3402-18342e35893b",
  "kind": "theorem",
  "lexical_name": "d4_prime_power_form_unit_iff",
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
  "slug": "d4-prime-power-form-unit-iff--d55ca2bd5f78ee442734e1a9",
  "source": {
    "blob": "19a3510b8400143f68a4aaf5836da1fefaeffbbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 47,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d55ca2bd5f78ee442734e1a9b25b7a17d293d13862a9266f578b4e49ecc4907e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95ad2ee4-7995-68ae-3402-18342e35893b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem d4_prime_power_form_unit_iff (p k : ℕ) (hk : 0 < k) :
    IsUnit (d4ReducedCartan (p ^ k)) ↔ Nat.Coprime 4 p := by
  rw [d4_reduced_form_unit_iff, Nat.coprime_pow_right_iff hk]

/-- Every positive power of an odd modulus base preserves a nondegenerate D4
form; powers of two do not. E8 has determinant one for either choice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19a3510b8400143f68a4aaf5836da1fefaeffbbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
