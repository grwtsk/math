# iteratedDeriv_even_odd_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2217688-d469-c98e-76da-f04407beff8d",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_even_odd_zero",
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
  "slug": "iteratedderiv-even-odd-zero--cdbd23a506e280ce7fc50eb1",
  "source": {
    "blob": "c7aeee2aaf3c61bbb1db59f1c08119012d375839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 359,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdbd23a506e280ce7fc50eb11f7eed95781a7df568cdd2e09f745556715707ac",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2217688-d469-c98e-76da-f04407beff8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma iteratedDeriv_even_odd_zero {f : ℝ → ℝ} (heven : ∀ x, f (-x) = f x)
    {n : ℕ} (hodd : n % 2 = 1) : iteratedDeriv n f 0 = 0 := by
  -- Key insight: f(-x) = f(x) implies iteratedDeriv n f 0 = (-1)^n * iteratedDeriv n f 0
  have h1 : ∀ a, iteratedDeriv n (fun x => f (-x)) a = (-1 : ℝ) ^ n • iteratedDeriv n f (-a) :=
    fun a => iteratedDeriv_comp_neg n f a
  -- Since f(-x) = f(x), we have (fun x => f(-x)) = f
  have h2 : (fun x => f (-x)) = f := funext heven
  -- At a = 0: iteratedDeriv n f 0 = (-1)^n * iteratedDeriv n f 0
  have h3 : iteratedDeriv n f 0 = (-1 : ℝ) ^ n • iteratedDeriv n f 0 := by
    calc iteratedDeriv n f 0
        = iteratedDeriv n (fun x => f (-x)) 0 := by rw [h2]
      _ = (-1 : ℝ) ^ n • iteratedDeriv n f (-0) := h1 0
      _ = (-1 : ℝ) ^ n • iteratedDeriv n f 0 := by simp
  -- For odd n: (-1)^n = -1
  have hneg : (-1 : ℝ) ^ n = -1 := Odd.neg_one_pow (Nat.odd_iff.mpr hodd)
  -- So d = -d, hence d = 0
  simp only [hneg, neg_smul, one_smul] at h3
  linarith

/-- Even derivatives of odd functions at 0 vanish.
    For odd f where f(-x) = -f(x), at a = 0 we get (-1)^n * d = -d.
    For even n, this means d = -d, hence d = 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7aeee2aaf3c61bbb1db59f1c08119012d375839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
