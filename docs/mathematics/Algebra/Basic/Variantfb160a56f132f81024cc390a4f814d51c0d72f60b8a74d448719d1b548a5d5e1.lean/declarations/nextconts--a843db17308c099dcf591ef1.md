# nextConts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cac1aa3c175766a0008247d53bd958facb56c7004bf7112fca4c5387a93f066f",
  "kind": "def",
  "lexical_name": "nextConts",
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
  "slug": "nextconts--a843db17308c099dcf591ef1",
  "source": {
    "blob": "5196332454ed6561750c58b001a8615193a4193d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 296,
    "path": "GRWTSK/Algebra/Basic/Variantfb160a56f132f81024cc390a4f814d51c0d72f60b8a74d448719d1b548a5d5e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a843db17308c099dcf591ef10bf98cab0c4101cc704fb560f8147e66e4bd6642",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfb160a56f132f81024cc390a4f814d51c0d72f60b8a74d448719d1b548a5d5e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cac1aa3c175766a0008247d53bd958facb56c7004bf7112fca4c5387a93f066f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nextConts (a b : K) (ppred pred : Pair K) : Pair K :=
  ⟨nextNum a b ppred.a pred.a, nextDen a b ppred.b pred.b⟩

/-- Returns the continuants `⟨Aₙ₋₁, Bₙ₋₁⟩` of `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfb160a56f132f81024cc390a4f814d51c0d72f60b8a74d448719d1b548a5d5e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfb160a56f132f81024cc390a4f814d51c0d72f60b8a74d448719d1b548a5d5e1.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5196332454ed6561750c58b001a8615193a4193d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
