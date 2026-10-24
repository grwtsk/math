# interpolate_eq_nodalWeight_mul_nodal_div_X_sub_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63ed8c86-7c19-7598-7209-c6e225f22f39",
  "kind": "theorem",
  "lexical_name": "interpolate_eq_nodalWeight_mul_nodal_div_X_sub_C",
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
  "slug": "interpolate-eq-nodalweight-mul-nodal-div-x-sub-c--36f978dc5969da23798d5e02",
  "source": {
    "blob": "3a5c6e9c5c21ff1813f9403c4c09416798e98058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 683,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant68e969211569dd17701bd1eab8f3fd5afae06689eebaf3c680af0d911a0daec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36f978dc5969da23798d5e0277d3b2e64a05c63ca72147fcb8d376f613e126d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant68e969211569dd17701bd1eab8f3fd5afae06689eebaf3c680af0d911a0daec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63ed8c86-7c19-7598-7209-c6e225f22f39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interpolate_eq_nodalWeight_mul_nodal_div_X_sub_C :
    interpolate s v r = ∑ i ∈ s, C (nodalWeight s v i) * (nodal s v / (X - C (v i))) * C (r i) :=
  sum_congr rfl fun j hj => by rw [mul_comm, basis_eq_prod_sub_inv_mul_nodal_div hj]

/-- This is the first barycentric form of the Lagrange interpolant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant68e969211569dd17701bd1eab8f3fd5afae06689eebaf3c680af0d911a0daec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant68e969211569dd17701bd1eab8f3fd5afae06689eebaf3c680af0d911a0daec1.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a5c6e9c5c21ff1813f9403c4c09416798e98058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
