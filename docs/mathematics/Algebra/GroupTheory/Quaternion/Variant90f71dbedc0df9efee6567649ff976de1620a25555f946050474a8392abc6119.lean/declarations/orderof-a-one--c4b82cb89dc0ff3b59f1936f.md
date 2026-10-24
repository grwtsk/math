# orderOf_a_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00b5393d971324869ed2122da4060f28241ca912",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5567aa3-0e21-0134-d4ef-a809a141637b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ce5af43-6cc1-6592-7398-ced150b94250",
  "kind": "theorem",
  "lexical_name": "orderOf_a_one",
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
  "slug": "orderof-a-one--c4b82cb89dc0ff3b59f1936f",
  "source": {
    "blob": "00b5393d971324869ed2122da4060f28241ca912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 213,
    "path": "GRWTSK/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4b82cb89dc0ff3b59f1936fabab54183b1c00d7f35a427d4f14bf0bb6069ba8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ce5af43-6cc1-6592-7398-ced150b94250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderOf_a_one : orderOf (a 1 : QuaternionGroup n) = 2 * n := by
  rcases eq_zero_or_neZero n with hn | hn
  · subst hn
    simp_rw [mul_zero, orderOf_eq_zero_iff']
    intro n h
    rw [one_def, a_one_pow]
    apply mt a.inj
    haveI : CharZero (ZMod (2 * 0)) := ZMod.charZero
    simpa using h.ne'
  apply (Nat.le_of_dvd
    (NeZero.pos _) (orderOf_dvd_of_pow_eq_one (@a_one_pow_n n))).lt_or_eq.resolve_left
  intro h
  have h1 : (a 1 : QuaternionGroup n) ^ orderOf (a 1) = 1 := pow_orderOf_eq_one _
  rw [a_one_pow] at h1
  injection h1 with h2
  rw [← ZMod.val_eq_zero, ZMod.val_natCast, Nat.mod_eq_of_lt h] at h2
  exact absurd h2.symm (orderOf_pos _).ne

/-- If `0 < n`, then `a i` has order `(2 * n) / gcd (2 * n) i`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00b5393d971324869ed2122da4060f28241ca912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
