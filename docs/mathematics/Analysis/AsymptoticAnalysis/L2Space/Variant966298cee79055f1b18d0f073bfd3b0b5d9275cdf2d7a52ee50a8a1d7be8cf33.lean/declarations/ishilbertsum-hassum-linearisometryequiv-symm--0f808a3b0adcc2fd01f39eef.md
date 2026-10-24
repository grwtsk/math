# IsHilbertSum.hasSum_linearIsometryEquiv_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8520356ab2f1c4a3fbd850e62a522fc8517f0bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f0abda4-ff07-006e-d51b-04ddbc118373",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:474724d6-50ee-1157-f6d9-c03de6c2276b",
  "kind": "theorem",
  "lexical_name": "IsHilbertSum.hasSum_linearIsometryEquiv_symm",
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
  "slug": "ishilbertsum-hassum-linearisometryequiv-symm--0f808a3b0adcc2fd01f39eef",
  "source": {
    "blob": "b8520356ab2f1c4a3fbd850e62a522fc8517f0bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 311,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f808a3b0adcc2fd01f39eef53523d7348e868d0cb04dfe409243fe0fecfa26c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:474724d6-50ee-1157-f6d9-c03de6c2276b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsHilbertSum.hasSum_linearIsometryEquiv_symm (hV : IsHilbertSum 𝕜 G V)
    (w : lp G 2) : HasSum (fun i => V i (w i)) (hV.linearIsometryEquiv.symm w) := by
  simp [IsHilbertSum.linearIsometryEquiv, OrthogonalFamily.hasSum_linearIsometry]

/-- In the canonical isometric isomorphism between a Hilbert sum `E` of `G : ι → Type*` and
`lp G 2`, an "elementary basis vector" in `lp G 2` supported at `i : ι` is the image of the
associated element in `E`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8520356ab2f1c4a3fbd850e62a522fc8517f0bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
