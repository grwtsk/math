# dirichlet_thm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a82bcb4-078b-a3fa-41de-6d096d76c0e6",
  "kind": "theorem",
  "lexical_name": "dirichlet_thm",
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
  "slug": "dirichlet-thm--c34e0785ba40defd62148962",
  "source": {
    "blob": "6718a5b2b25e4753f41d1454de228202f3cb531e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2553,
    "line": 2525,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c34e0785ba40defd62148962fb4a163d22fb84a6216150a51aaaaa74731571fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a82bcb4-078b-a3fa-41de-6d096d76c0e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2525–2553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichlet_thm {q : ℕ} {a : ℕ} (hq : q ≥ 1) (ha : Nat.Coprime a q) (ha' : a < q) :
    Infinite { p // p.Prime ∧ p % q = a } := by
  have : {p | p.Prime ∧ p % q = a}.Infinite := by
    have : {p | p.Prime ∧ p ≡ a [MOD q]}.Infinite := by
      have := @infinite_setOf_prime_and_eq_mod
      specialize @this q <| NeZero.of_pos hq
      simp_all only [isUnit_iff_exists_inv, forall_exists_index, ← ZMod.natCast_eq_natCast_iff]
      exact this (IsUnit.exists_right_inv (show IsUnit (a : ZMod q) from by
        rwa [ZMod.isUnit_iff_coprime])).choose (IsUnit.exists_right_inv (show IsUnit (a : ZMod q)
          from by rwa [ZMod.isUnit_iff_coprime])).choose_spec
    exact this.mono fun p hp ↦ ⟨hp.1, by simpa [ModEq, mod_eq_of_lt ha'] using hp.2⟩
  exact Set.infinite_coe_iff.mpr this

blueprint_comment /--
\section{Consequences of the Chebotarev density theorem}

-/

blueprint_comment /--
\begin{lemma}[Cyclotomic Chebotarev]\label{Chebotarev-cyclic}  For any $a$ coprime to $m$,
$$ \sum_{N \mathfrak{p} \leq x; N \mathfrak{p} = a\ (m)} \log N \mathfrak{p}  =
\frac{1}{|G|} \sum_{N \mathfrak{p} \leq x} \log N \mathfrak{p}.$$
\end{lemma}
-/

blueprint_comment /--
\begin{proof}\uses{Dedekind-PNT, WeakPNT-AP} This should follow from Lemma \ref{Dedekind-PNT} by a Fourier expansion.
\end{proof}
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean#L2525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6718a5b2b25e4753f41d1454de228202f3cb531e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
