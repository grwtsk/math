# C0_projOrd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20e85ccf-e09a-8b12-909d-e7642ffb4c91",
  "kind": "theorem",
  "lexical_name": "C0_projOrd",
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
  "slug": "c0-projord--c22bdd01b43fdbee263010d1",
  "source": {
    "blob": "fa01c6e1852d49b0a223015a3ecbf0f081443f62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 218,
    "path": "GRWTSK/Topology/GeneralTopology/Successor/Varianta964b1c0fa9257af88a5d994c79b4c87aa3f87fc4a0fadc13098ba34807aaac7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c22bdd01b43fdbee263010d12a69300c7772fdf8cd1b47420d2892b57a9279a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Successor/Varianta964b1c0fa9257af88a5d994c79b4c87aa3f87fc4a0fadc13098ba34807aaac7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20e85ccf-e09a-8b12-909d-e7642ffb4c91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem C0_projOrd {x : I → Bool} (hx : x ∈ C0 C ho) : Proj (ord I · < o) x = x := by
  ext i
  simp only [Proj, ite_eq_left_iff, not_lt]
  intro hi
  rcases hi.lt_or_eq with hi | hi
  · specialize hsC x hx.1 i
    rw [← not_imp_not] at hsC
    simp only [not_lt, Bool.not_eq_true, Order.succ_le_iff] at hsC
    exact (hsC hi).symm
  · simp only [C0, Set.mem_inter_iff, Set.mem_ofPred_eq] at hx
    rw [eq_comm, ord_term ho] at hi
    rw [← hx.2, hi]

include hsC in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Successor/Varianta964b1c0fa9257af88a5d994c79b4c87aa3f87fc4a0fadc13098ba34807aaac7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Successor/Varianta964b1c0fa9257af88a5d994c79b4c87aa3f87fc4a0fadc13098ba34807aaac7.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa01c6e1852d49b0a223015a3ecbf0f081443f62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
