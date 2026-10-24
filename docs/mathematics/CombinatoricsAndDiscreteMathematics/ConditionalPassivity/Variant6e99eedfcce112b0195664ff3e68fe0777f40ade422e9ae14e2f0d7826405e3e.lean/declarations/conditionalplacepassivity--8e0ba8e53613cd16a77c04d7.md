# ConditionalPlacePassivity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c27aeec2b589212b5f29f812a2a125e5bcf508184c82a4691f1c136a2cea85ba",
  "kind": "structure",
  "lexical_name": "ConditionalPlacePassivity",
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
  "slug": "conditionalplacepassivity--8e0ba8e53613cd16a77c04d7",
  "source": {
    "blob": "5ce060d483e5e8f7074629ffbd7db79cf37ac89c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConditionalPassivity/Variant6e99eedfcce112b0195664ff3e68fe0777f40ade422e9ae14e2f0d7826405e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e0ba8e53613cd16a77c04d7e2286eec934fb4d7e673116cf9ee995a7af10a03",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConditionalPassivity/Variant6e99eedfcce112b0195664ff3e68fe0777f40ade422e9ae14e2f0d7826405e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c27aeec2b589212b5f29f812a2a125e5bcf508184c82a4691f1c136a2cea85ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ConditionalPlacePassivity
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (hardy : HardyDefectFamily model Prime) where
  passive :
    ∀ cut prime,
      model.Nonnegative
        (hardyInteraction hardy cut prime)
  monotone :
    ∀ {source target},
      source ⊆ target →
      OperatorLE model
        (hardy.defect source)
        (hardy.defect target)
  boundedByIdentity :
    ∀ cut,
      OperatorLE model
        (hardy.defect cut) model.identity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConditionalPassivity/Variant6e99eedfcce112b0195664ff3e68fe0777f40ade422e9ae14e2f0d7826405e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConditionalPassivity/Variant6e99eedfcce112b0195664ff3e68fe0777f40ade422e9ae14e2f0d7826405e3e.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ce060d483e5e8f7074629ffbd7db79cf37ac89c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
