# spectralCoordinates_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a84cb0af-6726-dab7-7d70-4f418503a8b8",
  "kind": "theorem",
  "lexical_name": "spectralCoordinates_apply",
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
  "slug": "spectralcoordinates-apply--837763fba2dbc9029258d9f8",
  "source": {
    "blob": "6169035f6185d311fc0badea47cb29c249a0ef24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 27,
    "path": "GRWTSK/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:837763fba2dbc9029258d9f807310265a5677634fff59ef1e0f8e4d59be067dd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a84cb0af-6726-dab7-7d70-4f418503a8b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralCoordinates_apply (M : Matrix σ σ ℂ) (hM : M.IsHermitian) (z : σ → ℂ) :
    spectralCoordinates M hM z = (hM.eigenvectorUnitary : Matrix σ σ ℂ)ᴴ *ᵥ z := by
  rfl

/-- Real quadratic form constructed from the actual Hermitian spectral packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6169035f6185d311fc0badea47cb29c249a0ef24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
