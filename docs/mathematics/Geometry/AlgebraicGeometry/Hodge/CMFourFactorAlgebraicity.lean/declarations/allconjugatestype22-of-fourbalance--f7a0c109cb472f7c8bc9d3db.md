# allConjugatesType22_of_fourBalance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3486ccd3d8cbd76da0d25b028a0db0da63318c3880c9935ceef3e7bea2ae0a30",
  "kind": "def",
  "lexical_name": "allConjugatesType22_of_fourBalance",
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
  "slug": "allconjugatestype22-of-fourbalance--f7a0c109cb472f7c8bc9d3db",
  "source": {
    "blob": "268f18efd367104bf8e56cc8f24b452352e9b7a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 58,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7a0c109cb472f7c8bc9d3db922bd2347e6c1e5c3a2b1f62a8794a116e32edd0",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3486ccd3d8cbd76da0d25b028a0db0da63318c3880c9935ceef3e7bea2ae0a30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def allConjugatesType22_of_fourBalance
    {G : Type*} {conj : G → G}
    (v₁ v₂ v₃ v₄ : OddSignRow G conj)
    (hbal : FourBalance v₁ v₂ v₃ v₄) :
    AllConjugatesType22 G conj v₁ v₂ v₃ v₄ where
  p_two := fourBalance_holomorphicCount v₁ v₂ v₃ v₄ hbal
  q_two := by
    intro g
    have hp := fourBalance_holomorphicCount v₁ v₂ v₃ v₄ hbal g
    linarith

/-- Actual tensor-level data needed before generic scalar descent can be used.

P is the complex Hodge subspace in which every scalar conjugate of tensor
must lie. The type (2,2) certificate is stored independently, so conjugate
stability cannot be silently inferred from a numerical type count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `268f18efd367104bf8e56cc8f24b452352e9b7a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
