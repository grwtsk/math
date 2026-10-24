# PrelocalPredicate.sheafifyOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:960723a3-654d-be20-4ca3-7b803e787b72",
  "kind": "theorem",
  "lexical_name": "PrelocalPredicate.sheafifyOf",
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
  "slug": "prelocalpredicate-sheafifyof--0546b393c2e97dad086f75c3",
  "source": {
    "blob": "97e256f8fa2cefc84ef7388743e9e8c7a712fba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0546b393c2e97dad086f75c369a512ebc6e3ff6dfd93b52049c8acb39d7e7047",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:960723a3-654d-be20-4ca3-7b803e787b72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrelocalPredicate.sheafifyOf {T : X → Type*} {P : PrelocalPredicate T} {U : Opens X}
    {f : ∀ x : U, T x} (h : P.pred f) : P.sheafify.pred f := fun x ↦
  ⟨U, x.2, 𝟙 _, by convert h⟩

/-- The subpresheaf of dependent functions on `X` satisfying the "pre-local" predicate `P`.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97e256f8fa2cefc84ef7388743e9e8c7a712fba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
