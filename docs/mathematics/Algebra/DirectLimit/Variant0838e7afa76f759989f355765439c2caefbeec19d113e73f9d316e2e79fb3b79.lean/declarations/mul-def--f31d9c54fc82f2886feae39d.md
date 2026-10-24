# mul_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63aca26a-c1e7-6a86-e7f2-69e82ffa88e4",
  "kind": "theorem",
  "lexical_name": "mul_def",
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
  "slug": "mul-def--f31d9c54fc82f2886feae39d",
  "source": {
    "blob": "eb07608985a608234e3ff24c7b564174ef7d2f8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 78,
    "path": "GRWTSK/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f31d9c54fc82f2886feae39d6a12ada4c19570d848e079567f73ed87bcb6d198",
  "verification": {
    "reference": "docs/verification/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63aca26a-c1e7-6a86-e7f2-69e82ffa88e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] theorem mul_def (i) (x y : G i) :
    ⟦⟨i, x⟩⟧ * ⟦⟨i, y⟩⟧ = (⟦⟨i, x * y⟩⟧ : DirectLimit G f) :=
  map₂_def ..

end AddMul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb07608985a608234e3ff24c7b564174ef7d2f8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
