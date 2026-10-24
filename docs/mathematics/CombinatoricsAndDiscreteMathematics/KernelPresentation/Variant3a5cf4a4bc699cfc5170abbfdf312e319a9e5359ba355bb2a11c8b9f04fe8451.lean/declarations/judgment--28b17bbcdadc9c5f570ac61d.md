# Judgment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7029cac3da3e44b7bf62a626aaf0a63556d5a42e9f670651a13f7815cd86df5e",
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
  "slug": "judgment--28b17bbcdadc9c5f570ac61d",
  "source": {
    "blob": "73d61675fb2625ea2874ac3658db9acae6174d0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 198,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KernelPresentation/Variant3a5cf4a4bc699cfc5170abbfdf312e319a9e5359ba355bb2a11c8b9f04fe8451.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28b17bbcdadc9c5f570ac61d9ed8263ce48ed89b0829d9138f92ef3a7df64f57",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KernelPresentation/Variant3a5cf4a4bc699cfc5170abbfdf312e319a9e5359ba355bb2a11c8b9f04fe8451.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7029cac3da3e44b7bf62a626aaf0a63556d5a42e9f670651a13f7815cd86df5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–229.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KernelPresentation/Variant3a5cf4a4bc699cfc5170abbfdf312e319a9e5359ba355bb2a11c8b9f04fe8451.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KernelPresentation/Variant3a5cf4a4bc699cfc5170abbfdf312e319a9e5359ba355bb2a11c8b9f04fe8451.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d61675fb2625ea2874ac3658db9acae6174d0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
