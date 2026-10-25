# LinarithConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e1262d42d0d2e7aa783a05a207392a7f1a3b3af7b14b978e86ba6e5b991a57a",
  "kind": "structure",
  "lexical_name": "LinarithConfig",
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
  "slug": "linarithconfig--a04f696420b871537b2e98ba",
  "source": {
    "blob": "c85d90d2356618bdac4bf82a55d26e05805b9e5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a04f696420b871537b2e98ba8905ab27e9f5ee5f879cf7f7b95a6290f626ff7c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e1262d42d0d2e7aa783a05a207392a7f1a3b3af7b14b978e86ba6e5b991a57a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LinarithConfig : Type where
  /-- Discharger to prove that a candidate linear combination of hypothesis is zero. -/
  -- TODO There should be a def for this, rather than calling `evalTactic`?
  discharger : TacticM Unit := do evalTactic (← `(tactic| ring1))
  -- We can't actually store a `Type` here,
  -- as we want `LinarithConfig : Type` rather than ` : Type 1`,
  -- so that we can define `elabLinarithConfig : Lean.Syntax → Lean.Elab.TermElabM LinarithConfig`.
  -- For now, we simply don't support restricting the type.
  -- (restrict_type : Option Type := none)
  /-- Prove goals which are not linear comparisons by first calling `exfalso`. -/
  exfalso : Bool := true
  /-- Transparency mode for identifying atomic expressions in comparisons. -/
  transparency : TransparencyMode := .reducible
  /-- Split conjunctions in hypotheses. -/
  splitHypotheses : Bool := true
  /-- Split `≠` in hypotheses, by branching in cases `<` and `>`. -/
  splitNe : Bool := false
  /-- Override the list of preprocessors. -/
  preprocessors : List GlobalBranchingPreprocessor := defaultPreprocessors
  /-- Specify an oracle for identifying candidate contradictions.
  `.simplexAlgorithmSparse`, `.simplexAlgorithmSparse`, and `.fourierMotzkin` are available. -/
  oracle : CertificateOracle := .simplexAlgorithmSparse

/--
`cfg.updateReducibility reduce_default` will change the transparency setting of `cfg` to
`default` if `reduce_default` is true. In this case, it also sets the discharger to `ring!`,
since this is typically needed when using stronger unification.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c85d90d2356618bdac4bf82a55d26e05805b9e5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
