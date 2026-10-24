# ramare_saouter_odd_goldbach

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cb2695c-25bb-eaad-a191-a45534d3939e",
  "kind": "theorem",
  "lexical_name": "ramare_saouter_odd_goldbach",
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
  "slug": "ramare-saouter-odd-goldbach--e9756166838fada9d0b8d147",
  "source": {
    "blob": "8bbb036da106cf2916d9064566357bd5b0a27359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 174,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9756166838fada9d0b8d1476063a73bff0e7a3582aa739b0ab9193cd1980e45",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cb2695c-25bb-eaad-a191-a45534d3939e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ramare_saouter_odd_goldbach : odd_conjecture 11325599999999886744004 := by
  have h1 := even_to_odd_goldbach 10726905042 (4 * 10 ^ 14) 28314000
    (fun x hx => RamareSaouter2003.has_prime_in_interval x (by norm_cast : (x : ℝ) > 10726905041))
    richstein_goldbach
  have h2 := odd_conjecture_mono (4 * 10 ^ 14 + 3) 10726905046
    (even_to_odd_goldbach_triv _ richstein_goldbach)
  norm_num at *
  exact h1 h2

@[blueprint
  "e-silva-herzog-piranian-even-goldbach"
  (title := "e Silva--Herzog--Piranian verification of even Goldbach")
  (statement := /-- \cite{eSHP}
  The even Goldbach conjecture is verified up to $4 \times 10^{18}$. -/)
  (proof := /-- Numerical verification. -/)
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbb036da106cf2916d9064566357bd5b0a27359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
