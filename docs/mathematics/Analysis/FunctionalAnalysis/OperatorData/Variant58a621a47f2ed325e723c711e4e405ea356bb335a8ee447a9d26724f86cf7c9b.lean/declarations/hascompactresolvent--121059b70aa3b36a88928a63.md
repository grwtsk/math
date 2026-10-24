# HasCompactResolvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:faa4ebcd0eaa61ca82da93a223d3097960b2675d293a4152ecafa7f3472527da",
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
  "slug": "hascompactresolvent--121059b70aa3b36a88928a63",
  "source": {
    "blob": "f9def97b3233b5a39518d98c809ebe72c52975e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:121059b70aa3b36a88928a638fabf2e262c7f3f22998f5fe899365b58b054c86",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:faa4ebcd0eaa61ca82da93a223d3097960b2675d293a4152ecafa7f3472527da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9def97b3233b5a39518d98c809ebe72c52975e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
