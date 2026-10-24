# exists_mulChar_orderOf_eq_card_units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90102fbc7a80e4dca25c75de152c3aa1eae2538d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a9f76a0-154b-a780-e343-e59d519144b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2704705d-898c-0daa-9eb7-6481c0b1af65",
  "kind": "lemma",
  "lexical_name": "exists_mulChar_orderOf_eq_card_units",
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
  "slug": "exists-mulchar-orderof-eq-card-units--ef72b8701f3e43bcf3b13db6",
  "source": {
    "blob": "90102fbc7a80e4dca25c75de152c3aa1eae2538d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 173,
    "path": "GRWTSK/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef72b8701f3e43bcf3b13db6b5d4d607b7c5bafc576333ed5251c94eb8650411",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2704705d-898c-0daa-9eb7-6481c0b1af65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mulChar_orderOf_eq_card_units [DecidableEq F]
    {ζ : R} (hζ : IsPrimitiveRoot ζ (Fintype.card Fˣ)) :
    ∃ χ : MulChar F R, orderOf χ = Fintype.card Fˣ :=
  exists_mulChar_orderOf F (by rw [Fintype.card_units]) hζ

end Fintype

variable {F : Type*} [Field F] [Finite F]
variable {R : Type*} [CommRing R]

/- The non-zero values of a multiplicative character of order `n` are `n`th roots of unity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90102fbc7a80e4dca25c75de152c3aa1eae2538d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
