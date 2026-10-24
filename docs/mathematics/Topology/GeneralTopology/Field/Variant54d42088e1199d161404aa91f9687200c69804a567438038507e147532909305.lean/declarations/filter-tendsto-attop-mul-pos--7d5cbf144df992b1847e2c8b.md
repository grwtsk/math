# Filter.Tendsto.atTop_mul_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8ef9da3-31c9-d41f-4620-aae7e4faeb88",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.atTop_mul_pos",
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
  "slug": "filter-tendsto-attop-mul-pos--7d5cbf144df992b1847e2c8b",
  "source": {
    "blob": "ec1f164a4c97f723ff80718721ca32ebd1c8dc21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant54d42088e1199d161404aa91f9687200c69804a567438038507e147532909305.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d5cbf144df992b1847e2c8bad20516fff4a3c90ab939a1d461023da6880e038",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant54d42088e1199d161404aa91f9687200c69804a567438038507e147532909305.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8ef9da3-31c9-d41f-4620-aae7e4faeb88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.atTop_mul_pos {C : 𝕜} (hC : 0 < C) (hf : Tendsto f l atTop)
    (hg : Tendsto g l (𝓝 C)) : Tendsto (fun x => f x * g x) l atTop := by
  refine tendsto_atTop_mono' _ ?_ (hf.atTop_mul_const (half_pos hC))
  filter_upwards [hg.eventually (lt_mem_nhds (half_lt_self hC)), hf.eventually_ge_atTop 0] with x hg
    hf using mul_le_mul_of_nonneg_left hg.le hf

-- TODO: after removing this deprecated alias,
-- rename `Filter.Tendsto.atTop_mul'` to `Filter.Tendsto.atTop_mul`.
-- Same for the other 3 similar aliases below.
/-- In a linearly ordered semifield with the order topology, if `f` tends to a positive constant `C`
and `g` tends to `Filter.atTop` then `f * g` tends to `Filter.atTop`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant54d42088e1199d161404aa91f9687200c69804a567438038507e147532909305.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant54d42088e1199d161404aa91f9687200c69804a567438038507e147532909305.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec1f164a4c97f723ff80718721ca32ebd1c8dc21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
