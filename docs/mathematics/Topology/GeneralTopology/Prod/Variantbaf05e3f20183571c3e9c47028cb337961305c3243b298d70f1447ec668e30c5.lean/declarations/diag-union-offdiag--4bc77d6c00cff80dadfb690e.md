# diag_union_offDiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e844680-7427-2165-2093-9a24597867c3",
  "kind": "theorem",
  "lexical_name": "diag_union_offDiag",
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
  "slug": "diag-union-offdiag--4bc77d6c00cff80dadfb690e",
  "source": {
    "blob": "389bdc6cf1681ac393a9e992c3095ead5b22b1e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 369,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bc77d6c00cff80dadfb690ebf11e94cde9e2b2a499847fc5b499a6b3cd8a0b1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e844680-7427-2165-2093-9a24597867c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diag_union_offDiag : s.diag ∪ s.offDiag = s ×ˢ s := by
  conv_rhs => rw [← filter_union_filter_neg_eq (fun a => a.1 = a.2) (s ×ˢ s)]
#align finset.diag_union_off_diag Finset.diag_union_offDiag

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `389bdc6cf1681ac393a9e992c3095ead5b22b1e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
