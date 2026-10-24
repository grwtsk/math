# tendsto_nat_floor_mul_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03acd4f9-f03b-3044-ecb5-ddb11822e5a7",
  "kind": "lemma",
  "lexical_name": "tendsto_nat_floor_mul_atTop",
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
  "slug": "tendsto-nat-floor-mul-attop--517b37cc33bcbc5174f64bb1",
  "source": {
    "blob": "45d61887e17c52bdaa0091563890dace3d6f25ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 685,
    "line": 677,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:517b37cc33bcbc5174f64bb170638c03eba215f0fe0fc7aa00fa9d8ffadc7328",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03acd4f9-f03b-3044-ecb5-ddb11822e5a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–685.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_nat_floor_mul_atTop {α : Type _}
    [Semifield α] [LinearOrder α] [IsStrictOrderedRing α] [FloorSemiring α]
    [Archimedean α] (a : α) (ha : 0 < a) : Tendsto (fun (x : ℕ) => ⌊a * x⌋₊) atTop atTop :=
  Tendsto.comp tendsto_nat_floor_atTop
    <| Tendsto.const_mul_atTop ha tendsto_natCast_atTop_atTop

variable {R : Type*} [TopologicalSpace R] [Field R] [LinearOrder R] [IsStrictOrderedRing R]
  [OrderTopology R] [FloorRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45d61887e17c52bdaa0091563890dace3d6f25ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
