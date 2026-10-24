# cancel_left_div_gcd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89b9538904c468cdd94f8cd1613fb1fea8c9700d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 386,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a497c26a9c0ceab9ce37458de4dcb3a1647ef67121e74a2683ec33c6b3bebd1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7ebecd0-f3de-363b-1839-9ff1d30201cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c20a97a-e8fb-d0ed-9e37-a49614a01e32",
  "kind": "lemma",
  "lexical_name": "cancel_left_div_gcd",
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
  "slug": "cancel-left-div-gcd--7e41bf0852f0d5895c3cff17",
  "source": {
    "blob": "89b9538904c468cdd94f8cd1613fb1fea8c9700d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 386,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Varianta497c26a9c0ceab9ce37458de4dcb3a1647ef67121e74a2683ec33c6b3bebd1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e41bf0852f0d5895c3cff17ef0eb96652fc6670a69dcd718c63036f40bbdd6c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ModEq/Varianta497c26a9c0ceab9ce37458de4dcb3a1647ef67121e74a2683ec33c6b3bebd1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c20a97a-e8fb-d0ed-9e37-a49614a01e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cancel_left_div_gcd (hm : 0 < m) (h : c * a ≡ c * b [MOD m]) : a ≡ b [MOD m / gcd m c] := by
  let d := gcd m c
  have hmd := gcd_dvd_left m c
  have hcd := gcd_dvd_right m c
  rw [modEq_iff_dvd]
  refine @Int.dvd_of_dvd_mul_right_of_gcd_one (m / d) (c / d) (b - a) ?_ ?_
  · show (m / d : ℤ) ∣ c / d * (b - a)
    rw [mul_comm, ← Int.mul_ediv_assoc (b - a) (Int.natCast_dvd_natCast.mpr hcd), mul_comm]
    apply Int.ediv_dvd_ediv (Int.natCast_dvd_natCast.mpr hmd)
    rw [Int.mul_sub]
    exact modEq_iff_dvd.mp h
  · show Int.gcd (m / d) (c / d) = 1
    simp only [d, ← Int.natCast_div, Int.gcd_natCast_natCast (m / d) (c / d),
      gcd_div hmd hcd, Nat.div_self (gcd_pos_of_pos_left c hm)]

/-- To cancel a common factor `c` from a `ModEq` we must divide the modulus `m` by `gcd m c` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ModEq/Varianta497c26a9c0ceab9ce37458de4dcb3a1647ef67121e74a2683ec33c6b3bebd1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Varianta497c26a9c0ceab9ce37458de4dcb3a1647ef67121e74a2683ec33c6b3bebd1e.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89b9538904c468cdd94f8cd1613fb1fea8c9700d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
