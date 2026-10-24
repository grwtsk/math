# Spectral.BoundaryConditionKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e8a7ef0954b553ab954de3c8d60943e743adb734a89d18a3a6be616bda14933",
  "kind": "inductive",
  "lexical_name": "Spectral.BoundaryConditionKind",
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
  "slug": "spectral-boundaryconditionkind--cc0e50402dd3e758ea80b958",
  "source": {
    "blob": "4918448070b41d0c2a09dd59c23ba2ba43705fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc0e50402dd3e758ea80b9585e635bdddd7486caa60eebeabf5c1281709f2b9d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e8a7ef0954b553ab954de3c8d60943e743adb734a89d18a3a6be616bda14933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Spectral.BoundaryConditionKind where
  | closed
  | neumann
  | dirichlet
  | robin
  | mixed
  | unknown
deriving DecidableEq, Repr

/--
Mode in which a finite spectral approximation is claimed to converge.

Eigenvalue convergence alone is not enough for trace-formula evidence unless
the trace side, spectral measure, normalization, and operator-domain
hypotheses are also certified.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4918448070b41d0c2a09dd59c23ba2ba43705fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
