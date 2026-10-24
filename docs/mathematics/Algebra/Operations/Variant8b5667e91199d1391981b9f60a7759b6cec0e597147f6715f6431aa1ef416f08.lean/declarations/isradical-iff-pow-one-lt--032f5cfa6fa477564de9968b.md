# isRadical_iff_pow_one_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "499b320f9e65958ff3b7591df57348f9eecbe7fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 722,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:838b6548-ce9e-f1e9-dc7a-26db807e29f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:225906ac-0e50-b484-d761-08f34c6ef8ad",
  "kind": "theorem",
  "lexical_name": "isRadical_iff_pow_one_lt",
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
  "slug": "isradical-iff-pow-one-lt--032f5cfa6fa477564de9968b",
  "source": {
    "blob": "499b320f9e65958ff3b7591df57348f9eecbe7fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 726,
    "line": 722,
    "path": "GRWTSK/Algebra/Operations/Variant8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:032f5cfa6fa477564de9968b22dbf17ba5a0c76d1e592c9bf83e9b033e2957d5",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:225906ac-0e50-b484-d761-08f34c6ef8ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 722–726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRadical_iff_pow_one_lt (k : ℕ) (hk : 1 < k) : I.IsRadical ↔ ∀ r, r ^ k ∈ I → r ∈ I :=
  ⟨fun h _r hr ↦ h ⟨k, hr⟩, fun h x ⟨n, hx⟩ ↦
    k.pow_imp_self_of_one_lt hk _ (fun _ _ ↦ .inr ∘ I.smul_mem _) h n x hx⟩

variable (R) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean#L722).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `499b320f9e65958ff3b7591df57348f9eecbe7fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
