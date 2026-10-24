# properSMul_of_isClosedEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47fd39ea3d4f5931c87219cb28766b65076f3078",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ce80b45-23bf-17e9-e2c1-b016ab9a86a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38c1c036-d882-0368-8d37-fcd8af3890db",
  "kind": "theorem",
  "lexical_name": "properSMul_of_isClosedEmbedding",
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
  "slug": "propersmul-of-isclosedembedding--f5f1fe02168a96fe1f9feb82",
  "source": {
    "blob": "47fd39ea3d4f5931c87219cb28766b65076f3078",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5f1fe02168a96fe1f9feb8273c00d7401037ee67e801ce6bab92bfb7993908a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38c1c036-d882-0368-8d37-fcd8af3890db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properSMul_of_isClosedEmbedding {H : Type*} [Group H] [MulAction H X] [TopologicalSpace H]
    [ProperSMul G X] (f : H →* G) (f_clemb : IsClosedEmbedding f)
    (f_compat : ∀ (h : H) (x : X), f h • x = h • x) : ProperSMul H X where
  isProperMap_smul_pair := by
    have h : IsProperMap (Prod.map f (fun x : X ↦ x)) := f_clemb.isProperMap.prodMap isProperMap_id
    have : (fun hx : H × X ↦ (hx.1 • hx.2, hx.2)) = (fun hx ↦ (f hx.1 • hx.2, hx.2)) := by
      simp [f_compat]
    rw [this]
    exact ProperSMul.isProperMap_smul_pair.comp h

/-- If `H` is a closed subgroup of `G` and `G` acts properly on `X`, then so does `H`. -/
@[to_additive
/-- If `H` is a closed subgroup of `G` and `G` acts properly on `X`, then so does `H`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47fd39ea3d4f5931c87219cb28766b65076f3078` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
