# auxMemKer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08635dae-922e-7eb8-0d94-5f690e4224d3",
  "kind": "lemma",
  "lexical_name": "auxMemKer",
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
  "slug": "auxmemker--6945b8f4fe9486af7ac45b4d",
  "source": {
    "blob": "4888869daa0abe335389a84535eee0428866c193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 491,
    "path": "GRWTSK/Algebra/JacobiZariski/Variant901c93281362b2dd1764761085de64305c885846740b4b0d51e2168bbf5c2067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6945b8f4fe9486af7ac45b4d712c435811ac8545bce6e22e98df27c421e59b4b",
  "verification": {
    "reference": "docs/verification/Algebra/JacobiZariski/Variant901c93281362b2dd1764761085de64305c885846740b4b0d51e2168bbf5c2067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08635dae-922e-7eb8-0d94-5f690e4224d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma auxMemKer (z : T ⊗[S] P.toExtension.H1Cotangent) :
    LinearMap.liftBaseChange T (Extension.Cotangent.map (Q.toComp P).toExtensionHom)
      ((LinearMap.lTensor T Extension.h1Cotangentι) z) ∈
        (Q.comp P).toExtension.cotangentComplex.ker := by
  induction z with
  | tmul x y => simp [← Extension.CotangentSpace.map_cotangentComplex]
  | add x y hx hy => simpa using Submodule.add_mem _ hx hy

set_option backward.isDefEq.respectTransparency.types false in
open LinearMap in
/-- When $T$ is flat over $S$, the left bottom part of the snake lemma diagram used in
the construction of the connecting homomorphism `Algebra.Generators.H1Cotangent.δ`
naturally extends via a base change map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/JacobiZariski/Variant901c93281362b2dd1764761085de64305c885846740b4b0d51e2168bbf5c2067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/JacobiZariski/Variant901c93281362b2dd1764761085de64305c885846740b4b0d51e2168bbf5c2067.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4888869daa0abe335389a84535eee0428866c193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
