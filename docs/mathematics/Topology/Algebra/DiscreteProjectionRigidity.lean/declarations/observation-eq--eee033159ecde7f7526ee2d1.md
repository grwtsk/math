# observation_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50eb283b-c551-3bc4-cbc0-fc9c3b273248",
  "kind": "theorem",
  "lexical_name": "observation_eq",
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
  "slug": "observation-eq--eee033159ecde7f7526ee2d1",
  "source": {
    "blob": "0f70aa54dc4e4b6d7c02cc3b80fda3c46458f650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 23,
    "path": "GRWTSK/Topology/Algebra/DiscreteProjectionRigidity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eee033159ecde7f7526ee2d1940cf9cf7b7c27a935eb9d556ba6f9b13671c29e",
  "verification": {
    "reference": "docs/verification/Topology/Algebra/DiscreteProjectionRigidity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50eb283b-c551-3bc4-cbc0-fc9c3b273248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem observation_eq (p : ∀ n, X → A n) (f : T → X)
    (hf : @Continuous T X inferInstance (topology p) f)
    (n : ℕ) (s t : T) : p n (f s) = p n (f t) := by
  letI : TopologicalSpace X := topology p
  letI : TopologicalSpace (A n) := ⊥
  letI : DiscreteTopology (A n) := discreteTopology_bot _
  have hc : Continuous (fun u => p n (f u)) :=
    (projection_continuous p n).comp hf
  exact ((IsLocallyConstant.iff_continuous _).mpr hc).apply_eq_of_preconnectedSpace s t

/-- All observations must jointly separate points before their constancy
can imply constancy of the complete object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Algebra/DiscreteProjectionRigidity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Algebra/DiscreteProjectionRigidity.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f70aa54dc4e4b6d7c02cc3b80fda3c46458f650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
