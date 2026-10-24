# w_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e96ecd2a-23c6-bd41-4e31-a0f44ef5b960",
  "kind": "theorem",
  "lexical_name": "w_nonneg",
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
  "slug": "w-nonneg--b532b68e2afd5e145ac20225",
  "source": {
    "blob": "5fbed2555f7d8c52c66bbea3df044f694ff0b80a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 294,
    "path": "GRWTSK/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b532b68e2afd5e145ac2022572c4ba68bae47009d5cc2363edc10f5fd86e14a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e96ecd2a-23c6-bd41-4e31-a0f44ef5b960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem w_nonneg (D : ℝ) (x : E) : 0 ≤ w D x := by
  apply mul_nonneg _ (u_nonneg _)
  apply inv_nonneg.2
  apply mul_nonneg (u_int_pos E).le
  norm_cast
  apply pow_nonneg (abs_nonneg D)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fbed2555f7d8c52c66bbea3df044f694ff0b80a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
