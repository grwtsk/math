# esymmAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d5253dccaf68e4b1b12245df51e8daaeec3d44cea745f0c1a132a62a0e3b30c",
  "kind": "def",
  "lexical_name": "esymmAlgHom",
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
  "slug": "esymmalghom--a506f959c87d80fb873754a5",
  "source": {
    "blob": "b63979578d1a8b3a3b4647a95cb3746e0b10afe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 138,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a506f959c87d80fb873754a5e39c8ce8392d1d2dc816dcd5dec7a7629e646b97",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d5253dccaf68e4b1b12245df51e8daaeec3d44cea745f0c1a132a62a0e3b30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def esymmAlgHom :
    MvPolynomial (Fin n) R →ₐ[R] symmetricSubalgebra σ R :=
  aeval (fun i ↦ ⟨esymm σ R (i + 1), esymm_isSymmetric σ R _⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b63979578d1a8b3a3b4647a95cb3746e0b10afe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
