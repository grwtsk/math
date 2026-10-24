# isPurelyInseparable_iff_minpoly_eq_X_pow_sub_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab1f9c30-8eba-3c7f-057f-ce9457146be4",
  "kind": "theorem",
  "lexical_name": "isPurelyInseparable_iff_minpoly_eq_X_pow_sub_C",
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
  "slug": "ispurelyinseparable-iff-minpoly-eq-x-pow-sub-c--dbeead89af44490765d45acb",
  "source": {
    "blob": "7c8c494efd09d25d59173f9236b665567d09b467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 302,
    "path": "GRWTSK/Algebra/Basic/Variantf8eaad8d85f36288eb646f9ced046d2161320f434629e66f0fa972e892d461a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbeead89af44490765d45acbf00b2b54543f599f433ac0c6da592e9451f4365d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf8eaad8d85f36288eb646f9ced046d2161320f434629e66f0fa972e892d461a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab1f9c30-8eba-3c7f-057f-ce9457146be4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPurelyInseparable_iff_minpoly_eq_X_pow_sub_C (q : ℕ) [hF : ExpChar F q] :
    IsPurelyInseparable F E ↔ ∀ x : E, ∃ (n : ℕ) (y : F), minpoly F x = X ^ q ^ n - C y := by
  simp_rw [isPurelyInseparable_iff_natSepDegree_eq_one,
    minpoly.natSepDegree_eq_one_iff_eq_X_pow_sub_C q]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf8eaad8d85f36288eb646f9ced046d2161320f434629e66f0fa972e892d461a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf8eaad8d85f36288eb646f9ced046d2161320f434629e66f0fa972e892d461a5.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c8c494efd09d25d59173f9236b665567d09b467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
