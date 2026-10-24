# bottom_row_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c8d7ecf-01be-f26a-7fa2-45a1bf5a82cd",
  "kind": "theorem",
  "lexical_name": "bottom_row_coprime",
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
  "slug": "bottom-row-coprime--f153699ae83da120926d4d42",
  "source": {
    "blob": "0b65e86e231f39c0a13cd4f3f817f39ac55e169e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f153699ae83da120926d4d4291b3b2a8720d1773240dd3333e116c415cb106ba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c8d7ecf-01be-f26a-7fa2-45a1bf5a82cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bottom_row_coprime {R : Type*} [CommRing R] (g : SL(2, R)) :
    IsCoprime ((↑g : Matrix (Fin 2) (Fin 2) R) 1 0) ((↑g : Matrix (Fin 2) (Fin 2) R) 1 1) := by
  use -(↑g : Matrix (Fin 2) (Fin 2) R) 0 1, (↑g : Matrix (Fin 2) (Fin 2) R) 0 0
  rw [add_comm, neg_mul, ← sub_eq_add_neg, ← det_fin_two]
  exact g.det_coe

/-- Every pair `![c, d]` of coprime integers is the "bottom_row" of some element `g=[[*,*],[c,d]]`
of `SL(2,ℤ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b65e86e231f39c0a13cd4f3f817f39ac55e169e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
