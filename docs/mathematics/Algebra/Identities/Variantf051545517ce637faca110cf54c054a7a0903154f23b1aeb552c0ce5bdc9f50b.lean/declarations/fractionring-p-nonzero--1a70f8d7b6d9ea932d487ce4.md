# FractionRing.p_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6f10ce89d41e166bc5fa1d06415b31a50286bfa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2b5e81d-063a-3505-5e7b-6b80f6a9c0b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01bbab16-60f7-8054-b224-a143944e5a66",
  "kind": "theorem",
  "lexical_name": "FractionRing.p_nonzero",
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
  "slug": "fractionring-p-nonzero--1a70f8d7b6d9ea932d487ce4",
  "source": {
    "blob": "f6f10ce89d41e166bc5fa1d06415b31a50286bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 99,
    "path": "GRWTSK/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a70f8d7b6d9ea932d487ce4e06bbcbbd73379dd3f371311c957d7ef3a6f15b4",
  "verification": {
    "reference": "docs/verification/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01bbab16-60f7-8054-b224-a143944e5a66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FractionRing.p_nonzero [Nontrivial R] [CharP R p] : (p : FractionRing (𝕎 R)) ≠ 0 := by
  simpa using (IsFractionRing.injective (𝕎 R) (FractionRing (𝕎 R))).ne (WittVector.p_nonzero _ _)
#align witt_vector.fraction_ring.p_nonzero WittVector.FractionRing.p_nonzero

variable {p R}

-- Porting note: `ghost_calc` failure: `simp only []` and the manual instances had to be added.
/-- The “projection formula” for Frobenius and Verschiebung. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6f10ce89d41e166bc5fa1d06415b31a50286bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
