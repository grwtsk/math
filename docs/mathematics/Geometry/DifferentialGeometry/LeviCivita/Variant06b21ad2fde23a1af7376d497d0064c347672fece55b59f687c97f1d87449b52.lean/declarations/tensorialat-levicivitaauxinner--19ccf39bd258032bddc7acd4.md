# tensorialAt_leviCivitaAuxInner₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82688d2f-eedd-770f-1528-35ca932b8c17",
  "kind": "theorem",
  "lexical_name": "tensorialAt_leviCivitaAuxInner₁",
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
  "slug": "tensorialat-levicivitaauxinner--19ccf39bd258032bddc7acd4",
  "source": {
    "blob": "2147fcffab235634e27ce5ba5ca8cbb868d030c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 284,
    "path": "GRWTSK/Geometry/DifferentialGeometry/LeviCivita/Variant06b21ad2fde23a1af7376d497d0064c347672fece55b59f687c97f1d87449b52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19ccf39bd258032bddc7acd45bd8a9a49f3e909df1b8a910b25ac44b56ed3b06",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/LeviCivita/Variant06b21ad2fde23a1af7376d497d0064c347672fece55b59f687c97f1d87449b52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82688d2f-eedd-770f-1528-35ca932b8c17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensorialAt_leviCivitaAuxInner₁
    (x : M) (hY : MDiffAt (T% Y) x) (hZ : MDiffAt (T% Z) x) :
    TensorialAt I E (leviCivitaAuxInner I · Y Z x) x where
  smul hf hX := by
    simp (disch := fun_prop) [leviCivitaAuxInner, mvfderiv_fun_mul,
      mlieBracket_smul_left, mlieBracket_smul_right,
      inner_add_right, inner_smul_left, inner_smul_right, real_inner_comm]
    ring
  add hX₁ hX₂ := by
    simp (disch := fun_prop) [leviCivitaAuxInner, mlieBracket_add_right, mlieBracket_add_left,
      mvfderiv_fun_add, inner_add_left, inner_add_right]
    ring

/-- `leviCivitaAuxInner` is tensorial with respect to its third argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/LeviCivita/Variant06b21ad2fde23a1af7376d497d0064c347672fece55b59f687c97f1d87449b52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/LeviCivita/Variant06b21ad2fde23a1af7376d497d0064c347672fece55b59f687c97f1d87449b52.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2147fcffab235634e27ce5ba5ca8cbb868d030c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
