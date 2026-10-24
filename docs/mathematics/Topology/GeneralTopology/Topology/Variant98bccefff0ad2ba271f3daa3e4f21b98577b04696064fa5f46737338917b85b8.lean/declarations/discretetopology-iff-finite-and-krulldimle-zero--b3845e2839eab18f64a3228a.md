# discreteTopology_iff_finite_and_krullDimLE_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cb95519-26f3-b290-210a-43ca83ce19b2",
  "kind": "theorem",
  "lexical_name": "discreteTopology_iff_finite_and_krullDimLE_zero",
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
  "slug": "discretetopology-iff-finite-and-krulldimle-zero--b3845e2839eab18f64a3228a",
  "source": {
    "blob": "6004cfed563644228ff88a81cb0169958b10de93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 308,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3845e2839eab18f64a3228a2c87c4c7bc7a57e1b5c3ed5904a759710809bf3f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cb95519-26f3-b290-210a-43ca83ce19b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteTopology_iff_finite_and_krullDimLE_zero : DiscreteTopology (PrimeSpectrum R) ↔
    Finite (PrimeSpectrum R) ∧ Ring.KrullDimLE 0 R :=
  ⟨fun _ ↦ ⟨finite_of_compact_of_discrete, .mk₀ fun I h ↦ isClosed_singleton_iff_isMaximal ⟨I, h⟩
    |>.mp <| discreteTopology_iff_forall_isClosed.mp ‹_› _⟩, fun ⟨_, _⟩ ↦
    .of_finite_of_isClosed_singleton fun p ↦ (isClosed_singleton_iff_isMaximal p).mpr inferInstance⟩

/-- The prime spectrum of a semiring has discrete Zariski topology iff there are only
finitely many maximal ideals and their intersection is contained in the nilradical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6004cfed563644228ff88a81cb0169958b10de93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
