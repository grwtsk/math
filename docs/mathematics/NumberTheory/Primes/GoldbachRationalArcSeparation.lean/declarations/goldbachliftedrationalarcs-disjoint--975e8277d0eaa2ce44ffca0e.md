# goldbachLiftedRationalArcs_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6205d9ca-9cec-db0e-858d-c4bfb0b237b3",
  "kind": "theorem",
  "lexical_name": "goldbachLiftedRationalArcs_disjoint",
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
  "slug": "goldbachliftedrationalarcs-disjoint--975e8277d0eaa2ce44ffca0e",
  "source": {
    "blob": "d92f4cfddbfef7a5784ef4bb2784477f4a272269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 290,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:975e8277d0eaa2ce44ffca0e827666d6eafd0330e0c1e7ebd63440a04f486039",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6205d9ca-9cec-db0e-858d-c4bfb0b237b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachLiftedRationalArcs_disjoint
    {Q N a q b r : ℕ} {k l : ℤ}
    (ha : (a, q) ∈ goldbachRationalArcIndices Q)
    (hb : (b, r) ∈ goldbachRationalArcIndices Q)
    (hdistinct : (a, q) ≠ (b, r) ∨ k ≠ l)
    (hscale : 2 * Q ^ 2 < N + 1) :
    Disjoint
      (goldbachLiftedRationalArc Q N a q k)
      (goldbachLiftedRationalArc Q N b r l) := by
  apply disjoint_Icc_of_radius_add_lt_abs_sub
  exact
    (goldbachRationalArcRadius_add_lt_of_global_scale ha hb hscale).trans_le
      (goldbachLiftedRationalArcCenter_separation ha hb hdistinct)

/-- The existing three-lift raw arc is exactly the union of lifts `0`, `1`,
and `-1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d92f4cfddbfef7a5784ef4bb2784477f4a272269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
