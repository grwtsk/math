# LinearIndependent.group_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f6038fad7df16340a9cb7d7b33a2447e82809a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6797adfb-fb00-874c-abcb-e9a3624074f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83514f71-8a02-bf07-1722-0c27c537bd4c",
  "kind": "theorem",
  "lexical_name": "LinearIndependent.group_smul",
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
  "slug": "linearindependent-group-smul--e7512042e1782f59a1a9e2f7",
  "source": {
    "blob": "6f6038fad7df16340a9cb7d7b33a2447e82809a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 176,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7512042e1782f59a1a9e2f7a656e77ae331433b73104514b3d415e67cb97d82",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83514f71-8a02-bf07-1722-0c27c537bd4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIndependent.group_smul {G : Type*} [hG : Group G] [MulAction G R]
    [SMul G M] [IsScalarTower G R M] [SMulCommClass G R M] {v : ι → M}
    (hv : LinearIndependent R v) (w : ι → G) : LinearIndependent R (w • v) := by
  rw [linearIndependent_iff''ₛ] at hv ⊢
  intro s g₁ g₂ hgs hsum i
  refine (Group.isUnit (w i)).smul_left_cancel.mp ?_
  refine hv s (fun i ↦ w i • g₁ i) (fun i ↦ w i • g₂ i) (fun i hi ↦ ?_) ?_ i
  · simp_rw [hgs i hi]
  · simpa only [smul_assoc, smul_comm] using hsum

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f6038fad7df16340a9cb7d7b33a2447e82809a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
