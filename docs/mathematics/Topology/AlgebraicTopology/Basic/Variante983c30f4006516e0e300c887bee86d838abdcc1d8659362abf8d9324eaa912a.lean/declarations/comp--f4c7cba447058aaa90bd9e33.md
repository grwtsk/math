# comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0342d279be014b8c627e4cd897d74c52f157a60da6bc1079d3e0406aabe4223b",
  "kind": "def",
  "lexical_name": "comp",
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
  "slug": "comp--f4c7cba447058aaa90bd9e33",
  "source": {
    "blob": "f9dcf8fadd7028c7849734757a36d41581ec9b52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 284,
    "path": "GRWTSK/Topology/AlgebraicTopology/Basic/Variante983c30f4006516e0e300c887bee86d838abdcc1d8659362abf8d9324eaa912a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4c7cba447058aaa90bd9e33b4bbe2d2323eac30a3f255f952caed5510bf17da",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Basic/Variante983c30f4006516e0e300c887bee86d838abdcc1d8659362abf8d9324eaa912a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0342d279be014b8c627e4cd897d74c52f157a60da6bc1079d3e0406aabe4223b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comp {f₀ f₁ : C(X, Y)} {g₀ g₁ : C(Y, Z)} (G : Homotopy g₀ g₁) (F : Homotopy f₀ f₁) :
    Homotopy (g₀.comp f₀) (g₁.comp f₁) where
  toFun x := G (x.1, F x)
  map_zero_left := by simp
  map_one_left := by simp

/-- Composition of a `ContinuousMap.Homotopy g₀ g₁` and `f : C(X, Y)` as a homotopy between
`g₀.comp f` and `g₁.comp f`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Basic/Variante983c30f4006516e0e300c887bee86d838abdcc1d8659362abf8d9324eaa912a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Basic/Variante983c30f4006516e0e300c887bee86d838abdcc1d8659362abf8d9324eaa912a.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9dcf8fadd7028c7849734757a36d41581ec9b52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
