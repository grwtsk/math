# exists_sq_eq_prime_iff_of_mod_four_eq_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84bcb8dc-327b-1416-0c92-1748fabd3ca4",
  "kind": "theorem",
  "lexical_name": "exists_sq_eq_prime_iff_of_mod_four_eq_three",
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
  "slug": "exists-sq-eq-prime-iff-of-mod-four-eq-three--a12740c68a1afa6673310f4a",
  "source": {
    "blob": "244d3435c1d70956d8fe3257bd7b102edc771ea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 191,
    "path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a12740c68a1afa6673310f4aadc567a8de9913160d4c16a9e7d8dc8aa8b2455e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84bcb8dc-327b-1416-0c92-1748fabd3ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_sq_eq_prime_iff_of_mod_four_eq_three (hp3 : p % 4 = 3) (hq3 : q % 4 = 3)
    (hpq : p ≠ q) : IsSquare (q : ZMod p) ↔ ¬IsSquare (p : ZMod q) := by
  rw [← eq_one_iff' p (prime_ne_zero p q hpq), ← eq_neg_one_iff' q,
    quadratic_reciprocity_three_mod_four hp3 hq3, neg_inj]
#align zmod.exists_sq_eq_prime_iff_of_mod_four_eq_three ZMod.exists_sq_eq_prime_iff_of_mod_four_eq_three

end ZMod

end Reciprocity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `244d3435c1d70956d8fe3257bd7b102edc771ea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
