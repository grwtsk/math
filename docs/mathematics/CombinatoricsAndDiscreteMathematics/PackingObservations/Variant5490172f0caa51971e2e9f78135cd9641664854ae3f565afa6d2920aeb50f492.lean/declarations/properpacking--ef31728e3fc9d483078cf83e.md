# ProperPacking

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bb4d9a8b1acdc5784f83d5d26ce46fd1aab73d4eea102800820588185a3b33d",
  "kind": "structure",
  "lexical_name": "ProperPacking",
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
  "slug": "properpacking--ef31728e3fc9d483078cf83e",
  "source": {
    "blob": "1e916e8853ecd803d63096c8fe933390d74b6ab9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 220,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef31728e3fc9d483078cf83e918419887792c8658ce4581556071a0e2dee7696",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0bb4d9a8b1acdc5784f83d5d26ce46fd1aab73d4eea102800820588185a3b33d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProperPacking where
  /-- Visible prime-support scale. -/
  y : ℕ
  /-- Visible valuation depth. -/
  r : ℕ
  /-- Explicit upper bound on every represented component. -/
  X : ℕ
  /-- Exact integer translates. -/
  pattern : Finset ℤ

/-- Only represented integers in `[2,X]` enter bounded classification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e916e8853ecd803d63096c8fe933390d74b6ab9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
