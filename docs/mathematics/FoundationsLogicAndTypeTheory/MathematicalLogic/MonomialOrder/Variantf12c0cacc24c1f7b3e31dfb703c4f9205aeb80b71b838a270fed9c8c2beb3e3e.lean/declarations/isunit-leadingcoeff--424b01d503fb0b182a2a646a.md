# isUnit_leadingCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64590f34d71502304351212c343ee05ad8727122",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 647,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f12c0cacc24c1f7b3e31dfb703c4f9205aeb80b71b838a270fed9c8c2beb3e3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:567a197d-8645-d2e2-1689-f8d1c203b486",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc236eb4-ecca-e97a-217b-e9d9102c222c",
  "kind": "theorem",
  "lexical_name": "isUnit_leadingCoeff",
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
  "slug": "isunit-leadingcoeff--424b01d503fb0b182a2a646a",
  "source": {
    "blob": "64590f34d71502304351212c343ee05ad8727122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 660,
    "line": 647,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantf12c0cacc24c1f7b3e31dfb703c4f9205aeb80b71b838a270fed9c8c2beb3e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:424b01d503fb0b182a2a646aaa22fec52d5df6b1f468947db3f561bf2d23bcaf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantf12c0cacc24c1f7b3e31dfb703c4f9205aeb80b71b838a270fed9c8c2beb3e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc236eb4-ecca-e97a-217b-e9d9102c222c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–660.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_leadingCoeff {f : MvPolynomial σ R} :
    IsUnit (m.leadingCoeff f) ↔ f ≠ 0 := by
  simp only [isUnit_iff_ne_zero, ne_eq, leadingCoeff_eq_zero_iff]

@[deprecated (since := "2025-01-31")] alias lCoeff_is_unit_iff := isUnit_leadingCoeff

end Field

section Binomial

variable {R : Type*} [CommRing R]

open Finsupp MvPolynomial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantf12c0cacc24c1f7b3e31dfb703c4f9205aeb80b71b838a270fed9c8c2beb3e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantf12c0cacc24c1f7b3e31dfb703c4f9205aeb80b71b838a270fed9c8c2beb3e3e.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64590f34d71502304351212c343ee05ad8727122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
