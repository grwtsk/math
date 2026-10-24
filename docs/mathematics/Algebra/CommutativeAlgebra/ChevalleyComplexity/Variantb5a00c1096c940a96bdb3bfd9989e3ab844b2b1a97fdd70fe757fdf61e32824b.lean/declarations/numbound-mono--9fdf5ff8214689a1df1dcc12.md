# numBound_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f3bbeab-931f-2042-40a3-6d152b685d3c",
  "kind": "lemma",
  "lexical_name": "numBound_mono",
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
  "slug": "numbound-mono--9fdf5ff8214689a1df1dcc12",
  "source": {
    "blob": "7201a976ef3fafeb2a26776aa5bdd22d7d398675",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 650,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fdf5ff8214689a1df1dcc126b4727fc458bcb812eeb3643e5b5ca9f58dd1122",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f3bbeab-931f-2042-40a3-6d152b685d3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma numBound_mono (hk : k₁ ≤ k₂) :
    ∀ n, (∀ i < n, D₁ i ≤ D₂ i) → numBound k₁ D₁ n ≤ numBound k₂ D₂ n
  | 0, hD => by simpa using hk
  | n + 1, hD => by
    rw [numBound_succ, numBound_succ]
    gcongr
    · exact numBound_mono hk _ fun i hi ↦ hD _ (hi.trans n.lt_succ_self)
    · exact degBound_le_degBound hk _ fun i hi ↦ hD _ (hi.trans n.lt_succ_self)
    · exact hD _ n.lt_succ_self

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7201a976ef3fafeb2a26776aa5bdd22d7d398675` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
