# prodMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43038b975b269aaa63185d58289d43d2b4f65c7b1629e27d9e5faeacafa57689",
  "kind": "def",
  "lexical_name": "prodMk",
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
  "slug": "prodmk--ca5e83d90f62b9f313df051e",
  "source": {
    "blob": "814ba603d25c5dd377b35ce721271aaf81abc815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 324,
    "path": "GRWTSK/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca5e83d90f62b9f313df051ef3f1753b3283643c2150c276ca7030f904ec2b4a",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43038b975b269aaa63185d58289d43d2b4f65c7b1629e27d9e5faeacafa57689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def prodMk {f₀ f₁ : C(X, Y)} {g₀ g₁ : C(X, Z)} (F : Homotopy f₀ f₁) (G : Homotopy g₀ g₁) :
    Homotopy (f₀.prodMk g₀) (f₁.prodMk g₁) where
  toContinuousMap := F.prodMk G
  map_zero_left _ := Prod.ext (F.map_zero_left _) (G.map_zero_left _)
  map_one_left _ := Prod.ext (F.map_one_left _) (G.map_one_left _)

/-- Let `F` be a homotopy between `f₀ : C(X, Y)` and `f₁ : C(X, Y)`. Let `G` be a homotopy between
`g₀ : C(Z, Z')` and `g₁ : C(Z, Z')`. Then `F.prodMap G` is the homotopy between `f₀.prodMap g₀` and
`f₁.prodMap g₁` that sends `(t, x, z)` to `(F (t, x), G (t, z))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `814ba603d25c5dd377b35ce721271aaf81abc815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
