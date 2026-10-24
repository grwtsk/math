# eq_div_iff_mul_eq_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b99b4b31bb24159cd33c61720542181c5ee4466",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65f5d31b-67a3-f74e-3716-e906cd103e16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4820db2d-15f9-424e-0d37-525f3578c2e0",
  "kind": "theorem",
  "lexical_name": "eq_div_iff_mul_eq_of_dvd",
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
  "slug": "eq-div-iff-mul-eq-of-dvd--6b5996c5549685cd25bb2c89",
  "source": {
    "blob": "4b99b4b31bb24159cd33c61720542181c5ee4466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 389,
    "path": "GRWTSK/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b5996c5549685cd25bb2c8977f9ed4f2a0abd02cc414cdea2ffbe5ad2df8270",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4820db2d-15f9-424e-0d37-525f3578c2e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_div_iff_mul_eq_of_dvd (x y z : R) (h1 : z ≠ 0) (h2 : z ∣ y) :
    x = y / z ↔ z * x = y := by
  rw [eq_comm, div_eq_iff_eq_mul_of_dvd _ _ _ h1 h2, eq_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b99b4b31bb24159cd33c61720542181c5ee4466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
