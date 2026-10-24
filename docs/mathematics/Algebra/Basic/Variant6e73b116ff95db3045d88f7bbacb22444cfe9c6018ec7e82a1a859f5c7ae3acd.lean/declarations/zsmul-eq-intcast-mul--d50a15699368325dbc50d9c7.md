# zsmul_eq_intCast_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14468f3b-646d-c5d5-c35f-0102320d0b9f",
  "kind": "theorem",
  "lexical_name": "zsmul_eq_intCast_mul",
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
  "slug": "zsmul-eq-intcast-mul--d50a15699368325dbc50d9c7",
  "source": {
    "blob": "b17fb595662cb629674f210e3e78e690cb9590a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 347,
    "path": "GRWTSK/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d50a15699368325dbc50d9c72b10905ede122cd3c5d63be5e3222a78975d1af6",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14468f3b-646d-c5d5-c35f-0102320d0b9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zsmul_eq_intCast_mul {k : Int} {a : α} : (k • a : α) = (k : α) * a := by
  match k with
  | (k : Nat) =>
    rw [intCast_natCast, zsmul_natCast_eq_nsmul, nsmul_eq_natCast_mul]
  | -(k + 1 : Nat) =>
    rw [intCast_neg, neg_mul, neg_zsmul, intCast_natCast, zsmul_natCast_eq_nsmul, nsmul_eq_natCast_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b17fb595662cb629674f210e3e78e690cb9590a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
