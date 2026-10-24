# numBound_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc32d4255acefb2564af50d0c658288326d98ff4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 642,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41d036d8-2575-1c4a-3a31-2bb22eda4824",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2b95c5b-2f48-ecf1-2448-3d95f5f140c0",
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
  "slug": "numbound-mono--2ef0cc2f66239faaa5cecf92",
  "source": {
    "blob": "dc32d4255acefb2564af50d0c658288326d98ff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 642,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ef0cc2f66239faaa5cecf92f9b01510d21b55eec7a225e713f10319d1bd3f47",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2b95c5b-2f48-ecf1-2448-3d95f5f140c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–653.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc32d4255acefb2564af50d0c658288326d98ff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
