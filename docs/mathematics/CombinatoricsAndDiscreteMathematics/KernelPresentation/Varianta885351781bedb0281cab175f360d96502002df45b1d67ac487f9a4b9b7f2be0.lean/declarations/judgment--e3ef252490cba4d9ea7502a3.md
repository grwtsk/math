# Judgment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18034a3f71be02636ef20cd4c002e9fbb4ec05aef166940756a9e8246febf5c8",
  "kind": "abbrev",
  "lexical_name": "Judgment",
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
  "slug": "judgment--e3ef252490cba4d9ea7502a3",
  "source": {
    "blob": "39a60c85516deb92d5c900cce38736a244331470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 190,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KernelPresentation/Varianta885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3ef252490cba4d9ea7502a304ffc455fc1008d3ea51135ce78fb414332c1655",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KernelPresentation/Varianta885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18034a3f71be02636ef20cd4c002e9fbb4ec05aef166940756a9e8246febf5c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Judgment (K : KernelPresentation) :=
  ScopedJudgment K.UniverseContext K.LocalContext K.Expr

/--
**Type-enforced invariant:** `JudgmentAt K Γ` contains exactly a `K.Judgment`
whose stored local context is `Γ`.

**Used by:** The public context action and its algebra laws use this endpoint-
indexed view; raw derivation nodes continue to retain the full judgment index.

**Proof idea:** Endpoint membership is carried as a subtype equality witness;
the presentation's action laws then make identity and sequential transport
agree by propositional equality.

**Architectural problem:** A bare `Judgment` is insufficient when a morphism
must enforce its source or target context.

**Important data and indices:** `context` is a local-context index selected by
the same presentation `K`.

**Layer boundary:** This is an abstract endpoint view, not Lean context
transport.

**Worked example:** The toy identity action consumes a value at `[]`.

**Equality notion:** The subtype stores propositional context equality.

**Boundary cases:** The empty telescope still has an explicit endpoint index.

**Validation consequence:** Wrong-source abstract actions fail to elaborate;
concrete transport correctness remains external to M1a.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KernelPresentation/Varianta885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KernelPresentation/Varianta885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39a60c85516deb92d5c900cce38736a244331470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
