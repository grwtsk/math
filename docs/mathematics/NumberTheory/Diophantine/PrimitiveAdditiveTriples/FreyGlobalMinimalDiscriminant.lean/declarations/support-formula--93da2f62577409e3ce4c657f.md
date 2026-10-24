# support_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ad27c9d-893d-cbc3-8827-a935b84b71cb",
  "kind": "theorem",
  "lexical_name": "support_formula",
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
  "slug": "support-formula--93da2f62577409e3ce4c657f",
  "source": {
    "blob": "728e97ca9cdd31b64e83aa34c364577f81e4d104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 286,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93da2f62577409e3ce4c657f9102aed77a5a9a11986c089c6e12976ff6307220",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ad27c9d-893d-cbc3-8827-a935b84b71cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_formula (t : PrimitiveAdditiveTriple) :
    occupied (minimalDiscriminant t) =
      if Descends t ∧ (t.a * t.b * t.c).factorization 2 = 4 then
        (occupied (t.a * t.b * t.c)).erase 2 else occupied (t.a * t.b * t.c) := by
  ext p
  by_cases hp : p.Prime
  · letI : Fact p.Prime := ⟨hp⟩
    rw [mem_occupied_iff _ _ (Nat.ne_of_gt (minimalDiscriminant_pos t))]
    simp only [hp, true_and, prime_dvd_iff]
    by_cases hg : Descends t ∧ (t.a * t.b * t.c).factorization 2 = 4
    · rw [if_pos hg, Finset.mem_erase, mem_occupied_iff _ _ (Nat.ne_of_gt t.product_pos)]
      simp only [hp, true_and]
      constructor
      · rintro ⟨hP, hn⟩
        exact ⟨fun h2 => hn ⟨h2, hg⟩, hP⟩
      · rintro ⟨h2, hP⟩
        exact ⟨hP, fun hh => h2 hh.1⟩
    · rw [if_neg hg, mem_occupied_iff _ _ (Nat.ne_of_gt t.product_pos)]
      simp only [hp, true_and]
      exact ⟨And.left, fun hP => ⟨hP, fun hh => hg hh.2⟩⟩
  · have hD := mem_occupied_iff (minimalDiscriminant t) p
      (Nat.ne_of_gt (minimalDiscriminant_pos t))
    have hP := mem_occupied_iff (t.a * t.b * t.c) p (Nat.ne_of_gt t.product_pos)
    split_ifs <;> simp [Finset.mem_erase, hD, hP, hp]

/-- Exact global budget. The left correction is the OLD modelCorrectionCost,
not source excess, a conductor term, or the inverse cost of a section map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `728e97ca9cdd31b64e83aa34c364577f81e4d104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
