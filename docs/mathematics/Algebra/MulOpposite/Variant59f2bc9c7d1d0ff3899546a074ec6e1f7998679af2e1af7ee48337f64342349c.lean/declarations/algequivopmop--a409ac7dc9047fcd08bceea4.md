# algEquivOpMop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41e7455706c6d1047951da0fedeca7f6732e76bad4ceb9e834a01385d773ba8c",
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
  "slug": "algequivopmop--a409ac7dc9047fcd08bceea4",
  "source": {
    "blob": "6439fa2586ca6bb86dcb4928ac95c1640f049c70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 154,
    "path": "GRWTSK/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a409ac7dc9047fcd08bceea469354edf87167817920fb9f3b909cfb00128b6c6",
  "verification": {
    "reference": "docs/verification/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41e7455706c6d1047951da0fedeca7f6732e76bad4ceb9e834a01385d773ba8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–159.

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

[Verification target and public status](../../../../../verification/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6439fa2586ca6bb86dcb4928ac95c1640f049c70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
