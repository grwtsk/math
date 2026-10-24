# IsStrictRestriction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f0aa8040288401d92db2dac8b8d7588be0bce18149679ff3829fd03cbeab228",
  "kind": "def",
  "lexical_name": "IsStrictRestriction",
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
  "slug": "isstrictrestriction--12606c403a5a6fb6ff299be2",
  "source": {
    "blob": "245149ebad2f6e9bc434db4a967fe5291f7a5819",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 229,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12606c403a5a6fb6ff299be2a9e283fccc6ed5ae351e352b528e9bc0b1c1af44",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f0aa8040288401d92db2dac8b8d7588be0bce18149679ff3829fd03cbeab228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsStrictRestriction (N M : Matroid α) : Prop := IsRestriction N M ∧ ¬ IsRestriction M N

@[deprecated (since := "2025-02-14")] alias StrictRestriction := IsStrictRestriction

/-- `N ≤r M` means that `N` is a `Restriction` of `M`. -/
scoped infix:50  " ≤r " => IsRestriction

/-- `N <r M` means that `N` is a `IsStrictRestriction` of `M`. -/
scoped infix:50  " <r " => IsStrictRestriction

/-- A type synonym for matroids with the isRestriction order.
(The `PartialOrder` on `Matroid α` is reserved for the minor order) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `245149ebad2f6e9bc434db4a967fe5291f7a5819` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
