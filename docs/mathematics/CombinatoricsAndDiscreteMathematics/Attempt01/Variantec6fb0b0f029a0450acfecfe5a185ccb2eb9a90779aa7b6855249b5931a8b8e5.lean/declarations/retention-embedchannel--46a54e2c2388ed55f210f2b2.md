# retention_embedChannel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a752ff34-171d-dfa9-ca15-906ff66297e9",
  "kind": "theorem",
  "lexical_name": "retention_embedChannel",
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
  "slug": "retention-embedchannel--46a54e2c2388ed55f210f2b2",
  "source": {
    "blob": "9545421cc29505efcc1e1ebdd38947a540bd9563",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01/Variantec6fb0b0f029a0450acfecfe5a185ccb2eb9a90779aa7b6855249b5931a8b8e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46a54e2c2388ed55f210f2b243fc2c4324b402f77735f20fce056ec606a0c53a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt01/Variantec6fb0b0f029a0450acfecfe5a185ccb2eb9a90779aa7b6855249b5931a8b8e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a752ff34-171d-dfa9-ca15-906ff66297e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem retention_embedChannel (I J : Finset ℕ) (ε δ : Bool) (c : ℕ → ℂ) :
    retentionMatrix I J *ᵥ embedChannel I ε δ c =
      embedChannel J ε δ (fun m => if m ∈ I then c m else 0) := by
  classical
  funext k
  rw [retentionMatrix_apply]
  by_cases hm : k.2.2.val ∈ I
  · simp [hm, embedChannel]
  · simp [hm, embedChannel]

/-- A restricted profile is exactly its inventory intersection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt01/Variantec6fb0b0f029a0450acfecfe5a185ccb2eb9a90779aa7b6855249b5931a8b8e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01/Variantec6fb0b0f029a0450acfecfe5a185ccb2eb9a90779aa7b6855249b5931a8b8e5.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9545421cc29505efcc1e1ebdd38947a540bd9563` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
