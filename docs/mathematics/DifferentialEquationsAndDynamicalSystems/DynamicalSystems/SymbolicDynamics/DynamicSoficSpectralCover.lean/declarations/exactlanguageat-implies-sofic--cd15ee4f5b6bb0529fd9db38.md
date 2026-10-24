# ExactLanguageAt.implies_sofic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9a19606-f181-4660-8f53-33a14ef137dc",
  "kind": "theorem",
  "lexical_name": "ExactLanguageAt.implies_sofic",
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
  "slug": "exactlanguageat-implies-sofic--cd15ee4f5b6bb0529fd9db38",
  "source": {
    "blob": "1f1ddbbd9bff6cb99d794140f28497598923b005",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 171,
    "path": "GRWTSK/DynamicalSystems/Symbolic/DynamicSoficSpectralCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd15ee4f5b6bb0529fd9db386d6e01ec8ecb8f09de281a46d3f981e5685e7dee",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9a19606-f181-4660-8f53-33a14ef137dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ExactLanguageAt.implies_sofic
    {X : Type u} {Observation : Type v}
    {Vertex : Type w} {Alphabet : Type q} {Spectral : Type r}
    [Fintype Vertex] [Fintype Alphabet]
    [AddCommGroup Spectral] [Module ℂ Spectral]
    {C : DynamicSpectralCover X Observation Vertex Alphabet Spectral}
    {x : X} (E : ExactLanguageAt C x) :
    IsSoficTrace (C.labelTrace x) :=
  ⟨E.presentation⟩

/-- A proved non-sofic source factor language obstructs EXACT
finite-state language identification at this source, not the mere
existence of a readable path through some finite graph. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/Symbolic/DynamicSoficSpectralCover.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f1ddbbd9bff6cb99d794140f28497598923b005` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
