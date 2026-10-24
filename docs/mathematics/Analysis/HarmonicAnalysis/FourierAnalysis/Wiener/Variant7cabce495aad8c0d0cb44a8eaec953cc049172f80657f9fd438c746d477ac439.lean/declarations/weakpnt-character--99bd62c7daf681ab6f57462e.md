# WeakPNT_character

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb3c0dc91a4f2a0c0b740cb4f4d46f2bdcbad179",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3930,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59657c12-a1e2-2080-f63b-b7be9d1e68b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf8a43e1-7c65-3f8d-9517-5222b7410891",
  "kind": "theorem",
  "lexical_name": "WeakPNT_character",
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
  "slug": "weakpnt-character--99bd62c7daf681ab6f57462e",
  "source": {
    "blob": "bb3c0dc91a4f2a0c0b740cb4f4d46f2bdcbad179",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3975,
    "line": 3930,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99bd62c7daf681ab6f57462e6457a1fdae7f31c25a81ad30459a68f3a070281e",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf8a43e1-7c65-3f8d-9517-5222b7410891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3930–3975.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WeakPNT_character
    {q a : ℕ} (hq : q ≥ 1) (ha : Nat.Coprime a q) (ha' : a < q) {s : ℂ} (hs : 1 < s.re) :
    LSeries (fun n ↦ if n % q = a then Λ n else 0) s =
      - (∑' χ : DirichletCharacter ℂ q,
          ((starRingEnd ℂ) (χ a) * ((deriv (LSeries (fun n:ℕ ↦ χ n)) s)) /
          (LSeries (fun n:ℕ ↦ χ n) s))) / (Nat.totient q : ℂ) := by
  have : NeZero q := ⟨by omega⟩
  convert vonMangoldt.LSeries_residueClass_eq ((ZMod.isUnit_iff_coprime a q).mpr ha) hs using 1
  · congr with n
    have : n % q = a ↔ (n : ZMod q) = a := by
      rw [ZMod.natCast_eq_natCast_iff', Nat.mod_eq_of_lt ha']
    simp [this]
    split_ifs <;> simp [*]
  · rw [div_eq_inv_mul, neg_mul_comm, tsum_fintype]
    congr 3 with χ
    rw [DirichletCharacter.deriv_LFunction_eq_deriv_LSeries _ hs,
      DirichletCharacter.LFunction_eq_LSeries _ hs, mul_div]
    congr 2
    rw [starRingEnd_apply, MulChar.star_apply', MulChar.inv_apply_eq_inv',
      ← ZMod.coe_unitOfCoprime a ha, ZMod.inv_coe_unit, map_units_inv]


@[blueprint "WeakPNT-AP-prelim"
  (title := "WeakPNT-AP-prelim")
  (statement := /--
  If $q ≥ 1$ and $a$ is coprime to $q$, the Dirichlet series
  $\sum_{n \leq x: n = a\ (q)} \frac{\Lambda(n)}{n^s}$ converges for $\mathrm{Re}(s) > 1$ to
  $\frac{1}{\varphi(q)} \frac{1}{s-1} + G(s)$ where $G$ has a continuous extension to
  $\mathrm{Re}(s)=1$.
  -/)
  (proof := /--
  We expand out the left-hand side using Lemma \ref{WeakPNT-character}.  The contribution of the
  non-principal characters $\chi$ extend continuously to $\mathrm{Re}(s) = 1$ thanks to the
  non-vanishing of $L(s,\chi)$ on this line (which should follow from another component of
  this project), so it suffices to show that for the principal character $\chi_0$, that
  $$ -\frac{L'(s,\chi_0)}{L(s,\chi_0)} - \frac{1}{s-1}$$
  also extends continuously here.  But we already know that
  $$ -\frac{\zeta'(s)}{\zeta(s)} - \frac{1}{s-1}$$
  extends, and from Euler product machinery one has the identity
  $$ \frac{L'(s,\chi_0)}{L(s,\chi_0)}
  = \frac{\zeta'(s)}{\zeta(s)} + \sum_{p|q} \frac{\log p}{p^s-1}.$$
  Since there are only finitely many primes dividing $q$, and each summand $\frac{\log p}{p^s-1}$
  extends continuously, the claim follows.
  -/)
  (proofUses := ["ChebyshevPsi", "WeakPNT-character"])
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean#L3930).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb3c0dc91a4f2a0c0b740cb4f4d46f2bdcbad179` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
