# isCauSeq_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86e7e274-cd48-fcd6-a03d-e4d55b7dbdd5",
  "kind": "theorem",
  "lexical_name": "isCauSeq_norm",
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
  "slug": "iscauseq-norm--ce5f14608d68ab65853dd9f5",
  "source": {
    "blob": "0939cb7d2b9c1c8061a0fc65f7d20afba88fd67a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 735,
    "line": 728,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc0976bb4db67bcb4f917917ca999f770e1c5b4661b64d2d4b5c36f6ce37f9991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce5f14608d68ab65853dd9f5f08404b9773f7c79a0369a26c51d2d4e768332cd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc0976bb4db67bcb4f917917ca999f770e1c5b4661b64d2d4b5c36f6ce37f9991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86e7e274-cd48-fcd6-a03d-e4d55b7dbdd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 728–735.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCauSeq_norm {f : ℕ → K} (hf : IsCauSeq norm f) : IsCauSeq abs (norm ∘ f) := fun ε ε0 =>
  let ⟨i, hi⟩ := hf ε ε0
  ⟨i, fun j hj => lt_of_le_of_lt (abs_norm_sub_norm_le _ _) (hi j hj)⟩

end RCLike

section Instances

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc0976bb4db67bcb4f917917ca999f770e1c5b4661b64d2d4b5c36f6ce37f9991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc0976bb4db67bcb4f917917ca999f770e1c5b4661b64d2d4b5c36f6ce37f9991.lean#L728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0939cb7d2b9c1c8061a0fc65f7d20afba88fd67a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
