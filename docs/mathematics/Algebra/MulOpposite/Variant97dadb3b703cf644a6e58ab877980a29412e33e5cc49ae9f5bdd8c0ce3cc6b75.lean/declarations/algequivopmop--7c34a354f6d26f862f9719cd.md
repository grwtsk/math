# algEquivOpMop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63ec438ad7d4ff47012618b2f7b2808327e70f5fa27ea650b83e100d3b9e7ccb",
  "kind": "def",
  "lexical_name": "algEquivOpMop",
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
  "slug": "algequivopmop--7c34a354f6d26f862f9719cd",
  "source": {
    "blob": "4067f74a81a08bc46d49f8f37c20e6165a069c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 146,
    "path": "GRWTSK/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c34a354f6d26f862f9719cd7f26644b94e1192daa8d53a0c8b98f36a32ff069",
  "verification": {
    "reference": "docs/verification/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63ec438ad7d4ff47012618b2f7b2808327e70f5fa27ea650b83e100d3b9e7ccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algEquivOpMop (S : Subalgebra R A) : S ≃ₐ[R] (S.op)ᵐᵒᵖ where
  __ := S.toSubsemiring.ringEquivOpMop
  commutes' _ := rfl

/-- Bijection between `MulOpposite` of a subalgebra `S` and its opposite. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4067f74a81a08bc46d49f8f37c20e6165a069c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
