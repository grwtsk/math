# Equiv.diff_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cde5d8d1-338c-776e-667f-8b65d3831aee",
  "kind": "theorem",
  "lexical_name": "Equiv.diff_congr",
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
  "slug": "equiv-diff-congr--1648d7a18f68c8ffddcadffc",
  "source": {
    "blob": "4faad42f9986e3bde2a550d1cd20b2a5b4d80e19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1234,
    "line": 1229,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Varianta56e37d15a5f8fa551d00b5fc53067ac29b25313fbe96abe7cf982d4d553c190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1648d7a18f68c8ffddcadffc554657543b6ed7b0d01daa7882fb7dd6ebf84942",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Varianta56e37d15a5f8fa551d00b5fc53067ac29b25313fbe96abe7cf982d4d553c190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cde5d8d1-338c-776e-667f-8b65d3831aee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1229–1234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.diff_congr {m₃ m₄ : Raw α} [EquivBEq α] [LawfulHashable α] (h₁ : m₁.WF) (h₂ : m₂.WF) (h₃ : m₃.WF) (h₄ : m₄.WF)
    (equiv₁ : m₁ ~m m₃) (equiv₂ : m₂ ~m m₄) :
    (m₁ \ m₂) ~m (m₃ \ m₄) :=
  ⟨@HashMap.Raw.Equiv.diff_congr _ _ _ _ m₁.inner m₂.inner m₃.inner m₄.inner _ _ h₁.out h₂.out h₃.out h₄.out equiv₁.1 equiv₂.1⟩

/- get? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Varianta56e37d15a5f8fa551d00b5fc53067ac29b25313fbe96abe7cf982d4d553c190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Varianta56e37d15a5f8fa551d00b5fc53067ac29b25313fbe96abe7cf982d4d553c190.lean#L1229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4faad42f9986e3bde2a550d1cd20b2a5b4d80e19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
