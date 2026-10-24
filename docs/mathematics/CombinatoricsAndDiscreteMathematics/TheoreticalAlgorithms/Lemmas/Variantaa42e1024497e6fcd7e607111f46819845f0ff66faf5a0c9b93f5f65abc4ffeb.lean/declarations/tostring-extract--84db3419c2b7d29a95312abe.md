# toString_extract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfe236d7-fa18-3449-2312-7a848da76acd",
  "kind": "theorem",
  "lexical_name": "toString_extract",
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
  "slug": "tostring-extract--84db3419c2b7d29a95312abe",
  "source": {
    "blob": "1778df3e7d200f1485f17288a6a0f05098521e64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1037,
    "line": 1029,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaa42e1024497e6fcd7e607111f46819845f0ff66faf5a0c9b93f5f65abc4ffeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84db3419c2b7d29a95312abe338fbba26c1b46d8a11cc182b2d12b2ffe8be178",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaa42e1024497e6fcd7e607111f46819845f0ff66faf5a0c9b93f5f65abc4ffeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfe236d7-fa18-3449-2312-7a848da76acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1029–1037.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toString_extract : ∀ {s}, Valid s → Valid ⟨s.toString, b, e⟩ →
    (s.extract b e).toString = s.toString.extract b e
  | _, h₁, h₂ => by
    let ⟨l, m, r, h₁⟩ := h₁.validFor
    rw [h₁.toString] at h₂
    let ⟨ml, mm, mr, h₂⟩ := h₂.validFor
    have ⟨l', r', h₃⟩ := h₁.extract h₂
    rw [h₃.toString, h₁.toString, ← h₂.toString, toString]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaa42e1024497e6fcd7e607111f46819845f0ff66faf5a0c9b93f5f65abc4ffeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaa42e1024497e6fcd7e607111f46819845f0ff66faf5a0c9b93f5f65abc4ffeb.lean#L1029).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1778df3e7d200f1485f17288a6a0f05098521e64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
