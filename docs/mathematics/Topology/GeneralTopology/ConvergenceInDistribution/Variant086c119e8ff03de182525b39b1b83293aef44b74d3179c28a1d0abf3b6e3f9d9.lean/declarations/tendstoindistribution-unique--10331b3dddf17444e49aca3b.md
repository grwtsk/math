# tendstoInDistribution_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e579669-25e5-0feb-e2df-9e994c87f618",
  "kind": "lemma",
  "lexical_name": "tendstoInDistribution_unique",
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
  "slug": "tendstoindistribution-unique--10331b3dddf17444e49aca3b",
  "source": {
    "blob": "a1d2e9c667e753dfbcc5ade3cb0276aa30808ded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10331b3dddf17444e49aca3b12f0161411018d739a8b2762bc6692beaccbfcb7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e579669-25e5-0feb-e2df-9e994c87f618`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendstoInDistribution_unique [HasOuterApproxClosed E] [BorelSpace E]
    (X : (i : ι) → Ω i → E) {Z : Ω' → E} {W : Ω'' → E} [l.NeBot]
    (h1 : TendstoInDistribution X l Z μ μ') (h2 : TendstoInDistribution X l W μ μ'') :
    μ'.map Z = μ''.map W := by
  have h_eq := tendsto_nhds_unique h1.tendsto h2.tendsto
  rw [Subtype.ext_iff] at h_eq
  simpa using h_eq

set_option backward.isDefEq.respectTransparency.types false in
/-- **Continuous mapping theorem**: if `X n` tends to `Z` in distribution and `g` is continuous,
then `g ∘ X n` tends to `g ∘ Z` in distribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1d2e9c667e753dfbcc5ade3cb0276aa30808ded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
