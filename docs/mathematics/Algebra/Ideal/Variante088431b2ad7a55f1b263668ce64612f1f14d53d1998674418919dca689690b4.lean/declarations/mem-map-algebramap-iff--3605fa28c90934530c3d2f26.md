# mem_map_algebraMap_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:965815a7-bcbc-6641-5300-e3932cc5d63b",
  "kind": "theorem",
  "lexical_name": "mem_map_algebraMap_iff",
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
  "slug": "mem-map-algebramap-iff--3605fa28c90934530c3d2f26",
  "source": {
    "blob": "4040d9ab018926cf870a33a5f0fb78bfea948443",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 71,
    "path": "GRWTSK/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3605fa28c90934530c3d2f26ad6100ecd18bf7c6993c14793d56afdf6abbc06a",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:965815a7-bcbc-6641-5300-e3932cc5d63b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_map_algebraMap_iff {I : Ideal R} {z} : z ∈ Ideal.map (algebraMap R S) I ↔
    ∃ x : I × M, z * algebraMap R S x.2 = algebraMap R S x.1 := by
  constructor
  · change _ → z ∈ map_ideal M S I
    refine fun h => Ideal.mem_sInf.1 h fun z hz => ?_
    obtain ⟨y, hy⟩ := hz
    let Z : { x // x ∈ I } := ⟨y, hy.left⟩
    use ⟨Z, 1⟩
    simp [Z, hy.right]
  · rintro ⟨⟨a, s⟩, h⟩
    rw [← Ideal.unit_mul_mem_iff_mem _ (map_units S s), mul_comm]
    exact h.symm ▸ Ideal.mem_map_of_mem _ a.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4040d9ab018926cf870a33a5f0fb78bfea948443` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
