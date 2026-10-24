# QuadraticForm.toMatrix'_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28f04da4-719e-6c50-df04-66a2117e6654",
  "kind": "theorem",
  "lexical_name": "QuadraticForm.toMatrix'_smul",
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
  "slug": "quadraticform-tomatrix-smul--e5f53e8ad6e619b0e34fc05b",
  "source": {
    "blob": "8a7f93d6e7d5570976dd3b2ad59afb1e317c4723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1024,
    "line": 1020,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant998bf0b0e139c395aefe54fc9e224fe9b6645449c79aa8eff9109ee97cb40e07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5f53e8ad6e619b0e34fc05bd0bcb0da9d36e0da28abea516d9cfca483720ef3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant998bf0b0e139c395aefe54fc9e224fe9b6645449c79aa8eff9109ee97cb40e07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28f04da4-719e-6c50-df04-66a2117e6654`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1020–1024.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem QuadraticForm.toMatrix'_smul (a : R₁) (Q : QuadraticForm R₁ (n → R₁)) :
    (a • Q).toMatrix' = a • Q.toMatrix' := by
  simp only [toMatrix', LinearEquiv.map_smul, LinearMap.map_smul]
#align quadratic_form.to_matrix'_smul QuadraticForm.toMatrix'_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant998bf0b0e139c395aefe54fc9e224fe9b6645449c79aa8eff9109ee97cb40e07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant998bf0b0e139c395aefe54fc9e224fe9b6645449c79aa8eff9109ee97cb40e07.lean#L1020).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a7f93d6e7d5570976dd3b2ad59afb1e317c4723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
