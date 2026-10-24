# le_of_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15e516b1-0169-bc49-e62e-6cb7d1fafb3a",
  "kind": "lemma",
  "lexical_name": "le_of_eq_pow",
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
  "slug": "le-of-eq-pow--3c1ecadecd39333da92dfd77",
  "source": {
    "blob": "f3edb13cdff78abe1e73b357aee38e8342727f14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 398,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant2769b1f8a795a9b181d0bbd282fe86e5ef7bdf6ad6c5af1978fd79555856fee5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c1ecadecd39333da92dfd77513633723c5fcc2bfc42a47edf8fa0e40bf2b5d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant2769b1f8a795a9b181d0bbd282fe86e5ef7bdf6ad6c5af1978fd79555856fee5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15e516b1-0169-bc49-e62e-6cb7d1fafb3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma le_of_eq_pow {s t : ℝ} (hfm : f m = m ^ s) (hfn : f n = n ^ t) : t ≤ s := by
  rw [← rpow_le_rpow_left_iff (x := n) (mod_cast hn), ← hfn]
  apply le_trans <| le_pow_log hm hn notbdd
  rw [hfm, ← rpow_mul (Nat.cast_nonneg m), mul_comm, rpow_mul (Nat.cast_nonneg m),
    rpow_logb (mod_cast zero_lt_of_lt hm) (mod_cast hm.ne') (mod_cast zero_lt_of_lt hn)]

include hm hn notbdd in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant2769b1f8a795a9b181d0bbd282fe86e5ef7bdf6ad6c5af1978fd79555856fee5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant2769b1f8a795a9b181d0bbd282fe86e5ef7bdf6ad6c5af1978fd79555856fee5.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3edb13cdff78abe1e73b357aee38e8342727f14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
