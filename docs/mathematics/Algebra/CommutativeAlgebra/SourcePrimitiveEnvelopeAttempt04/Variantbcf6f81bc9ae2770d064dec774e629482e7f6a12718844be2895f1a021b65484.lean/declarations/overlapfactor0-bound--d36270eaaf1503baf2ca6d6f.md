# overlapFactor0_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c073a537-4ec3-135d-0eea-4e4dea95ae2c",
  "kind": "theorem",
  "lexical_name": "overlapFactor0_bound",
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
  "slug": "overlapfactor0-bound--d36270eaaf1503baf2ca6d6f",
  "source": {
    "blob": "3dc09c90875c22a5e286279676477cf97a61c2ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variantbcf6f81bc9ae2770d064dec774e629482e7f6a12718844be2895f1a021b65484.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d36270eaaf1503baf2ca6d6f90cc6479fa43e8b5db7a78ecfa1de8a40d4a3697",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variantbcf6f81bc9ae2770d064dec774e629482e7f6a12718844be2895f1a021b65484.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c073a537-4ec3-135d-0eea-4e4dea95ae2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlapFactor0_bound {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    overlapFactor0 u≤622336 := by
  have h0 : 0≤u := hu.1
  have h2 : u≤2 := hu.2
  have hp : overlapFactor0 u≤overlapFactor0 2 := by
    unfold overlapFactor0
    gcongr
  norm_num [overlapFactor0] at hp
  exact hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variantbcf6f81bc9ae2770d064dec774e629482e7f6a12718844be2895f1a021b65484.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variantbcf6f81bc9ae2770d064dec774e629482e7f6a12718844be2895f1a021b65484.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dc09c90875c22a5e286279676477cf97a61c2ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
