# compContinuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee4f1a4d12fa0e2f87b2082c6ff2e8916e0932ad551a5e0d7906a12b215df3f5",
  "kind": "def",
  "lexical_name": "compContinuousMap",
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
  "slug": "compcontinuousmap--f23830c262253a23bfacea39",
  "source": {
    "blob": "f9dcf8fadd7028c7849734757a36d41581ec9b52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 620,
    "path": "GRWTSK/Topology/AlgebraicTopology/Basic/Variante983c30f4006516e0e300c887bee86d838abdcc1d8659362abf8d9324eaa912a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f23830c262253a23bfacea39df1dd7aa8d2175aa4326142c39620cc4b4ce4b79",
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

Occurrence: `declaration:ee4f1a4d12fa0e2f87b2082c6ff2e8916e0932ad551a5e0d7906a12b215df3f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps!] def compContinuousMap {f₀ f₁ : C(X, Y)} (F : f₀.HomotopyRel f₁ S) (g : C(Y, Z)) :
    (g.comp f₀).HomotopyRel (g.comp f₁) S where
  toHomotopy := .comp (.refl g) F.toHomotopy
  prop' t x hx := congr_arg g (F.prop t x hx)

end HomotopyRel

/-- Given continuous maps `f₀` and `f₁`, we say `f₀` and `f₁` are homotopic relative to a set `S` if
there exists a `HomotopyRel f₀ f₁ S`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Basic/Variante983c30f4006516e0e300c887bee86d838abdcc1d8659362abf8d9324eaa912a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Basic/Variante983c30f4006516e0e300c887bee86d838abdcc1d8659362abf8d9324eaa912a.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9dcf8fadd7028c7849734757a36d41581ec9b52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
