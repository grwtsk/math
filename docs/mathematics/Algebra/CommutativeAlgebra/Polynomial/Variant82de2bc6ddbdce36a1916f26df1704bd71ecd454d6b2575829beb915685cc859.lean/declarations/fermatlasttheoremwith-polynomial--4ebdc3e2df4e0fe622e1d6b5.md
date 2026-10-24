# fermatLastTheoremWith'_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6b2fc0e105304260d3da9f44b3fcb00473a3936",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82de2bc6ddbdce36a1916f26df1704bd71ecd454d6b2575829beb915685cc859.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b34f12c6-6155-3541-e883-c2b856181667",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5f650c2-2343-f086-6189-4b289194bb0d",
  "kind": "theorem",
  "lexical_name": "fermatLastTheoremWith'_polynomial",
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
  "slug": "fermatlasttheoremwith-polynomial--4ebdc3e2df4e0fe622e1d6b5",
  "source": {
    "blob": "c6b2fc0e105304260d3da9f44b3fcb00473a3936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 237,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant82de2bc6ddbdce36a1916f26df1704bd71ecd454d6b2575829beb915685cc859.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ebdc3e2df4e0fe622e1d6b55df2744a1e4ea7d97ad0f8e3638a96c8d0f6df51",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant82de2bc6ddbdce36a1916f26df1704bd71ecd454d6b2575829beb915685cc859.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5f650c2-2343-f086-6189-4b289194bb0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fermatLastTheoremWith'_polynomial {n : ℕ} (hn : 3 ≤ n) (chn : (n : k) ≠ 0) :
    FermatLastTheoremWith' k[X] n := by
  classical
  rw [FermatLastTheoremWith']
  intro a b c ha hb hc heq
  obtain ⟨a', eq_a⟩ := gcd_dvd_left a b
  obtain ⟨b', eq_b⟩ := gcd_dvd_right a b
  set d := gcd a b
  have hd : d ≠ 0 := gcd_ne_zero_of_left ha
  rw [eq_a, eq_b, mul_pow, mul_pow, ← mul_add] at heq
  obtain ⟨c', eq_c⟩ : ∃ c', c = d * c' :=
    (IsIntegrallyClosed.pow_dvd_pow_iff (by lia)).mp ⟨_, heq.symm⟩
  rw [eq_a, mul_ne_zero_iff] at ha
  rw [eq_b, mul_ne_zero_iff] at hb
  rw [eq_c, mul_ne_zero_iff] at hc
  rw [mul_comm] at eq_a eq_b eq_c
  refine ⟨d, a', b', c', ⟨eq_a, eq_b, eq_c⟩, ?_⟩
  rw [eq_c, mul_pow, mul_comm, mul_left_inj' (pow_ne_zero n hd)] at heq
  suffices goal : a'.natDegree = 0 ∧ b'.natDegree = 0 ∧ c'.natDegree = 0 by
    simp only [natDegree_eq_zero] at goal
    obtain ⟨⟨ca', ha'⟩, ⟨cb', hb'⟩, ⟨cc', hc'⟩⟩ := goal
    rw [← ha', ← hb', ← hc']
    rw [← ha', C_ne_zero] at ha
    rw [← hb', C_ne_zero] at hb
    rw [← hc', C_ne_zero] at hc
    exact ⟨ha.right.isUnit_C, hb.right.isUnit_C, hc.right.isUnit_C⟩
  apply flt hn chn ha.right hb.right hc.right _ heq
  convert! isCoprime_div_gcd_div_gcd _
  · exact EuclideanDomain.eq_div_of_mul_eq_left ha.left eq_a.symm
  · exact EuclideanDomain.eq_div_of_mul_eq_left ha.left eq_b.symm
  · rw [eq_b]
    exact mul_ne_zero hb.right hb.left
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant82de2bc6ddbdce36a1916f26df1704bd71ecd454d6b2575829beb915685cc859.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant82de2bc6ddbdce36a1916f26df1704bd71ecd454d6b2575829beb915685cc859.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6b2fc0e105304260d3da9f44b3fcb00473a3936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
