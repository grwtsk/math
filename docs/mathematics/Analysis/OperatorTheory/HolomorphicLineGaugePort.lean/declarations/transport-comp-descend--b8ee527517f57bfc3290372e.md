# transport_comp_descend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4325e920fc1439dc74e55ade57940e4012df800f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/Analysis/Operator/HolomorphicLineGaugePort.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c72f1fd-a94f-64dc-f37d-6a263a5b4176",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20960cbc-2257-b37c-65ce-c200948a30bb",
  "kind": "theorem",
  "lexical_name": "transport_comp_descend",
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
  "slug": "transport-comp-descend--b8ee527517f57bfc3290372e",
  "source": {
    "blob": "4325e920fc1439dc74e55ade57940e4012df800f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 71,
    "path": "GRWTSK/Analysis/Operator/HolomorphicLineGaugePort.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8ee527517f57bfc3290372e756e91998537e621ecfd17dcbd8759403c95515d",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20960cbc-2257-b37c-65ce-c200948a30bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transport_comp_descend (G : Gauge C E) (A B : CompatibleOperators C)
    (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    (transport G (A.comp B)).descend hOpen x =
      ((transport G B).descend hOpen x).comp ((transport G A).descend hOpen x) := by
  apply ContinuousLinearMap.ext
  intro a
  change unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ *
      B.localOp (D.select x) ⟨x.1, D.select_mem x⟩
        (A.localOp (D.select x) ⟨x.1, D.select_mem x⟩
          (unitValue (G.frame (D.select x))⁻¹ ⟨x.1, D.select_mem x⟩ * a)) =
    unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ *
      B.localOp (D.select x) ⟨x.1, D.select_mem x⟩
        (unitValue (G.frame (D.select x))⁻¹ ⟨x.1, D.select_mem x⟩ *
          (unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ *
            A.localOp (D.select x) ⟨x.1, D.select_mem x⟩
              (unitValue (G.frame (D.select x))⁻¹ ⟨x.1, D.select_mem x⟩ * a)))
  rw [← mul_assoc (unitValue (G.frame (D.select x))⁻¹ _) (unitValue (G.frame (D.select x)) _),
    unitValue_inv_mul, one_mul]

/-- Inverse multiplication, the original analytic law, and forward multiplication transport holomorphy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicLineGaugePort.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4325e920fc1439dc74e55ade57940e4012df800f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
