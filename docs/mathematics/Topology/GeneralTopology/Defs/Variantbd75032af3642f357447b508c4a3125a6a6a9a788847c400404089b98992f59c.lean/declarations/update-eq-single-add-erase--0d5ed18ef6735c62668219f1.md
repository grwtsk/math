# update_eq_single_add_erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4c55fdf-5d7a-0a39-0e1e-6df88c5af642",
  "kind": "theorem",
  "lexical_name": "update_eq_single_add_erase",
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
  "slug": "update-eq-single-add-erase--0d5ed18ef6735c62668219f1",
  "source": {
    "blob": "2c4f0537cd074228bcd759c3f288cdade0fc2959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 660,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d5ed18ef6735c62668219f1a9bc6246326ab5e38ccfe45c13412a172acaf1b6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4c55fdf-5d7a-0a39-0e1e-6df88c5af642`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem update_eq_single_add_erase {β : ι → Type*} [∀ i, AddZeroClass (β i)] (f : Π₀ i, β i)
    (i : ι) (b : β i) : f.update i b = single i b + f.erase i := by
  ext j
  rcases eq_or_ne i j with (rfl | h)
  · simp
  · simp [Function.update_of_ne h.symm, h, erase_ne, h.symm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c4f0537cd074228bcd759c3f288cdade0fc2959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
