# e_silva_herzog_piranian_goldbach_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5774db98691e2cfa0ecdb528c7e9b8ef13175c63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a2f0656-a6e4-3037-8d00-9b3ee48960e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59512e47-43b2-7f8c-1e44-da868b58cf56",
  "kind": "theorem",
  "lexical_name": "e_silva_herzog_piranian_goldbach_ext",
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
  "slug": "e-silva-herzog-piranian-goldbach-ext--965969e1c13ba0476d79b892",
  "source": {
    "blob": "5774db98691e2cfa0ecdb528c7e9b8ef13175c63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:965969e1c13ba0476d79b892c6297eebcf6319b34ed4b3b0b02faba217f4d1fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59512e47-43b2-7f8c-1e44-da868b58cf56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem e_silva_herzog_piranian_goldbach_ext : even_conjecture (4 * 10 ^ 18 + 4) := by
  intro n hn he
  simp only [Finset.mem_Icc] at hn
  by_cases! h1 : n ≤ 4 * 10 ^ 18
  · exact e_silva_herzog_piranian_goldbach n (Finset.mem_Icc.mpr ⟨hn.1, h1⟩) he
  · obtain ⟨k, hk⟩ := he
    have : n = 4000000000000000002 ∨ n = 4000000000000000004 := by omega
    rcases this with rfl | rfl
    · exact ⟨211, 3999999999999999791, prime_211, prime_3999999999999999791, by norm_num⟩
    · exact ⟨313, 3999999999999999691, prime_313, prime_3999999999999999691, by norm_num⟩

@[blueprint
  "kl-odd-goldbach-finite"
  (title := "Kadiri--Lumley's verification of odd Goldbach for small $n$")
  (statement := /-- \cite[Corollary 1.2]{kadiri-lumley}
  The odd Goldbach conjecture is verified up to $1966196911 \times 4 \times 10^{18}$. -/)
  (proof := /-- Combine Proposition \ref{e-silva-herzog-piranian-even-goldbach-ext},
  Proposition \ref{even-to-odd-goldbach-triv}, and Theorem \ref{thm:prime_gaps_KL} with
  $x_0 = e^{60}$ and $\Delta = 1966090061$.  (Actually, if one is only allowed to use the
  previous results listed here, one first needs to use the values $x_0 = e^{59}$ and
  $\Delta = 1946282821$ to cover an intermediate range of values.)-/)
  (latexEnv := "proposition")
  (discussion := 970)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5774db98691e2cfa0ecdb528c7e9b8ef13175c63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
