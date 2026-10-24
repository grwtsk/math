# FourFactorTensorDescentData.toRationalWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09e201c49771092da7989f42f452bc2a0f3d6e17c0acebc6f62180a755f46fc7",
  "kind": "def",
  "lexical_name": "FourFactorTensorDescentData.toRationalWitness",
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
  "slug": "fourfactortensordescentdata-torationalwitness--412efa9b741c0c0ed0d1c247",
  "source": {
    "blob": "268f18efd367104bf8e56cc8f24b452352e9b7a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 109,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:412efa9b741c0c0ed0d1c247998ed2380f74c8253d59b3ab255bf133d5a87e8a",
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

Occurrence: `declaration:09e201c49771092da7989f42f452bc2a0f3d6e17c0acebc6f62180a755f46fc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FourFactorTensorDescentData.toRationalWitness
    {G : Type*} {conj : G → G}
    {v₁ v₂ v₃ v₄ : OddSignRow G conj}
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (D : FourFactorTensorDescentData G conj v₁ v₂ v₃ v₄ V) :
    RationalFourFactorHodgeWitness G conj v₁ v₂ v₃ v₄ V where
  data := D
  descended := D.rational_descent

/-- Opaque algebraic-cycle output. The repository currently has no cycle-class
API at the required scope, so the geometric carrier is intentionally abstract.

Crucially, this is downstream of a rational Hodge witness; a (2,2) count
alone cannot populate it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `268f18efd367104bf8e56cc8f24b452352e9b7a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
