# ofConeComb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:403e0a27e6197f06f0307822565bb8ec0934c10e68b117c460355c6b7be493e7",
  "kind": "def",
  "lexical_name": "ofConeComb",
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
  "slug": "ofconecomb--09edbc25a777e05e08a03ccb",
  "source": {
    "blob": "b1b6d530919a75466adbe05a09c95e28dccf9267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 178,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pointed/Variant595ae9bbdaf96925c28253130da6dbe9fb506b4a5b2c15b606535765dcc4ca49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09edbc25a777e05e08a03ccbc4cc24b94e67488c9c7ea6aa7d67e91e28bee7ab",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pointed/Variant595ae9bbdaf96925c28253130da6dbe9fb506b4a5b2c15b606535765dcc4ca49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:403e0a27e6197f06f0307822565bb8ec0934c10e68b117c460355c6b7be493e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofConeComb (C : Set E) (nonempty : C.Nonempty)
    (coneComb : ∀ x ∈ C, ∀ y ∈ C, ∀ a : R, 0 ≤ a → ∀ b : R, 0 ≤ b → a • x + b • y ∈ C) :
    PointedCone R E :=
  .ofLinearComb C nonempty fun x hx y hy ⟨a, ha⟩ ⟨b, hb⟩ => coneComb x hx y hy a ha b hb

variable (R) in
/-- The cone hull of a set `s` is the smallest pointed cone that contains `s`.

Pointed cones being defined as submodules over nonnegative scalars, this is implemented as
the submodule span of `s` w.r.t. nonnegative scalars. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pointed/Variant595ae9bbdaf96925c28253130da6dbe9fb506b4a5b2c15b606535765dcc4ca49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pointed/Variant595ae9bbdaf96925c28253130da6dbe9fb506b4a5b2c15b606535765dcc4ca49.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1b6d530919a75466adbe05a09c95e28dccf9267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
