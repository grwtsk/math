# IsSymmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:445e020ac1d8b2e4eccb6830df39868e168e2939af9039b3295b27db64ff32a8",
  "kind": "def",
  "lexical_name": "IsSymmetric",
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
  "slug": "issymmetric--a98c9bd17ad06b3e4c8e508f",
  "source": {
    "blob": "35cd6196fd355196503e86adb7d61de6aed5b995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a98c9bd17ad06b3e4c8e508f5ae091394f8c4ed584306a18262198b889c0e019",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:445e020ac1d8b2e4eccb6830df39868e168e2939af9039b3295b27db64ff32a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsSymmetric (T : E →ₗ[𝕜] E) : Prop :=
  ∀ x y, ⟪T x, y⟫ = ⟪x, T y⟫
#align linear_map.is_symmetric LinearMap.IsSymmetric

section Real

/-- An operator `T` on an inner product space is symmetric if and only if it is
`LinearMap.IsSelfAdjoint` with respect to the sesquilinear form given by the inner product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35cd6196fd355196503e86adb7d61de6aed5b995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
