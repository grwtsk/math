# extendWith_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4daf8d39-9404-49b4-2619-456430332ff4",
  "kind": "theorem",
  "lexical_name": "extendWith_zero",
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
  "slug": "extendwith-zero--b1e479b8607ac2e970d0a2ee",
  "source": {
    "blob": "2c4f0537cd074228bcd759c3f288cdade0fc2959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1217,
    "line": 1208,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1e479b8607ac2e970d0a2ee0abdc6c1bed2cf05fd2d78b76e8e5e19337379e8",
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

Occurrence: `result:4daf8d39-9404-49b4-2619-456430332ff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1208–1217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extendWith_zero [DecidableEq ι] [∀ i, Zero (α i)] (x : α none) :
    (0 : Π₀ i, α (some i)).extendWith x = single none x := by
  ext (_ | j)
  · rw [extendWith_none, single_eq_same]
  · rw [extendWith_some, single_eq_of_ne (Option.some_ne_none _).symm, zero_apply]

/-- Bijection obtained by separating the term of index `none` of a dfinsupp over `Option ι`.

This is the dfinsupp version of `Equiv.piOptionEquivProd`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean#L1208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c4f0537cd074228bcd759c3f288cdade0fc2959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
