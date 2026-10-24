# coind₁Res_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b947ffe7-495a-0030-93de-a5e8efa7e14e",
  "kind": "lemma",
  "lexical_name": "coind₁Res_apply",
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
  "slug": "coind-res-apply--3b02bcfd53a896c0ae7ebba6",
  "source": {
    "blob": "d7c0d452ba0d6ebe4f64037103f80be58015d85f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 636,
    "line": 631,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant385722f9d577d7ebcf50c700825b94172780d6333394d466bbbbe6cf342ebd44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b02bcfd53a896c0ae7ebba640a40ff765d0239b18d92ce759e57b85b23f5bb0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant385722f9d577d7ebcf50c700825b94172780d6333394d466bbbbe6cf342ebd44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b947ffe7-495a-0030-93de-a5e8efa7e14e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–636.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coind₁Res_apply (φ : H →ₜ* G) (π : ContRepresentation R G V) (F : C(G, V)) (x : H) :
    coind₁Res φ π F x = F (φ x) := rfl

/-- Given a continuous group homomorphism `φ : H →ₜ* G`, a continuous intertwining map
`f : π.restrict φ →ⁱL π'` induces a continuous intertwining map
`π.coind₁.restrict φ →ⁱL π'.coind₁`, sending `F : C(G, V)` to `f ∘ F ∘ φ : C(H, W)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant385722f9d577d7ebcf50c700825b94172780d6333394d466bbbbe6cf342ebd44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant385722f9d577d7ebcf50c700825b94172780d6333394d466bbbbe6cf342ebd44.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c0d452ba0d6ebe4f64037103f80be58015d85f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
