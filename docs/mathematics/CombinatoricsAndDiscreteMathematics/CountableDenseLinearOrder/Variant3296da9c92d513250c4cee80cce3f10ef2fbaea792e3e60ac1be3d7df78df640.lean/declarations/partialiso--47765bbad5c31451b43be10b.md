# PartialIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:734082e26d70a9fc40a26f76b06dc978b922459ef77a5241d66ea82d4b8a882c",
  "kind": "def",
  "lexical_name": "PartialIso",
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
  "slug": "partialiso--47765bbad5c31451b43be10b",
  "source": {
    "blob": "cb52d90e84f78bad37640d2e1d15616a5d3c6030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47765bbad5c31451b43be10b2569ef84445242714e13302ec2c688549bc1886a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:734082e26d70a9fc40a26f76b06dc978b922459ef77a5241d66ea82d4b8a882c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PartialIso : Type _ :=
  { f : Finset (α × β) //
    ∀ p ∈ f, ∀ q ∈ f,
      cmp (Prod.fst p) (Prod.fst q) = cmp (Prod.snd p) (Prod.snd q) }

namespace PartialIso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb52d90e84f78bad37640d2e1d15616a5d3c6030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
