# HasCompactResolvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:039aee3f1954536beddfb1b442f43176c81518d6453d16a3200ffb9b86f8625b",
  "kind": "def",
  "lexical_name": "HasCompactResolvent",
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
  "slug": "hascompactresolvent--e6d427992b1bc5943465f194",
  "source": {
    "blob": "bb1bf71f5587761a8487884ab2e3035004e01d6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 60,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6d427992b1bc5943465f194536194295a4f92463f038b518277ae434a200cc8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:039aee3f1954536beddfb1b442f43176c81518d6453d16a3200ffb9b86f8625b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasCompactResolvent
    {H : Type _} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (D : RHUnboundedOperator H) : Prop :=
  ∃ K : Set H, IsCompact K ∧ Set.range (fun x : D.domain => (x : H)) ⊆ K

/--
Operator data for a future Hilbert-Polya-style realization.

The data names the Hilbert space, domain, and operator. It only proves domain
density; self-adjointness, compact resolvent, and real spectrum are exposed as
separate theorem obligations in downstream modules.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb1bf71f5587761a8487884ab2e3035004e01d6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
