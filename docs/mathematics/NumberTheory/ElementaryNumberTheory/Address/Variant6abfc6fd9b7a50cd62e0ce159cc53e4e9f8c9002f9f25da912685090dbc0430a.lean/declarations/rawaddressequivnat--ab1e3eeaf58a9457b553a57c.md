# rawAddressEquivNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f819df0a8eaaa95a8f0d3cdcd0c34da7c05f8eaef52d3b5fe2b98347fd03497",
  "kind": "def",
  "lexical_name": "rawAddressEquivNat",
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
  "slug": "rawaddressequivnat--ab1e3eeaf58a9457b553a57c",
  "source": {
    "blob": "b857f93c3b10ae7f6afc340f0fbc28eff02e4bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 110,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab1e3eeaf58a9457b553a57c01819f0ec91e00568ebd8a2723585f2c5afabe99",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f819df0a8eaaa95a8f0d3cdcd0c34da7c05f8eaef52d3b5fe2b98347fd03497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rawAddressEquivNat : RawCarrierAddress ≃ Nat where
  toFun address :=
    Nat.pair address.occurrence
      (Nat.pair address.specification address.coordinate)
  invFun value :=
    let outer := Nat.unpair value
    let inner := Nat.unpair outer.2
    ⟨outer.1, inner.1, inner.2⟩
  left_inv address := by
    cases address
    simp
  right_inv value := by
    simp

/-- A concrete enumeration of raw triples; it is not the certified increasing
enumeration of the restricted sequential-prime carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b857f93c3b10ae7f6afc340f0fbc28eff02e4bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
