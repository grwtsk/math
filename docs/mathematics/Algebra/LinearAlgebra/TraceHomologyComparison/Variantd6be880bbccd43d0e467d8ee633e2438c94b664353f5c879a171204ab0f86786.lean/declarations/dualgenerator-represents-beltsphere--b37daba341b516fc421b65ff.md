# dualGenerator_represents_beltSphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ec70888-71dc-a24a-baa3-4445f53130fc",
  "kind": "theorem",
  "lexical_name": "dualGenerator_represents_beltSphere",
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
  "slug": "dualgenerator-represents-beltsphere--b37daba341b516fc421b65ff",
  "source": {
    "blob": "b0a2d9df8391e5abbf5cb5d2f32abd396616e3f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 913,
    "line": 894,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b37daba341b516fc421b65ffa503586d168edbf05fc57098e3a52086375177f5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ec70888-71dc-a24a-baa3-4445f53130fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 894–913.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dualGenerator_represents_beltSphere
    (H : TraceHomologyComparison certificate) :
    letI := H.dualAddCommGroup q
    letI := H.dualModule q
    letI := H.theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
    letI := H.theory.boundaryModule certificate.trace .outgoing (q - 1)
    q - 1 = q - 1 ∧
      H.theory.RepresentsBeltSphere certificate.trace (q - 1)
        (H.theory.connecting certificate.trace .outgoing q certificate.q_pos
          H.dualGenerator) := by
  letI := H.dualAddCommGroup q
  letI := H.dualModule q
  letI := H.theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
  letI := H.theory.boundaryModule certificate.trace .outgoing (q - 1)
  refine ⟨H.dual_connecting_boundary_degree, ?_⟩
  simpa only [dualGenerator, SingleHandleComplex.homologyGenerator] using
    H.dual_generator_geometric

/-- The actual incoming generator is normalized to `1 : R`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean#L894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a2d9df8391e5abbf5cb5d2f32abd396616e3f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
