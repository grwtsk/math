# norm_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0b06272-e8cf-ab7f-813c-9c3c8c86fd87",
  "kind": "theorem",
  "lexical_name": "norm_inv",
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
  "slug": "norm-inv--9ea2e76aef994cedb14cafdd",
  "source": {
    "blob": "e12f202452b2a637640618ee5c257455924f8fb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant164a7f065bd1e76bd3ec9aedba6b6293a20bc4b54086cae7109010a37fe6cbdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ea2e76aef994cedb14cafdd94ac934ecf96cb4baf3d19d09cb71ca0ea203492",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant164a7f065bd1e76bd3ec9aedba6b6293a20bc4b54086cae7109010a37fe6cbdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0b06272-e8cf-ab7f-813c-9c3c8c86fd87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_inv (x : L) : Algebra.norm K x⁻¹ = (Algebra.norm K x)⁻¹ := by
  by_cases hx : x = 0
  · simp [hx]
  exact mul_left_injective₀ (norm_ne_zero_iff.mpr hx) (by simp [hx, ← map_mul])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant164a7f065bd1e76bd3ec9aedba6b6293a20bc4b54086cae7109010a37fe6cbdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant164a7f065bd1e76bd3ec9aedba6b6293a20bc4b54086cae7109010a37fe6cbdc.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e12f202452b2a637640618ee5c257455924f8fb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
