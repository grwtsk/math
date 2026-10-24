# service_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15a64b33-d927-298e-72f2-c81c790d867d",
  "kind": "theorem",
  "lexical_name": "service_bound",
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
  "slug": "service-bound--c12e202a53c25923f8af3f0a",
  "source": {
    "blob": "082f7a14cea422527f4ff132e2fb00cefd9e75cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 118,
    "path": "GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c12e202a53c25923f8af3f0ad05523d08db1fd8f40bd32749172b6c7d0333a7d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15a64b33-d927-298e-72f2-c81c790d867d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem service_bound {m : ℕ} (hm : 0 < m) (Q : ℤ) (hQ : 0 < Q)
    (p : ℕ → Fin m → ℤ) (w : ℕ → Fin m) (i : Fin m) (q : ℤ) (_hq : 0 < q)
    (hp : ∀ n, ∑ j, p n j = Q) (hn : ∀ n j, 0 ≤ p n j)
    (hfloor : ∀ n, q ≤ p n i)
    (hw : ∀ n j, debt Q p w n j + p n j ≤ debt Q p w n (w n) + p n (w n)) (n : ℕ) :
    (n : ℤ)*q ≤ Q*(count w i n : ℤ) + ((m : ℤ)-1)*Q := by
  obtain ⟨hs,hl⟩ := debt_invariant Q hQ p w hp hn hw n
  have hu := upper_from_lower hm Q _ hs hl i
  have hsum : (∑ _k ∈ Finset.range n, q) ≤ ∑ k ∈ Finset.range n, p k i :=
    Finset.sum_le_sum (fun k _ => hfloor k)
  simp only [Finset.sum_const,Finset.card_range,nsmul_eq_mul] at hsum
  rw [debt_accounting] at hu
  omega

/-- Every channel with a positive quota floor receives arbitrarily many service slots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `082f7a14cea422527f4ff132e2fb00cefd9e75cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
