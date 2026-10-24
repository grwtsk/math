# resolveCut_rejected_exactly_when_context_invalid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9496b24a7fa1f805d84767dc0fa8889ccf007647",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db1491fda7ff899831b3ff982cb48105dfff249febdf50bd8d3020b5eb0a0cd2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6778ccf-490b-d0b1-e2f6-723eaef4fb35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:006c019f-69e5-40d9-b136-c3a4418e22ff",
  "kind": "theorem",
  "lexical_name": "resolveCut_rejected_exactly_when_context_invalid",
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
  "slug": "resolvecut-rejected-exactly-when-context-invalid--d32f046c2b0e50096b0740d7",
  "source": {
    "blob": "9496b24a7fa1f805d84767dc0fa8889ccf007647",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variantdb1491fda7ff899831b3ff982cb48105dfff249febdf50bd8d3020b5eb0a0cd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d32f046c2b0e50096b0740d70439c89876f00f2e519ca1be4cd948a01a263be1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variantdb1491fda7ff899831b3ff982cb48105dfff249febdf50bd8d3020b5eb0a0cd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:006c019f-69e5-40d9-b136-c3a4418e22ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolveCut_rejected_exactly_when_context_invalid
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (profile : ContextResolverProfile Obligation Proof Event checker)
    (cut : ContextBoundCut Obligation Proof Event) :
    (resolveCut validator profile cut).IsRejected ↔
      ¬ validator.Valid cut := by
  by_cases valid : validator.Valid cut
  · by_cases closed :
      unresolved cut.core.obligations checker
        cut.core.proofRegistry = ∅
    · simp [resolveCut, valid, closed,
        ContextResolution.IsRejected]
    · simp [resolveCut, valid, closed,
        ContextResolution.IsRejected]
  · simp [resolveCut, valid, ContextResolution.IsRejected]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variantdb1491fda7ff899831b3ff982cb48105dfff249febdf50bd8d3020b5eb0a0cd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variantdb1491fda7ff899831b3ff982cb48105dfff249febdf50bd8d3020b5eb0a0cd2.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9496b24a7fa1f805d84767dc0fa8889ccf007647` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
