# apply_symm_apply_eq_coordChangeL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32e4ed00-da0b-a690-775c-76ebd59902fd",
  "kind": "theorem",
  "lexical_name": "apply_symm_apply_eq_coordChangeL",
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
  "slug": "apply-symm-apply-eq-coordchangel--8a23af3064544fcbd7b355b1",
  "source": {
    "blob": "8c75d6dc02058c3177003eb1fd5c89c0ccd2eb81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 333,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a23af3064544fcbd7b355b173dd7bc31797dfa6169ff03866535bb29faad436",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32e4ed00-da0b-a690-775c-76ebd59902fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_symm_apply_eq_coordChangeL (e e' : Trivialization F (π F E)) [e.IsLinear R]
    [e'.IsLinear R] {b : B} (hb : b ∈ e.baseSet ∩ e'.baseSet) (v : F) :
    e' (e.toOpenPartialHomeomorph.symm (b, v)) = (b, e.coordChangeL R e' b v) := by
  rw [e.mk_coordChangeL e' hb, e.mk_symm hb.1]

/-- A version of `Bundle.Trivialization.coordChangeL_apply` that fully unfolds `coordChange`. The
right-hand side is ugly, but has good definitional properties for specifically defined
trivializations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c75d6dc02058c3177003eb1fd5c89c0ccd2eb81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
