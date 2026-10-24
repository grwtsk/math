# MayConsume.distinctBoundaryStartsWithTransport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f5e5537-99da-2964-705b-f92e1dcad845",
  "kind": "theorem",
  "lexical_name": "MayConsume.distinctBoundaryStartsWithTransport",
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
  "slug": "mayconsume-distinctboundarystartswithtransport--ca304a64625ed2250c92a572",
  "source": {
    "blob": "f8a338fcbecb87d91e6611aa774236b79b996466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 96,
    "path": "GRWTSK/Algebra/Boundary/Variant36aeaade2964ae43a537c9e4292c7f334600d5d8e542914be2ef2c99e7918ca1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca304a64625ed2250c92a572096ad33330a2fa42df3989f448618de62d8ebb06",
  "verification": {
    "reference": "docs/verification/Algebra/Boundary/Variant36aeaade2964ae43a537c9e4292c7f334600d5d8e542914be2ef2c99e7918ca1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f5e5537-99da-2964-705b-f92e1dcad845`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MayConsume.distinctBoundaryStartsWithTransport
    {source target : BoundaryKey}
    {transports : List BoundaryTransport}
    (different : source ≠ target)
    (mayConsume : MayConsume source target transports) :
    ∃ transport ∈ transports,
      transport.source = source := by
  cases mayConsume with
  | refl => exact False.elim (different rfl)
  | step transport member _ =>
      exact ⟨transport, member, rfl⟩

end Mathematics.AbelReynolds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Boundary/Variant36aeaade2964ae43a537c9e4292c7f334600d5d8e542914be2ef2c99e7918ca1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Boundary/Variant36aeaade2964ae43a537c9e4292c7f334600d5d8e542914be2ef2c99e7918ca1.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a338fcbecb87d91e6611aa774236b79b996466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
