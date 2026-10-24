# orbitRel.Quotient.orbit_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fe9bcb2-c29a-609c-9276-849fac7e331e",
  "kind": "lemma",
  "lexical_name": "orbitRel.Quotient.orbit_injective",
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
  "slug": "orbitrel-quotient-orbit-injective--880c370525fc9845b889fca2",
  "source": {
    "blob": "59aa436fce78f4ae0209a1318e361f3325ceda2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 392,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant3e7553f60bb29cb842d16a4808ade5a9d9e4b4af10d44f62a1ebddc8095ff10e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:880c370525fc9845b889fca2555d2c731dd1ffc3ad41b015a4e995a0fcb114ca",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant3e7553f60bb29cb842d16a4808ade5a9d9e4b4af10d44f62a1ebddc8095ff10e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fe9bcb2-c29a-609c-9276-849fac7e331e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma orbitRel.Quotient.orbit_injective :
    Injective (orbitRel.Quotient.orbit : orbitRel.Quotient G α → Set α) := by
  intro x y h
  simp_rw [orbitRel.Quotient.orbit_eq_orbit_out _ Quotient.out_eq', orbit_eq_iff,
    ← orbitRel_apply] at h
  simpa [← Quotient.eq''] using h

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant3e7553f60bb29cb842d16a4808ade5a9d9e4b4af10d44f62a1ebddc8095ff10e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant3e7553f60bb29cb842d16a4808ade5a9d9e4b4af10d44f62a1ebddc8095ff10e.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59aa436fce78f4ae0209a1318e361f3325ceda2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
