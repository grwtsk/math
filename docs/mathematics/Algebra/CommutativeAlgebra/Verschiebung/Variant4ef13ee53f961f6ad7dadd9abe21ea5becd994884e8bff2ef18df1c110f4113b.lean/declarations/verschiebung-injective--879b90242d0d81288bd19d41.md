# verschiebung_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:396c47b9-6d36-cc77-60de-f506a7c98d1b",
  "kind": "theorem",
  "lexical_name": "verschiebung_injective",
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
  "slug": "verschiebung-injective--879b90242d0d81288bd19d41",
  "source": {
    "blob": "b5e221241b5157b26a22219c77c14898a50184f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 163,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Verschiebung/Variant4ef13ee53f961f6ad7dadd9abe21ea5becd994884e8bff2ef18df1c110f4113b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:879b90242d0d81288bd19d4152058826a0c0027ba6d8bf8489053c75914b97f7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Verschiebung/Variant4ef13ee53f961f6ad7dadd9abe21ea5becd994884e8bff2ef18df1c110f4113b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:396c47b9-6d36-cc77-60de-f506a7c98d1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verschiebung_injective : Function.Injective (verschiebung : 𝕎 R → 𝕎 R) := by
  rw [injective_iff_map_eq_zero]
  intro w h
  ext n
  rw [← verschiebung_coeff_succ, h]
  simp only [zero_coeff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Verschiebung/Variant4ef13ee53f961f6ad7dadd9abe21ea5becd994884e8bff2ef18df1c110f4113b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Verschiebung/Variant4ef13ee53f961f6ad7dadd9abe21ea5becd994884e8bff2ef18df1c110f4113b.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5e221241b5157b26a22219c77c14898a50184f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
