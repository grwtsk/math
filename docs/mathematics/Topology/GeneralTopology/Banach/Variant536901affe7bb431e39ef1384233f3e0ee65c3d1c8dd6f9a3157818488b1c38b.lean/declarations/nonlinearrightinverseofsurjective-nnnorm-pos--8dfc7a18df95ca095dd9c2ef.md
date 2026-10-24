# nonlinearRightInverseOfSurjective_nnnorm_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66b95fdbaf8dd1f62c28a5a0cd2613ab7d4bcc4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a14c3d3-eba6-60c6-24d5-76f002c201c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:241003c4-4293-e0bb-09e0-635b1ab5b45f",
  "kind": "theorem",
  "lexical_name": "nonlinearRightInverseOfSurjective_nnnorm_pos",
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
  "slug": "nonlinearrightinverseofsurjective-nnnorm-pos--8dfc7a18df95ca095dd9c2ef",
  "source": {
    "blob": "66b95fdbaf8dd1f62c28a5a0cd2613ab7d4bcc4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 300,
    "path": "GRWTSK/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dfc7a18df95ca095dd9c2ef2f146b005c319616d5480b40820899e5fae0bccc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:241003c4-4293-e0bb-09e0-635b1ab5b45f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonlinearRightInverseOfSurjective_nnnorm_pos (f : E →SL[σ] F) (hsurj : f.range = ⊤) :
    0 < (nonlinearRightInverseOfSurjective f hsurj).nnnorm := by
  rw [nonlinearRightInverseOfSurjective]
  exact Classical.choose_spec (exists_nonlinearRightInverse_of_surjective f hsurj)

end ContinuousLinearMap

namespace LinearEquiv

variable [CompleteSpace E] [RingHomInvPair σ' σ]

/-- If a bounded linear map is a bijection, then its inverse is also a bounded linear map. -/
@[continuity]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66b95fdbaf8dd1f62c28a5a0cd2613ab7d4bcc4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
