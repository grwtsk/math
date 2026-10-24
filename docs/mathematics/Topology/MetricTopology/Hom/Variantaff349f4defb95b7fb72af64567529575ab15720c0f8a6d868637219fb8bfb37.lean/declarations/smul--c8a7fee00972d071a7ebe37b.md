# smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ee1ce291d2949f476de7b5b2fae8ac53004a751c06930ab1c3d2d9091cc8c32",
  "kind": "instance",
  "lexical_name": "smul",
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
  "slug": "smul--c8a7fee00972d071a7ebe37b",
  "source": {
    "blob": "7112c599b0081688cfe0b4890f026ac034186c39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 435,
    "path": "GRWTSK/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8a7fee00972d071a7ebe37b925aa3693e7290ea96a0939e0fb1c20fa59149f5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ee1ce291d2949f476de7b5b2fae8ac53004a751c06930ab1c3d2d9091cc8c32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance smul : SMul R (NormedAddGroupHom V₁ V₂) where
  smul r f :=
    { toFun := r • ⇑f
      map_add' := (r • f.toAddMonoidHom).map_add'
      bound' :=
        let ⟨b, hb⟩ := f.bound'
        ⟨dist r 0 * b, fun x => by
          have := dist_smul_pair r (f x) (f 0)
          rw [map_zero, smul_zero, dist_zero_right, dist_zero_right] at this
          rw [mul_assoc]
          refine this.trans ?_
          gcongr
          exact hb x⟩ }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7112c599b0081688cfe0b4890f026ac034186c39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
