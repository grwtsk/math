# subsingletonEquiv_apply_tprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e54519fa-b0a7-5bad-f5da-1d13373f4f70",
  "kind": "theorem",
  "lexical_name": "subsingletonEquiv_apply_tprod",
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
  "slug": "subsingletonequiv-apply-tprod--7aafc08687c41d8fdb560fa5",
  "source": {
    "blob": "5051bd402b46b2aa8f7a12a5a49cced3aee092d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 832,
    "line": 830,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf69c65605a638e5769c88a4fb3712c20f80560021b3e15edab98666d62046e0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aafc08687c41d8fdb560fa544d1d3de3860ea22d2c7f6a7a8b6db23edddddb6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantf69c65605a638e5769c88a4fb3712c20f80560021b3e15edab98666d62046e0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e54519fa-b0a7-5bad-f5da-1d13373f4f70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 830–832.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsingletonEquiv_apply_tprod (f : (i : ι) → s i) :
    subsingletonEquiv i₀ (⨂ₜ[R] i, f i) = f i₀ := lift.tprod _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantf69c65605a638e5769c88a4fb3712c20f80560021b3e15edab98666d62046e0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantf69c65605a638e5769c88a4fb3712c20f80560021b3e15edab98666d62046e0a.lean#L830).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5051bd402b46b2aa8f7a12a5a49cced3aee092d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
