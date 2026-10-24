# limsup_const_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6d1f007687760b07e6332ce682f14f3eb1dd027",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 535,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b81ab97-3fa4-fba3-6ac9-3e165a82cd2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b5aba47-12f8-21c2-4d43-0f0d305cc3ce",
  "kind": "lemma",
  "lexical_name": "limsup_const_add",
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
  "slug": "limsup-const-add--2d31e08a1182505c378c0d49",
  "source": {
    "blob": "f6d1f007687760b07e6332ce682f14f3eb1dd027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 535,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantfa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d31e08a1182505c378c0d49eadde16d5e7bbd892cc726bf4ab5e1a3e415cbfd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variantfa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b5aba47-12f8-21c2-4d43-0f0d305cc3ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma limsup_const_add (F : Filter ι) [NeBot F] [Add R] [ContinuousAdd R]
    [AddLeftMono R] (f : ι → R) (c : R)
    (bdd_above : F.IsBoundedUnder (· ≤ ·) f) (cobdd : F.IsCoboundedUnder (· ≤ ·) f) :
    Filter.limsup (fun i ↦ c + f i) F = c + Filter.limsup f F :=
  (Monotone.map_limsSup_of_continuousAt (F := F.map f) (f := fun (x : R) ↦ c + x)
    (fun _ _ h ↦ add_le_add_left h c) (continuous_add_left c).continuousAt bdd_above cobdd).symm

/-- `limsup (xᵢ + c) = (limsup xᵢ) + c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variantfa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantfa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6d1f007687760b07e6332ce682f14f3eb1dd027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
