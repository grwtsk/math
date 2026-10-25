# nat_power_aleph0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc2e0a14-de3d-0b0a-b570-b75b5bce07ea",
  "kind": "theorem",
  "lexical_name": "nat_power_aleph0",
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
  "slug": "nat-power-aleph0--c71cfee2ce63b2d7c114e764",
  "source": {
    "blob": "0d7dd9599d5b38af0f8a90d461493cf263220f17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c71cfee2ce63b2d7c114e764a205568d8963bc16fdbfbb9074aae9f92e18c20a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc2e0a14-de3d-0b0a-b570-b75b5bce07ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_power_aleph0 {n : ℕ} (hn : 2 ≤ n) : n ^ ℵ₀ = 𝔠 :=
  nat_power_eq le_rfl hn

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d7dd9599d5b38af0f8a90d461493cf263220f17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
