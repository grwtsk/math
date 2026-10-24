# RingHom.charP_iff_charP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56c8bf20eae6fd937bef29c7c4396b716e621de4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75cc07a942c279bf5326f685c7854b9495cc4c134c72ac51e0586c6ab2e8f566.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16ea168b-0b94-000b-5ab4-0c2a8117f993",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b11d979c-8fca-6e88-c03e-e3d9d29e2bff",
  "kind": "theorem",
  "lexical_name": "RingHom.charP_iff_charP",
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
  "slug": "ringhom-charp-iff-charp--1797e67f82a029a614331125",
  "source": {
    "blob": "56c8bf20eae6fd937bef29c7c4396b716e621de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 322,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant75cc07a942c279bf5326f685c7854b9495cc4c134c72ac51e0586c6ab2e8f566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1797e67f82a029a614331125e5ebd0865a62918856efa25434c260b9aea2ad49",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant75cc07a942c279bf5326f685c7854b9495cc4c134c72ac51e0586c6ab2e8f566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b11d979c-8fca-6e88-c03e-e3d9d29e2bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RingHom.charP_iff_charP {K L : Type*} [DivisionRing K] [Semiring L] [Nontrivial L]
    (f : K →+* L) (p : ℕ) : CharP K p ↔ CharP L p := by
  simp only [charP_iff, ← f.injective.eq_iff, map_natCast f, f.map_zero]
#align ring_hom.char_p_iff_char_p RingHom.charP_iff_charP

section frobenius

section CommSemiring

variable [CommSemiring R] {S : Type v} [CommSemiring S] (f : R →* S) (g : R →+* S) (p : ℕ)
  [Fact p.Prime] [CharP R p] [CharP S p] (x y : R)

/-- The frobenius map that sends x to x^p -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant75cc07a942c279bf5326f685c7854b9495cc4c134c72ac51e0586c6ab2e8f566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant75cc07a942c279bf5326f685c7854b9495cc4c134c72ac51e0586c6ab2e8f566.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56c8bf20eae6fd937bef29c7c4396b716e621de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
