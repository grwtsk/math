# returnProjector_eigen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a9a39b9-f9ee-e3b2-b311-685f073f140a",
  "kind": "theorem",
  "lexical_name": "returnProjector_eigen",
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
  "slug": "returnprojector-eigen--cdceb1d1e1d92df12db81353",
  "source": {
    "blob": "ccb0637a5e4a93fe11af74b8904d3c9441142e5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Farey/ReturnSpectralChannel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdceb1d1e1d92df12db813539cfd3481ef3e257274cb8decb385e4d359315666",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/ReturnSpectralChannel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a9a39b9-f9ee-e3b2-b311-685f073f140a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem returnProjector_eigen (s : ℝ)
    (hs : s ^ 2 = 5) (hs0 : s ≠ 0) :
    returnMatrix * returnProjector s =
      ((3 + s) / 2) • returnProjector s := by
  rw [returnMatrix_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [returnProjector, Matrix.mul_apply, Fin.sum_univ_two,
      Matrix.smul_apply] <;>
    field_simp [hs0] <;>
    nlinarith [hs]

/-- The channel commutes with the RETURN for every nonzero s. This is a
direct exact matrix identity; the stronger eigen-idempotent conclusion
requires s^2=5. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/ReturnSpectralChannel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/ReturnSpectralChannel.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccb0637a5e4a93fe11af74b8904d3c9441142e5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
