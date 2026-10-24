# next_source_le_of_primePower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:515d5ca4-c0e1-189d-9045-8e239c3ddad6",
  "kind": "theorem",
  "lexical_name": "next_source_le_of_primePower",
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
  "slug": "next-source-le-of-primepower--5fb88d3dd2fc12ba72f30adf",
  "source": {
    "blob": "117142b9f17a4a5bcda5dcbf8b462d3cee1806dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fb88d3dd2fc12ba72f30adfa509cfbb79b1813770dde4c3493ba5f2269a53d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:515d5ca4-c0e1-189d-9045-8e239c3ddad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem next_source_le_of_primePower
    (n q : ℕ)
    (hleft : canonicalPrimePowerPackingSequence.source n < q)
    (hq : IsPrimePow q) :
    canonicalPrimePowerPackingSequence.source (n + 1) ≤ q :=
  canonicalPrimePowerValueSequence_next_le n q hleft hq

end canonicalPrimePowerPackingSequence

/-- The remaining zeta-facing data for one actual nontrivial zero: only the
comparison coefficient and complete residual ledger remain analytic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117142b9f17a4a5bcda5dcbf8b462d3cee1806dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
