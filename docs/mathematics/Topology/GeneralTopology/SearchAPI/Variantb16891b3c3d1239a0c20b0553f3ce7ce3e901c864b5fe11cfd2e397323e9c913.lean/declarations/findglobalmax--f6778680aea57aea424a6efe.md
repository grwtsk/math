# findGlobalMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e200c64e90bf6bf5480636055f76c9182a1967b705769ec0adcfe64f3bc1718",
  "kind": "def",
  "lexical_name": "findGlobalMax",
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
  "slug": "findglobalmax--f6778680aea57aea424a6efe",
  "source": {
    "blob": "c7607ad9e8a41bcb92d7dd997dddf7f9287324f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 251,
    "path": "GRWTSK/Topology/GeneralTopology/SearchAPI/Variantb16891b3c3d1239a0c20b0553f3ce7ce3e901c864b5fe11cfd2e397323e9c913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6778680aea57aea424a6efeedf9f040161cb3b6f61073eb9d6399ee2b6b3e98",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SearchAPI/Variantb16891b3c3d1239a0c20b0553f3ce7ce3e901c864b5fe11cfd2e397323e9c913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e200c64e90bf6bf5480636055f76c9182a1967b705769ec0adcfe64f3bc1718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def findGlobalMax (e : Expr) (hsupp : ExprSupported e)
    (B : Box) (cfg : OptSearchConfig := {}) :
    GlobalMaxResult e B :=
  let optCfg := cfg.toGlobalOptConfig
  let result := globalMaximizeCore e B optCfg
  let hdom : ∀ (B' : Box), B'.length = B.length → evalDomainValid e B'.toEnv { taylorDepth := optCfg.taylorDepth } :=
    fun B' _ => ExprSupported.domainValid hsupp B'.toEnv { taylorDepth := optCfg.taylorDepth }
  {
    maximizerBox := result.bound.bestBox
    maxValue := { lo := result.bound.lo, hi := result.bound.hi,
                  le := globalMaximizeCore_lo_le_hi e hsupp.toCore B optCfg hdom }
    upperBoundProof := fun ρ hρ hzero =>
      globalMaximizeCore_hi_correct e hsupp.toCore B optCfg hdom ρ hρ hzero
    lowerBoundWitness := globalMaximizeCore_lo_achievable e hsupp.toCore B optCfg hdom
  }

/-! ## 1D Optimization Convenience APIs -/

/-- Result of 1D global minimization with simplified proof structure -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SearchAPI/Variantb16891b3c3d1239a0c20b0553f3ce7ce3e901c864b5fe11cfd2e397323e9c913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SearchAPI/Variantb16891b3c3d1239a0c20b0553f3ce7ce3e901c864b5fe11cfd2e397323e9c913.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7607ad9e8a41bcb92d7dd997dddf7f9287324f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
