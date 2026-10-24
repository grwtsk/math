# instStarOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c5d6255e46a3d4a0654b6af4cdb64f61793c1832c8eeca2535b49c2f80776fa",
  "kind": "instance",
  "lexical_name": "instStarOrderedRing",
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
  "slug": "inststarorderedring--a6bce9bd2b1ce90f64f27aeb",
  "source": {
    "blob": "a4762d8ced664ecb333e60eaf245852dd7deb024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 59,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Star/Variant30f7ac55e12c191fd0fd1d5bba5225ae45fd1544b8e2fa2de1ce5b1a73bdcb9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6bce9bd2b1ce90f64f27aeb455355dce56e471c1a1fa77e2033ae428201a807",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Star/Variant30f7ac55e12c191fd0fd1d5bba5225ae45fd1544b8e2fa2de1ce5b1a73bdcb9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c5d6255e46a3d4a0654b6af4cdb64f61793c1832c8eeca2535b49c2f80776fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instStarOrderedRing : StarOrderedRing ℚ where
  le_iff a b := by simp [eq_comm, le_iff_exists_nonneg_add (a := a)]

end Rat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Star/Variant30f7ac55e12c191fd0fd1d5bba5225ae45fd1544b8e2fa2de1ce5b1a73bdcb9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Star/Variant30f7ac55e12c191fd0fd1d5bba5225ae45fd1544b8e2fa2de1ce5b1a73bdcb9f.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4762d8ced664ecb333e60eaf245852dd7deb024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
