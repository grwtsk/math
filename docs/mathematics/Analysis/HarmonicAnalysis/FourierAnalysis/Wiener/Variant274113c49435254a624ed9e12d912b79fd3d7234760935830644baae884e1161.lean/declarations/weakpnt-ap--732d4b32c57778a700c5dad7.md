# WeakPNT_AP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f97c5c81-c206-c79d-943a-351657f79744",
  "kind": "theorem",
  "lexical_name": "WeakPNT_AP",
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
  "slug": "weakpnt-ap--732d4b32c57778a700c5dad7",
  "source": {
    "blob": "43f526b5c8c6d9715b27eec3c62dac88fb6eeb90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4126,
    "line": 4026,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant274113c49435254a624ed9e12d912b79fd3d7234760935830644baae884e1161.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:732d4b32c57778a700c5dad7ede6f27bd2af6d2cdbf5878cdd65f12b1a77c3e9",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant274113c49435254a624ed9e12d912b79fd3d7234760935830644baae884e1161.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f97c5c81-c206-c79d-943a-351657f79744`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4026–4126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WeakPNT_AP {q : ℕ} {a : ℕ} (hq : q ≥ 1) (ha : a.Coprime q) (ha' : a < q) :
    Tendsto (fun N ↦ cumsum (fun n ↦ if n % q = a then Λ n else 0) N / N) atTop (𝓝 (1 / q.totient)) := by
  have h_summable : ∀ s : ℝ, 1 < s → Summable (fun n ↦ (if n % q = a then Λ n else 0) / n ^ s) := by
    intro s hs
    refine .of_nonneg_of_le (fun n ↦ ?_) (fun n ↦ ?_) (summable_vonMangoldt_div_rpow hs)
    · split_ifs <;> first | positivity | exact div_nonneg (not_not.mp fun h ↦ by
        have := Nat.Prime.pos (by contrapose! h; aesop : n.Prime); aesop) (rpow_nonneg (Nat.cast_nonneg _) _)
    · split_ifs <;> norm_num; exact div_nonneg vonMangoldt_nonneg (by positivity)
  obtain ⟨G, hG₁, hG₂⟩ := WeakPNT_AP_prelim hq ha ha'
  convert WienerIkeharaTheorem'' _ _ _ _ using 1
  · use G
  · intro n
    simp_all only [ge_iff_le, one_div, mul_inv_rev, Pi.ofNat_apply]
    split
    next h => subst h; simp_all only [vonMangoldt_nonneg]
    next h => simp_all only [le_refl]
  · intro σ' hσ'
    specialize h_summable σ' hσ'
    simp_all only [ge_iff_le, one_div, mul_inv_rev]
    convert h_summable using 1
    ext
    simp only [nterm, norm_real, norm_eq_abs]
    ring_nf
    split_ifs <;> simp [*, mul_comm]
  · assumption
  · convert hG₂ using 3
    · exact tsum_congr fun n ↦ by cases n <;> aesop
    · norm_num [div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm]


blueprint_comment /--
\section{The Chebotarev density theorem: the case of cyclotomic extensions}

In this section, $K$ is a number field, $L = K(\mu_m)$ for some natural number $m$, and
$G = Gal(K/L)$.

The goal here is to prove the Chebotarev density theorem for the case of cyclotomic extensions.
-/

blueprint_comment /--
\begin{lemma}[Dedekind-factor]\label{Dedekind-factor}  We have
$$ \zeta_L(s) = \prod_{\chi} L(\chi,s)$$
for $\Re(s) > 1$, where $\chi$ runs over homomorphisms from $G$ to $\C^\times$ and $L$ is the
Artin $L$-function.
\end{lemma}
-/

blueprint_comment /--
\begin{proof} See Propositions 7.1.16, 7.1.19 of \url{https://www.math.ucla.edu/~sharifi/algnum.pdf}.
\end{proof}
-/

blueprint_comment /--
\begin{lemma}[Simple pole]\label{Dedekind-pole}  $\zeta_L$ has a simple pole at $s=1$.
\end{lemma}
-/

blueprint_comment /--
\begin{proof} See Theorem 7.1.12 of \url{https://www.math.ucla.edu/~sharifi/algnum.pdf}.
\end{proof}
-/

blueprint_comment /--
\begin{lemma}[Dedekind-nonvanishing]\label{Dedekind-nonvanishing}  For any non-principal character
$\chi$ of $Gal(K/L)$, $L(\chi,s)$ does not vanish for $\Re(s)=1$.
\end{lemma}
-/

blueprint_comment /--
\begin{proof}\uses{Dedekind-factor, Dedekind-pole} For $s=1$, this will follow from
Lemmas \ref{Dedekind-factor}, \ref{Dedekind-pole}. For the rest of the line, one should be able to
adapt the arguments for the Dirichet L-function.
\end{proof}
-/

blueprint_comment /--
\section{The Chebotarev density theorem: the case of abelian extensions}

(Use the arguments in Theorem 7.2.2 of \url{https://www.math.ucla.edu/~sharifi/algnum.pdf} to extend the
previous results to abelian extensions (actually just cyclic extensions would suffice))
-/

blueprint_comment /--
\section{The Chebotarev density theorem: the general case}

(Use the arguments in Theorem 7.2.2 of \url{https://www.math.ucla.edu/~sharifi/algnum.pdf} to extend the
previous results to arbitrary extensions
-/

blueprint_comment /--
\begin{lemma}[PNT for one character]\label{Dedekind-PNT}  For any non-principal character $\chi$ of
$Gal(K/L)$, $$ \sum_{N \mathfrak{p} \leq x} \chi(\mathfrak{p}) \log N \mathfrak{p}  = o(x).$$
\end{lemma}
-/

blueprint_comment /--
\begin{proof}\uses{Dedekind-nonvanishing} This should follow from Lemma \ref{Dedekind-nonvanishing}
and the arguments for the Dirichlet L-function. (It may be more convenient to work with a
von Mangoldt type function instead of $\log N\mathfrak{p}$).
\end{proof}
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant274113c49435254a624ed9e12d912b79fd3d7234760935830644baae884e1161.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant274113c49435254a624ed9e12d912b79fd3d7234760935830644baae884e1161.lean#L4026).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43f526b5c8c6d9715b27eec3c62dac88fb6eeb90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
