# ResidualAwareCorrelationFlow.fullSignedCorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:772178c889d221fc7355e3b88cfa1275319e58f620ba41e9f0e57263e22db43e",
  "kind": "def",
  "lexical_name": "ResidualAwareCorrelationFlow.fullSignedCorrelation",
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
  "slug": "residualawarecorrelationflow-fullsignedcorrelation--18f3013d9fb23ef58eee34bc",
  "source": {
    "blob": "6f72744b754f359171a8e33954b3c731b8d883c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 156,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant58948729556e39add5b376697f330bbddd77c87be405e2bffced588247793e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18f3013d9fb23ef58eee34bc8f27bb89f80431cb7f9a6e387622b629acb6563f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant58948729556e39add5b376697f330bbddd77c87be405e2bffced588247793e44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:772178c889d221fc7355e3b88cfa1275319e58f620ba41e9f0e57263e22db43e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ResidualAwareCorrelationFlow.fullSignedCorrelation
    (flow : ResidualAwareCorrelationFlow (Left := Left) (Right := Right))
    (t : ℝ) (x : ℕ) : ℂ :=
  -inner ℂ (flow.leftEvolution t)
      (flow.incidenceEvolution t x (flow.rightEvolution t)) -
    flow.residualPairing t x

/-- The derivative prescribed by the local transport identity: only the
incidence defect and the differentiated residual remain after the generator
terms cancel. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant58948729556e39add5b376697f330bbddd77c87be405e2bffced588247793e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant58948729556e39add5b376697f330bbddd77c87be405e2bffced588247793e44.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f72744b754f359171a8e33954b3c731b8d883c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
