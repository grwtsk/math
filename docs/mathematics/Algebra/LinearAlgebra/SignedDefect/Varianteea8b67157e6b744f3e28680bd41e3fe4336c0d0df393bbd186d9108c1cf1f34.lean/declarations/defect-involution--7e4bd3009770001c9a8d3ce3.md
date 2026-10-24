# defect_involution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1865d726-6293-1dea-506f-e075b1b7e4a9",
  "kind": "theorem",
  "lexical_name": "defect_involution",
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
  "slug": "defect-involution--7e4bd3009770001c9a8d3ce3",
  "source": {
    "blob": "6c1a644729112f3c1f0e703cc817c34a37965a24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 32,
    "path": "GRWTSK/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e4bd3009770001c9a8d3ce3ae0ee0117aab5c69d02473a0e52e0a96270074f8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1865d726-6293-1dea-506f-e075b1b7e4a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem defect_involution [DecidableEq ι] (H M : Matrix ι ι ℂ) (hM : M * M = 1) :
    Mᴴ * defect H M * M + defect H M = 0 := by
  rw [← defect_comp, hM]
  simp [defect]

/-- The sesquilinear readout, conjugate-linear in its first column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c1a644729112f3c1f0e703cc817c34a37965a24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
