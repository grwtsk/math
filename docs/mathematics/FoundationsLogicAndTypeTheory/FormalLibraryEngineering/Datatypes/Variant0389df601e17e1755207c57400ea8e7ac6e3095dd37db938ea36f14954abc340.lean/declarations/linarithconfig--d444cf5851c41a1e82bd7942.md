# LinarithConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61850bb3647ca2686a9e1f2cbfbb0328543449fc0b0ae9997cda774975f0afb8",
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
  "slug": "linarithconfig--d444cf5851c41a1e82bd7942",
  "source": {
    "blob": "9beff35eebc0cff23c4eb0943a5c48aac3d6af74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 318,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d444cf5851c41a1e82bd79425e6bfcf31a7c5d9bae3b28270b1d80df7f409dba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61850bb3647ca2686a9e1f2cbfbb0328543449fc0b0ae9997cda774975f0afb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LinarithConfig : Type where
  /-- Discharger to prove that a candidate linear combination of hypothesis is zero. -/
  -- TODO There should be a def for this, rather than calling `evalTactic`?
  discharger : TacticM Unit := do evalTactic (←`(tactic| ring))
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
  preprocessors : Option (List GlobalBranchingPreprocessor) := none
  /-- Specify an oracle for identifying candidate contradictions.
  The only implementation here is Fourier-Motzkin elimination. -/
  oracle : Option CertificateOracle := none

/--
`cfg.updateReducibility reduce_default` will change the transparency setting of `cfg` to
`default` if `reduce_default` is true. In this case, it also sets the discharger to `ring!`,
since this is typically needed when using stronger unification.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9beff35eebc0cff23c4eb0943a5c48aac3d6af74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
