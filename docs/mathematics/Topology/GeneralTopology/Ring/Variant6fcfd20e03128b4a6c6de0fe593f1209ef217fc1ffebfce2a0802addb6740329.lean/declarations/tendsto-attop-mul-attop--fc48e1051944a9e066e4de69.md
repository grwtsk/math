# Tendsto.atTop_mul_atTop₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc69e0bb-7460-25b8-6475-8ff8d96d0955",
  "kind": "theorem",
  "lexical_name": "Tendsto.atTop_mul_atTop₀",
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
  "slug": "tendsto-attop-mul-attop--fc48e1051944a9e066e4de69",
  "source": {
    "blob": "cd2905f82d3ccf7f154e498ec7fada879ea2172c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc48e1051944a9e066e4de690f76ff6fd8ea770869cd537beff782649948f263",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc69e0bb-7460-25b8-6475-8ff8d96d0955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.atTop_mul_atTop₀ (hf : Tendsto f l atTop) (hg : Tendsto g l atTop) :
    Tendsto (fun x => f x * g x) l atTop := by
  refine tendsto_atTop_mono' _ ?_ hg
  filter_upwards [hg.eventually (eventually_ge_atTop 0),
    hf.eventually (eventually_ge_atTop 1)] with _ using le_mul_of_one_le_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd2905f82d3ccf7f154e498ec7fada879ea2172c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
