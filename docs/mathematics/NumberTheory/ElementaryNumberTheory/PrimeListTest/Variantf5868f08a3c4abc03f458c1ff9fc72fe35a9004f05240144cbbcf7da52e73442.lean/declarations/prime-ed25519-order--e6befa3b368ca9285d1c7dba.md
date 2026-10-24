# prime_ed25519_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee97c6df-318e-cf7b-ffa0-4a81c12359f7",
  "kind": "theorem",
  "lexical_name": "prime_ed25519_order",
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
  "slug": "prime-ed25519-order--e6befa3b368ca9285d1c7dba",
  "source": {
    "blob": "381bd183ddf0e1db28658c58a47e694858f195d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 131,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeListTest/Variantf5868f08a3c4abc03f458c1ff9fc72fe35a9004f05240144cbbcf7da52e73442.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6befa3b368ca9285d1c7dba84760aa2df8a41abf30d87318d2ccf74e8e23fc3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeListTest/Variantf5868f08a3c4abc03f458c1ff9fc72fe35a9004f05240144cbbcf7da52e73442.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee97c6df-318e-cf7b-ffa0-4a81c12359f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_ed25519_order : Nat.Prime (2 ^ 252 + 27742317777372353535851937790883648493) := pock%
  [5, 17, 73;
  (2551, 2, 5 ^ 2 * 17),
  (3797, 2, 73),
  (531581, 2, 3797),
  (1224481, 2, 2551),
  (1257559732178653, 2, 531581 * 1224481),
  (4434155615661930479, 2, 1257559732178653),
  (172054593956031949258510691, 2, 4434155615661930479),
  (19757330305831588566944191468367130476339, 2, 172054593956031949258510691),
  (276602624281642239937218680557139826668747, 2, 19757330305831588566944191468367130476339),
  (7237005577332262213973186563042994240857116359379907606001950938285454250989, 2,
    276602624281642239937218680557139826668747)]

end PrimeCert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeListTest/Variantf5868f08a3c4abc03f458c1ff9fc72fe35a9004f05240144cbbcf7da52e73442.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeListTest/Variantf5868f08a3c4abc03f458c1ff9fc72fe35a9004f05240144cbbcf7da52e73442.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `381bd183ddf0e1db28658c58a47e694858f195d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
