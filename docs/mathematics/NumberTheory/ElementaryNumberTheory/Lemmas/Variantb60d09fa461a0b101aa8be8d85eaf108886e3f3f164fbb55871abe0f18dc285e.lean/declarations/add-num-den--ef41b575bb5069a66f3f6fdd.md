# add_num_den

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65f8a9b2-b5d1-e1e2-c934-41fdee0e5997",
  "kind": "theorem",
  "lexical_name": "add_num_den",
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
  "slug": "add-num-den--ef41b575bb5069a66f3f6fdd",
  "source": {
    "blob": "b801c7bd42cb0b235e03f51057be1e2228cb16e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 115,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef41b575bb5069a66f3f6fdd99eaddea877ed27bafec3d78887e33dfd5a3b930",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65f8a9b2-b5d1-e1e2-c934-41fdee0e5997`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_num_den (q r : ℚ) :
    q + r = (q.num * r.den + q.den * r.num : ℤ) /. (↑q.den * ↑r.den : ℤ) := by
  have hqd : (q.den : ℤ) ≠ 0 := Int.coe_nat_ne_zero_iff_pos.2 q.den_pos
  have hrd : (r.den : ℤ) ≠ 0 := Int.coe_nat_ne_zero_iff_pos.2 r.den_pos
  conv_lhs => rw [← @num_den q, ← @num_den r, Rat.add_def'' hqd hrd]
  rw [mul_comm r.num q.den]
#align rat.add_num_denom Rat.add_num_den

section Casts

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b801c7bd42cb0b235e03f51057be1e2228cb16e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
