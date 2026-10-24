# helfgott_odd_goldbach_finite

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
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da015abf-eac7-d397-f560-4ed5ea150ba9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0349dbc3-6de1-f891-3fd1-2b7cbbd7444b",
  "kind": "theorem",
  "lexical_name": "helfgott_odd_goldbach_finite",
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
  "slug": "helfgott-odd-goldbach-finite--88a98ef126ca68de46480b37",
  "source": {
    "blob": "5774db98691e2cfa0ecdb528c7e9b8ef13175c63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 193,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88a98ef126ca68de46480b37f1d167ef4cd89d87626af8b4db35bae67b75a365",
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

Occurrence: `result:0349dbc3-6de1-f891-3fd1-2b7cbbd7444b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem helfgott_odd_goldbach_finite : odd_conjecture (11325 * 10 ^ 22) := by
  have h1 := even_to_odd_goldbach 10726905042 (4 * 10 ^ 18) 28314000
    (fun x hx => RamareSaouter2003.has_prime_in_interval x (by norm_cast : (x : ℝ) > 10726905041))
    e_silva_herzog_piranian_goldbach
  have h2 := odd_conjecture_mono (4 * 10 ^ 18 + 3) 10726905046
    (even_to_odd_goldbach_triv _ e_silva_herzog_piranian_goldbach)
  norm_num at *
  exact odd_conjecture_mono _ _ (h1 h2) (by grind)

blueprint_comment /-- The arguments in \cite[Appendix C]{helfgott-goldbach-arxiv} push the
bound further than this, but require unpublished estimates of Ramare. However, similar
arguments were established in \cite{kadiri-lumley}, and we present them here. -/

@[blueprint
  "e-silva-herzog-piranian-even-goldbach-ext"
  (title := "e Silva--Herzog--Piranian verification of even Goldbach (extended)")
  (statement := /-- \cite{eSHP}
  The even Goldbach conjecture is verified up to $4 \times 10^{18} + 4$. -/)
  (proof := /-- If $N = 4 \times 10^{18}$, use the fact that $211, 313, N-209, N-309$
  are all prime. -/)
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5774db98691e2cfa0ecdb528c7e9b8ef13175c63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
