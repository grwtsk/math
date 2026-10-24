# factorization_lcmUpto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:564fe6d5-9063-c9bb-df67-c9ff90b348e9",
  "kind": "theorem",
  "lexical_name": "factorization_lcmUpto",
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
  "slug": "factorization-lcmupto--172bcdfd8741a5aa5a71dcad",
  "source": {
    "blob": "c61841c98997cb77229212c2741e157e4724b1f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:172bcdfd8741a5aa5a71dcadce07b7dff5317731627e29b951433ba35c6308ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:564fe6d5-9063-c9bb-df67-c9ff90b348e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_lcmUpto (n : ℕ) {p : ℕ} (hp : p.Prime) : (lcmUpto n).factorization p = p.log n := calc
  _ = (Icc 1 n).sup (fun k => k.factorization p) := Finset.factorization_lcm (fun k hk => by aesop) p
  _ = _ := by
    have := hp.one_lt
    refine le_antisymm ?_ ?_
    · simp only [Finset.sup_le_iff, mem_Icc, and_imp]
      intro m h1 h2
      exact le_log_of_pow_le this
        (le_of_dvd (Order.one_le_iff_pos.mp h1) (ordProj_dvd m p) |>.trans h2)
    rcases le_or_gt p n with _ | h
    · have := pow_log_le_self p (x := n) (by linarith)
      grw [← le_sup (b := p ^ p.log n) (by grind)]
      simp [hp]
    simp [log_of_lt h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61841c98997cb77229212c2741e157e4724b1f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
