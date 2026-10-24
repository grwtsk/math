# not_tendsto_pow_atTop_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:701abe3d-10c4-a891-77fc-e51831d84ddc",
  "kind": "theorem",
  "lexical_name": "not_tendsto_pow_atTop_atBot",
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
  "slug": "not-tendsto-pow-attop-atbot--05ca3ae77973d7dd7591180e",
  "source": {
    "blob": "cd2905f82d3ccf7f154e498ec7fada879ea2172c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05ca3ae77973d7dd7591180ed6f9719048880fbee4e98ff2eadad22048b7528b",
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

Occurrence: `result:701abe3d-10c4-a891-77fc-e51831d84ddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_tendsto_pow_atTop_atBot [Ring α] [LinearOrder α] [IsStrictOrderedRing α] :
    ∀ {n : ℕ}, ¬Tendsto (fun x : α => x ^ n) atTop atBot
  | 0 => by simp [not_tendsto_const_atBot]
  | n + 1 => (tendsto_pow_atTop n.succ_ne_zero).not_tendsto disjoint_atTop_atBot

end Filter

open Filter

variable {R : Type*} [Semiring R] [LinearOrder R] [IsStrictOrderedRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd2905f82d3ccf7f154e498ec7fada879ea2172c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
