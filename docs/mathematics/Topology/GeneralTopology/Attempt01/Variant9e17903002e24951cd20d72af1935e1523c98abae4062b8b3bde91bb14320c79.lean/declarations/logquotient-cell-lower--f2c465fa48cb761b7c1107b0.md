# logQuotient_cell_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ffaaefa-fdfe-21f9-6550-cf17433bd8fc",
  "kind": "theorem",
  "lexical_name": "logQuotient_cell_lower",
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
  "slug": "logquotient-cell-lower--f2c465fa48cb761b7c1107b0",
  "source": {
    "blob": "4f5644a82806582bd33c57d9a28fb16d63b2c198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2c465fa48cb761b7c1107b0d80e2ad2b3f8280ef37e63c5ba6baf34c1ae0f99",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ffaaefa-fdfe-21f9-6550-cf17433bd8fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logQuotient_cell_lower (N : ℕ) (hN : 4 ≤ N) :
    logQuotient (N + 1) ≤ ∫ x in (N : ℝ)..(N + 1 : ℕ), logQuotient x := by
  have hanti : AntitoneOn logQuotient (Icc (N : ℝ) (N + (1 : ℕ))) :=
    logQuotient_antitone.mono (by intro x hx; exact (show (4 : ℝ) ≤ N by exact_mod_cast hN).trans hx.1)
  simpa using hanti.sum_le_integral (a := 1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f5644a82806582bd33c57d9a28fb16d63b2c198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
