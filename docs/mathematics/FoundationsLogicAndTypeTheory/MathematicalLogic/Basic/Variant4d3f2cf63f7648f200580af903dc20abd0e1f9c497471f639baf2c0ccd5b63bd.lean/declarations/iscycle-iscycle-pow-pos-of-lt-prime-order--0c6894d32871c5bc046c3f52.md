# IsCycle.isCycle_pow_pos_of_lt_prime_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74b937a2-b58c-eb69-3b60-cf5b50d1301e",
  "kind": "theorem",
  "lexical_name": "IsCycle.isCycle_pow_pos_of_lt_prime_order",
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
  "slug": "iscycle-iscycle-pow-pos-of-lt-prime-order--0c6894d32871c5bc046c3f52",
  "source": {
    "blob": "0bbd1a91e27836660b62a37ccb45042c976989f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 620,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c6894d32871c5bc046c3f529f284bdcaf53bfa31ba0f27c1f33e3ea27b058e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74b937a2-b58c-eb69-3b60-cf5b50d1301e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCycle.isCycle_pow_pos_of_lt_prime_order [Finite β] {f : Perm β} (hf : IsCycle f)
    (hf' : (orderOf f).Prime) (n : ℕ) (hn : 0 < n) (hn' : n < orderOf f) : IsCycle (f ^ n) := by
  classical
    cases nonempty_fintype β
    have : n.Coprime (orderOf f) := by
      refine Nat.Coprime.symm ?_
      rw [Nat.Prime.coprime_iff_not_dvd hf']
      exact Nat.not_dvd_of_pos_of_lt hn hn'
    obtain ⟨m, hm⟩ := exists_pow_eq_self_of_coprime this
    have hf'' := hf
    rw [← hm] at hf''
    refine hf''.of_pow ?_
    rw [hm]
    exact support_pow_le f n

end IsCycle

open Equiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bbd1a91e27836660b62a37ccb45042c976989f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
