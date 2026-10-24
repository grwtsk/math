# con_ker_eq_conKer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:154d87f2-dcd1-e9fb-ee0b-ccf008bba5e0",
  "kind": "theorem",
  "lexical_name": "con_ker_eq_conKer",
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
  "slug": "con-ker-eq-conker--496f9ed968ee02391f22699e",
  "source": {
    "blob": "010ab38334a64ca5e383732796b55edce1d2a7ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 71,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:496f9ed968ee02391f22699e577205373d57013848e86534f32a1cc09fa1405c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:154d87f2-dcd1-e9fb-ee0b-ccf008bba5e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem con_ker_eq_conKer (f : G →* M) : QuotientGroup.con f.ker = Con.ker f := by
  ext
  rw [QuotientGroup.con, Con.rel_mk, Setoid.comm', leftRel_apply, Con.ker_rel, MonoidHom.eq_iff]

/-- The group homomorphism from `G` to `G/N`. -/
@[to_additive "The additive group homomorphism from `G` to `G/N`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `010ab38334a64ca5e383732796b55edce1d2a7ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
