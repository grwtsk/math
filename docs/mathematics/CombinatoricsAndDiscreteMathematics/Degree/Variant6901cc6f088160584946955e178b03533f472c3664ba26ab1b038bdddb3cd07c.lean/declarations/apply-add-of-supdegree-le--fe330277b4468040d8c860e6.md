# apply_add_of_supDegree_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b57786d-db1e-9be9-e74c-3a5c26fe6601",
  "kind": "theorem",
  "lexical_name": "apply_add_of_supDegree_le",
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
  "slug": "apply-add-of-supdegree-le--fe330277b4468040d8c860e6",
  "source": {
    "blob": "5bc7dc2ee51ce47edbeefabfc2c9c79f1f84b70e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 312,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant6901cc6f088160584946955e178b03533f472c3664ba26ab1b038bdddb3cd07c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe330277b4468040d8c860e6942435c29f29981bad026fd6af4d026ecf910afc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Degree/Variant6901cc6f088160584946955e178b03533f472c3664ba26ab1b038bdddb3cd07c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b57786d-db1e-9be9-e74c-3a5c26fe6601`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_add_of_supDegree_le (hadd : ∀ a1 a2, D (a1 + a2) = D a1 + D a2)
    [AddLeftStrictMono B] [AddRightStrictMono B]
    (hD : D.Injective) {ap aq : A} (hp : p.supDegree D ≤ D ap) (hq : q.supDegree D ≤ D aq) :
    (p * q) (ap + aq) = p ap * q aq := by
  classical
  simp_rw [mul_apply, Finsupp.sum]
  rw [Finset.sum_eq_single ap, Finset.sum_eq_single aq, if_pos rfl]
  · refine fun a ha hne => if_neg (fun he => ?_)
    apply_fun D at he; simp_rw [hadd] at he
    exact (add_lt_add_left (((Finset.le_sup ha).trans hq).lt_of_ne <| hD.ne_iff.2 hne) _).ne he
  · intro h; rw [if_pos rfl, Finsupp.notMem_support_iff.1 h, mul_zero]
  · refine fun a ha hne => Finset.sum_eq_zero (fun a' ha' => if_neg <| fun he => ?_)
    apply_fun D at he
    simp_rw [hadd] at he
    have := addLeftMono_of_addLeftStrictMono B
    exact (add_lt_add_of_lt_of_le (((Finset.le_sup ha).trans hp).lt_of_ne <| hD.ne_iff.2 hne)
      <| (Finset.le_sup ha').trans hq).ne he
  · refine fun h => Finset.sum_eq_zero (fun a _ => ite_eq_right_iff.mpr <| fun _ => ?_)
    rw [Finsupp.notMem_support_iff.mp h, zero_mul]

end SupDegree

section LinearOrder

variable [LinearOrder B] [OrderBot B] {p q : R[A]} (D : A → B)

/-- If `D` is an injection into a linear order `B`, the leading coefficient of `f : R[A]` is the
  nonzero coefficient of highest degree according to `D`, or 0 if `f = 0`. In general, it is defined
  to be the coefficient at an inverse image of `supDegree f` (if such exists). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Degree/Variant6901cc6f088160584946955e178b03533f472c3664ba26ab1b038bdddb3cd07c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant6901cc6f088160584946955e178b03533f472c3664ba26ab1b038bdddb3cd07c.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bc7dc2ee51ce47edbeefabfc2c9c79f1f84b70e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
