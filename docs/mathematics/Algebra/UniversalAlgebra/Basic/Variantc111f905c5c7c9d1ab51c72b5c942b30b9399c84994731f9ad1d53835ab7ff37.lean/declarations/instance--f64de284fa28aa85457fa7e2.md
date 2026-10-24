# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6291a603d2e742db95aad1939cf03ee447459efeb5c664df9aa5e1e19694f189",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f64de284fa28aa85457fa7e2",
  "source": {
    "blob": "9e12f5af8a0eddac3a2b81d376735edbd2f197ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 70,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f64de284fa28aa85457fa7e28872a36360e0774c168f7b1bc302857e4e16af95",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6291a603d2e742db95aad1939cf03ee447459efeb5c664df9aa5e1e19694f189`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) toExistsAddOfLE [NonUnitalSemiring R] [PartialOrder R]
    [StarRing R] [StarOrderedRing R] : ExistsAddOfLE R where
  exists_add_of_le h :=
    match (le_iff _ _).mp h with
    | ⟨p, _, hp⟩ => ⟨p, hp⟩

/-- To construct a `StarOrderedRing` instance it suffices to show that `x ≤ y` if and only if
`y = x + star s * s` for some `s : R`.

This is provided for convenience because it holds in some common scenarios (e.g.,`ℝ≥0`, `C(X, ℝ≥0)`)
and obviates the hassle of `AddSubmonoid.closure_induction` when creating those instances.

If you are working with a `NonUnitalRing` and not a `NonUnitalSemiring`, see
`StarOrderedRing.of_nonneg_iff` for a more convenient version.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e12f5af8a0eddac3a2b81d376735edbd2f197ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
