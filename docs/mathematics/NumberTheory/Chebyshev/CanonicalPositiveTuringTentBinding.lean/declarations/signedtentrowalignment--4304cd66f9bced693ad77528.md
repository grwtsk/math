# SignedTentRowAlignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4fe631d5fe6d40361c1fdeaa980cd74adda0a54828a3a2e19bfb52d122e6934",
  "kind": "structure",
  "lexical_name": "SignedTentRowAlignment",
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
  "slug": "signedtentrowalignment--4304cd66f9bced693ad77528",
  "source": {
    "blob": "9647212ee70d55ec57546eb2df107304e710042f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringTentBinding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4304cd66f9bced693ad7752817543ce5ab12d5aa98658ba0d9326da5a0deb2fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalPositiveTuringTentBinding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4fe631d5fe6d40361c1fdeaa980cd74adda0a54828a3a2e19bfb52d122e6934`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SignedTentRowAlignment
    (packet : CanonicalPositiveTuringPacket family)
    {k : ℕ} (rows : Fin k → WeightedInput) where
  rowEquiv : Fin k ≃ Sum Index Index
  weight_eq : ∀ i,
    (rows i).weight =
      (family.record (signedRecordIndex (rowEquiv i))).multiplicity
  coordinate : ∀ i,
    ‖(signedIndexMap packet (rowEquiv i)).1.1 -
      QComplex.embed (rows i).point.center‖ ≤
        ((rows i).point.coordinateError : ℝ)

namespace SignedTentRowAlignment

/-- The row family has exactly two signed copies of the positive record index.
This is a cardinality consequence of the supplied equivalence, not a source proof by itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalPositiveTuringTentBinding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringTentBinding.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9647212ee70d55ec57546eb2df107304e710042f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
