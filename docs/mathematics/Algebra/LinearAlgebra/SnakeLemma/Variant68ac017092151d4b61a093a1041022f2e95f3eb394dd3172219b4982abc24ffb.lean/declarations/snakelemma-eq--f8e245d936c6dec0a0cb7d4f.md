# SnakeLemma.δ'_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb7a8776f1f85debe7751c11d063b505769015b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68ac017092151d4b61a093a1041022f2e95f3eb394dd3172219b4982abc24ffb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a471ae8e-4632-b193-f4e3-f492a02897f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d69d7e5-3b45-87f1-c977-82c5b51a382d",
  "kind": "lemma",
  "lexical_name": "SnakeLemma.δ'_eq",
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
  "slug": "snakelemma-eq--f8e245d936c6dec0a0cb7d4f",
  "source": {
    "blob": "bb7a8776f1f85debe7751c11d063b505769015b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 231,
    "path": "GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant68ac017092151d4b61a093a1041022f2e95f3eb394dd3172219b4982abc24ffb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8e245d936c6dec0a0cb7d4fbabc7bbf09ca99194541013c44437fd0943015f0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SnakeLemma/Variant68ac017092151d4b61a093a1041022f2e95f3eb394dd3172219b4982abc24ffb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d69d7e5-3b45-87f1-c977-82c5b51a382d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma SnakeLemma.δ'_eq (hf₂ : Surjective f₂) (hg₁ : Injective g₁)
    (x : K₃) (y) (hy : f₂ y = ι₃ x) (z) (hz : g₁ z = i₂ y) :
    δ' i₁ i₂ i₃ f₁ f₂ hf g₁ g₂ hg h₁ h₂ ι₃ hι₃ π₁ hπ₁ hf₂ hg₁ x = π₁ z :=
  SnakeLemma.δ_eq _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ‹_› ‹_› _ ‹_›

include hι₂ in
/--
Suppose we have an exact commutative diagram
```
        K₂ -F-→ K₃
        |       |
        ι₂      ι₃
        ↓       ↓
M₁ -f₁→ M₂ -f₂→ M₃
|       |       |
i₁      i₂      i₃
↓       ↓       ↓
N₁ -g₁→ N₂ -g₂→ N₃
|
π₁
↓
C₁

```
such that `f₂` is surjective, `g₁` is injective, and `ι₃` is injective,
then `K₂ -F→ K₃ -δ→ C₁` is exact.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SnakeLemma/Variant68ac017092151d4b61a093a1041022f2e95f3eb394dd3172219b4982abc24ffb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant68ac017092151d4b61a093a1041022f2e95f3eb394dd3172219b4982abc24ffb.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb7a8776f1f85debe7751c11d063b505769015b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
