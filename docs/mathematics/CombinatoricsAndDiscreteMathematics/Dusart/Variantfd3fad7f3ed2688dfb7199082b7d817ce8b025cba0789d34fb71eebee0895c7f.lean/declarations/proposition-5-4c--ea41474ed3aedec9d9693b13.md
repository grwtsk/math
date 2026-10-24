# proposition_5_4c

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4d176ef04c86581c0693188cbf24d0c2c3308ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 626,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b13aa92-1116-2618-6871-e3ecee9fecfb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2754abc2-f64d-8bdc-9b32-e698f614b7b8",
  "kind": "theorem",
  "lexical_name": "proposition_5_4c",
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
  "slug": "proposition-5-4c--ea41474ed3aedec9d9693b13",
  "source": {
    "blob": "b4d176ef04c86581c0693188cbf24d0c2c3308ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 626,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variantfd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea41474ed3aedec9d9693b13657693409325200c2bf38ea96113d233c554f1d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dusart/Variantfd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2754abc2-f64d-8bdc-9b32-e698f614b7b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proposition_5_4c (x : ℝ) (hx : x ∈ Set.Icc 89693 360653) : HasPrimeInInterval x (x / (log x)^(3:ℝ)) := sorry


@[blueprint "Dusart_prop_5_4"
  (title := "Dusart Proposition 5.4")
  (statement := /--
  There exists a constant $X_0$ (one may take $X_0 = 89693$) with the following property:
  for every real $x \geq X_0$, there exists a prime $p$ with
  \[
  x < p \le x\Bigl(1 + \frac{1}{\log^3 x}\Bigr).
  \]
  -/)
  (proof := /-- Combine the three substeps. -/)
  (latexEnv := "proposition")
  (discussion := 912)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dusart/Variantfd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variantfd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d176ef04c86581c0693188cbf24d0c2c3308ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
