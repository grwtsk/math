# dotProductEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52d0786cd175c963a7106cdaaedbc4b231f625a483c0529d8cfec09f4c9eb997",
  "kind": "def",
  "lexical_name": "dotProductEquiv",
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
  "slug": "dotproductequiv--913872e61bc2b04aa28be8f5",
  "source": {
    "blob": "869b2e3ad83f1ae2ceaeee02f11e6136ef024c74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Varianta68cf1e56d143a323a313ded6ad8f74052e81f2e03d7b30311eb8e5be73796f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:913872e61bc2b04aa28be8f5961265c11a5c9147a91f4587798f2927e9f88e0c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dual/Varianta68cf1e56d143a323a313ded6ad8f74052e81f2e03d7b30311eb8e5be73796f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52d0786cd175c963a7106cdaaedbc4b231f625a483c0529d8cfec09f4c9eb997`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def dotProductEquiv (R n : Type*) [CommSemiring R] [Fintype n] [DecidableEq n] :
    (n → R) ≃ₗ[R] Module.Dual R (n → R) where
  toFun v := ⟨⟨dotProduct v, dotProduct_add v⟩, fun t ↦ dotProduct_smul t v⟩
  map_add' v w := by ext; simp
  map_smul' t v := by ext; simp
  invFun f i := f (LinearMap.single R _ i 1)
  left_inv v := by simp
  right_inv f := by ext; simp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Varianta68cf1e56d143a323a313ded6ad8f74052e81f2e03d7b30311eb8e5be73796f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Varianta68cf1e56d143a323a313ded6ad8f74052e81f2e03d7b30311eb8e5be73796f5.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `869b2e3ad83f1ae2ceaeee02f11e6136ef024c74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
