# binaryCofan_pt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1941029c-cb77-b63a-d08c-c65524a4591d",
  "kind": "lemma",
  "lexical_name": "binaryCofan_pt",
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
  "slug": "binarycofan-pt--c9c858e0129b03fed8f0d24d",
  "source": {
    "blob": "44efd935a703a175e2d872e0720252b581c26098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 45,
    "path": "GRWTSK/Algebra/Monoidal/Variant885f2775a7475e2fbb051c89100f2bb494adf9c76eef3439e56c1a9aa8b1313f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9c858e0129b03fed8f0d24d3e81d2a46b32b0367e78196d86a22c1a289e19c7",
  "verification": {
    "reference": "docs/verification/Algebra/Monoidal/Variant885f2775a7475e2fbb051c89100f2bb494adf9c76eef3439e56c1a9aa8b1313f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1941029c-cb77-b63a-d08c-c65524a4591d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma binaryCofan_pt : (binaryCofan A B).pt = ↧(A ⊗[R] B) := rfl

/-- Verify that the pushout cocone is indeed the colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Monoidal/Variant885f2775a7475e2fbb051c89100f2bb494adf9c76eef3439e56c1a9aa8b1313f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Monoidal/Variant885f2775a7475e2fbb051c89100f2bb494adf9c76eef3439e56c1a9aa8b1313f.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44efd935a703a175e2d872e0720252b581c26098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
