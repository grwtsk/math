# has_prime_in_interval_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0d38306-d6bd-708b-8ce8-fe9188c85cb2",
  "kind": "theorem",
  "lexical_name": "has_prime_in_interval_2",
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
  "slug": "has-prime-in-interval-2--eeb7d367aefbbde9ee37b094",
  "source": {
    "blob": "04dd9185ccbc06b581c8737da51066f96c86705c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1635,
    "line": 1583,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeb7d367aefbbde9ee37b094f5abb9a9a32f1ad9e8aac3e8e7f9155e569d3da0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0d38306-d6bd-708b-8ce8-fe9188c85cb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1583–1635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_prime_in_interval_2 (x : ℝ) (hx : x > exp 53) :
    HasPrimeInInterval (x*(1-1/204879661)) (x/204879661) := by
  have hrow : (log (exp 53), (48:ℝ), (4.088e-9:ℝ), (18290358817:ℝ), (0.93:ℝ),
      (0.4301:ℝ), (1524171138:ℝ)) ∈ KadiriLumley.Table_2 := by
    rw [log_exp]; simp only [KadiriLumley.Table_2, List.mem_cons, Prod.mk.injEq,
      List.mem_nil_iff, or_false]; norm_num
  obtain ⟨p, hp, hlo, hhi⟩ := KadiriLumley.has_prime_in_interval (exp 53) x 48 4.088e-9
    18290358817 0.93 0.4301 1524171138 hx.le hrow
  refine ⟨p, hp, ?_, ?_⟩
  · have hxpos : 0 < x := lt_trans (exp_pos _) hx
    have : x * (1 - 1 / 204879661) ≤ x * (1 - 1 / 1524171138) := by
      apply mul_le_mul_of_nonneg_left _ hxpos.le
      apply sub_le_sub_left
      exact one_div_le_one_div_of_le (by norm_num) (by norm_num : (204879661:ℝ) ≤ 1524171138)
    exact lt_of_le_of_lt this hlo
  · have heq : x * (1 - 1 / 204879661) + x / 204879661 = x := by ring
    rw [heq]
    exact le_of_lt hhi

end RamareSaouter2003

blueprint_comment /--
\subsection{Bounds on the Riemann zeta function}

The results below are taken from
\url{https://archimede.pages.math.cnrs.fr/tme-emt-wiki/Art06.html}.
Results in the source involving Dirichlet $L$-functions or general
$L$-functions are omitted here; only the results stated for the Riemann
zeta function $\zeta(s)$ are recorded.
-/

blueprint_comment /--
\paragraph{Approximating $\zeta(s)$ in the critical strip.}
\cite{Kadiri2013} gives an explicit approximation of the form
\[
  \zeta(s) = \sum_{n < c t} \frac{1}{n^s} + O^*(\ldots),
\]
valid when $t > t_0 > 0$, $c > 1/(2\pi)$, and $s = \sigma + i t$ with
$\sigma \geq 1/2$. The full explicit error term from the paper has not
yet been transcribed here; a formal stub is left for later.
-/

namespace Lehman1970

@[blueprint
  "art06-lehman-zeta-half"
  (title := "Lehman 1970 bound on \\(|\\zeta(1/2 + it)|\\)")
  (statement := /-- For $t \geq 64/(2\pi)$,
    $|\zeta(1/2 + it)| \leq 4 \left(\dfrac{t}{2\pi}\right)^{1/4}$.
    (Art06 writes $t\ge 1/5$ after a modern computational extension;
    Lehman's lemma is stated for $t\ge 64/(2\pi)$.) -/)
  (proof := /-- See \cite{Lehman1970}. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean#L1583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04dd9185ccbc06b581c8737da51066f96c86705c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
