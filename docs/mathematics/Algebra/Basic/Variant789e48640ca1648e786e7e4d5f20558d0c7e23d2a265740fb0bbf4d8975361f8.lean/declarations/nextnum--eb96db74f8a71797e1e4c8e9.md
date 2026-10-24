# nextNum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56a1ad72949828f1e8327a3913cd62c1cbc89f891fbcb996295c9f487c0b2bf4",
  "kind": "def",
  "lexical_name": "nextNum",
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
  "slug": "nextnum--eb96db74f8a71797e1e4c8e9",
  "source": {
    "blob": "7e207585179dfed92de981abbe05c3a24f4ef291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 291,
    "path": "GRWTSK/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb96db74f8a71797e1e4c8e9dd2742ec4c1cac6ca26705c6c2120cd4b0e82685",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56a1ad72949828f1e8327a3913cd62c1cbc89f891fbcb996295c9f487c0b2bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nextNum (a b ppredA predA : K) : K :=
  b * predA + a * ppredA

/-- Returns the next denominator `Bₙ = bₙ₋₁ * Bₙ₋₁ + aₙ₋₁ * Bₙ₋₂`, where `predB` is `Bₙ₋₁` and
`ppredB` is `Bₙ₋₂`, `a` is `aₙ₋₁`, and `b` is `bₙ₋₁`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e207585179dfed92de981abbe05c3a24f4ef291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
