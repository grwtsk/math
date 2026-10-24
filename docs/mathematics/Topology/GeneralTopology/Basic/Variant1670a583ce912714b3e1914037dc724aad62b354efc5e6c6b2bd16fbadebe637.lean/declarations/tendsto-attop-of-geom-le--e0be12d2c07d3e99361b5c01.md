# tendsto_atTop_of_geom_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e7ebec1-9be2-b2e2-afd0-fc2318df0800",
  "kind": "theorem",
  "lexical_name": "tendsto_atTop_of_geom_le",
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
  "slug": "tendsto-attop-of-geom-le--e0be12d2c07d3e99361b5c01",
  "source": {
    "blob": "c902b2b00ec3c528e0f33d8de642fb31f0672aa1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0be12d2c07d3e99361b5c0104381b8d598f8460696022a9f46493578f84a1a3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e7ebec1-9be2-b2e2-afd0-fc2318df0800`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_atTop_of_geom_le {v : ℕ → ℝ} {c : ℝ} (h₀ : 0 < v 0) (hc : 1 < c)
    (hu : ∀ n, c * v n ≤ v (n + 1)) : Tendsto v atTop atTop :=
  (tendsto_atTop_mono fun n => geom_le (zero_le_one.trans hc.le) n fun k _ => hu k) <|
    (tendsto_pow_atTop_atTop_of_one_lt hc).atTop_mul_const h₀
#align tendsto_at_top_of_geom_le tendsto_atTop_of_geom_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c902b2b00ec3c528e0f33d8de642fb31f0672aa1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
