# IsTorsion.extension_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8795f837-ee13-8d5e-0b1f-8170f90579f9",
  "kind": "theorem",
  "lexical_name": "IsTorsion.extension_closed",
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
  "slug": "istorsion-extension-closed--bc2bd01342e2ebf20e68dd54",
  "source": {
    "blob": "ff6ecc826d006a3b01995485c20948ad84f091da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 115,
    "path": "GRWTSK/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc2bd01342e2ebf20e68dd54c22cd3a1ff6cb5ec1e18e7a8e7cabc8ec9e2a2f6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8795f837-ee13-8d5e-0b1f-8170f90579f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTorsion.extension_closed {f : G →* H} (hN : N = f.ker) (tH : IsTorsion H)
    (tN : IsTorsion N) : IsTorsion G := fun g =>
  (isOfFinOrder_iff_pow_eq_one _).mpr <| by
    obtain ⟨ngn, ngnpos, hngn⟩ := (isOfFinOrder_iff_pow_eq_one _).mp (tH <| f g)
    have hmem := f.mem_ker.mpr ((f.map_pow g ngn).trans hngn)
    lift g ^ ngn to N using hN.symm ▸ hmem with gn h
    obtain ⟨nn, nnpos, hnn⟩ := (isOfFinOrder_iff_pow_eq_one _).mp (tN gn)
    exact
      ⟨ngn * nn, mul_pos ngnpos nnpos, by
        rw [pow_mul, ← h, ← Subgroup.coe_pow, hnn, Subgroup.coe_one]⟩
#align is_torsion.extension_closed IsTorsion.extension_closed
#align add_is_torsion.extension_closed AddIsTorsion.extension_closed

/-- The image of a quotient is torsion iff the group is torsion. -/
@[to_additive AddIsTorsion.quotient_iff
      "The image of a quotient is additively torsion iff the group is torsion."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff6ecc826d006a3b01995485c20948ad84f091da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
