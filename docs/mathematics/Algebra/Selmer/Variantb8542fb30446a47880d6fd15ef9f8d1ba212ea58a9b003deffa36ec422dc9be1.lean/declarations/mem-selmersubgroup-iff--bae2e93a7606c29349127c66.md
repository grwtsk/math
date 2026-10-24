# mem_selmerSubgroup_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5ddc514-f85d-7153-fe0f-3719bb41389b",
  "kind": "theorem",
  "lexical_name": "mem_selmerSubgroup_iff",
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
  "slug": "mem-selmersubgroup-iff--bae2e93a7606c29349127c66",
  "source": {
    "blob": "052c9569ce763491180df62998d5d01018a015cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 220,
    "path": "GRWTSK/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bae2e93a7606c29349127c66166828ab49d6592bbf0209191dd0ccf6aa9e9e2d",
  "verification": {
    "reference": "docs/verification/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5ddc514-f85d-7153-fe0f-3719bb41389b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_selmerSubgroup_iff
    (P : FiniteSelmerProblem.{u, v, w})
    (c : FiniteH1 P.G P.A P.ρG) :
    P.selmerSubgroup.carrier c ↔
      ∀ place : P.V,
        (P.localCondition place).carrier
          (resFiniteH1 (P.ιv place) c) := by
  rfl

end FiniteSelmerProblem

end GaloisCohomology
end Surface.Arithmetic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `052c9569ce763491180df62998d5d01018a015cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
