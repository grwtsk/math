# addSubgroupOfClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3a86b4057f3c7678b88dad07d83e6c859c415c7eaaf7544456e20b2c1efd1ba",
  "kind": "def",
  "lexical_name": "addSubgroupOfClosure",
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
  "slug": "addsubgroupofclosure--100606e87fc4ae6feb08b39c",
  "source": {
    "blob": "6fac5e82fc5269d7d50e4c8bdda17149b33fd8ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 219,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd2bc327fc8c25481ee72e15ff37375873b439c466ece8128ac25c2847748fce2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:100606e87fc4ae6feb08b39c07637358484eea6d725e2acb772a782ab0a48814",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variantd2bc327fc8c25481ee72e15ff37375873b439c466ece8128ac25c2847748fce2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3a86b4057f3c7678b88dad07d83e6c859c415c7eaaf7544456e20b2c1efd1ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def addSubgroupOfClosure (h : A = .closure (Set.range b)) :
    Basis ι ℤ A.toIntSubmodule :=
  (b.restrictScalars ℤ).map <|
    LinearEquiv.ofEq _ _
      (by rw [h, ← Submodule.span_int_eq_addSubgroupClosure, toAddSubgroup_toIntSubmodule])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variantd2bc327fc8c25481ee72e15ff37375873b439c466ece8128ac25c2847748fce2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd2bc327fc8c25481ee72e15ff37375873b439c466ece8128ac25c2847748fce2.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fac5e82fc5269d7d50e4c8bdda17149b33fd8ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
