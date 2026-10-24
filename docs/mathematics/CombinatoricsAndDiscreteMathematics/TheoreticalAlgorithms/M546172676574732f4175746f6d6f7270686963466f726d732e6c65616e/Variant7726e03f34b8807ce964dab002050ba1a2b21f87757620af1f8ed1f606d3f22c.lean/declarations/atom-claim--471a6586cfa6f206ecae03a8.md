# Atom.claim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b69c5a9aa0d5c394b61b53c3d4db357e9553092151e17c20c8feeb84041936a",
  "kind": "def",
  "lexical_name": "Atom.claim",
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
  "slug": "atom-claim--471a6586cfa6f206ecae03a8",
  "source": {
    "blob": "e6f96346b64a1888339e3e4aeb1e27627ea24971",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4175746f6d6f7270686963466f726d732e6c65616e/Variant7726e03f34b8807ce964dab002050ba1a2b21f87757620af1f8ed1f606d3f22c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:471a6586cfa6f206ecae03a81da32ccc512c6f0563ac932257ef2a542685a34a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4175746f6d6f7270686963466f726d732e6c65616e/Variant7726e03f34b8807ce964dab002050ba1a2b21f87757620af1f8ed1f606d3f22c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b69c5a9aa0d5c394b61b53c3d4db357e9553092151e17c20c8feeb84041936a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.claim (ctx : Context) : Atom -> Prop
  | .replacementScopeDeclared => ctx.ReplacementScopeDeclared
  | .theoremInventoryDeclared => ∃ _T : ctx.AutomorphicTheorem, True
  | .finiteQWaveData => ∃ _M : ctx.FiniteQWaveModule, True
  | .transformationLaw =>
      ∃ M : ctx.FiniteQWaveModule, ctx.HasTransformationLaw M
  | .heckeAction => ∃ M : ctx.FiniteQWaveModule, ctx.HasHeckeTheory M
  | .heckeEigenrelation => ∃ M : ctx.FiniteQWaveModule, ctx.HasHeckeTheory M
  | .representationTheoreticObject =>
      ∃ M : ctx.FiniteQWaveModule, ctx.HasRepresentationTheory M
  | .lFunctionAnalyticProperties =>
      ∃ M : ctx.FiniteQWaveModule, ctx.HasLFunctionTheory M
  | .localGlobalCompatibility =>
      ∃ M : ctx.FiniteQWaveModule, ctx.HasLocalGlobalCompatibility M
  | .spectralDecomposition =>
      ∃ M : ctx.FiniteQWaveModule, ctx.HasRepresentationTheory M
  | .automorphyLiftingInterface =>
      ∃ M : ctx.FiniteQWaveModule, ctx.HasRepresentationTheory M
  | .theoremSubsumption =>
      ∀ T : ctx.AutomorphicTheorem,
        ctx.CoveredByFramework T -> ctx.ReprovedInsideFramework T
  | .finalAutomorphicReplacementClaim => finalClaim ctx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4175746f6d6f7270686963466f726d732e6c65616e/Variant7726e03f34b8807ce964dab002050ba1a2b21f87757620af1f8ed1f606d3f22c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4175746f6d6f7270686963466f726d732e6c65616e/Variant7726e03f34b8807ce964dab002050ba1a2b21f87757620af1f8ed1f606d3f22c.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6f96346b64a1888339e3e4aeb1e27627ea24971` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
