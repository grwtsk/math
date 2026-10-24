# Balanced.dual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b88ce699-ee16-fb83-680c-137123348b04",
  "kind": "theorem",
  "lexical_name": "Balanced.dual",
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
  "slug": "balanced-dual--ef644acc41d91f92149bd641",
  "source": {
    "blob": "a506610883264adfd44fa210ddd629b68f9dc01f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 183,
    "path": "GRWTSK/Topology/MetricTopology/Invariants/Variantf13943c825e23ed0cc4dec84a86bf598664e64810cbaf45210aab77a136029b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef644acc41d91f92149bd6418ac840b63793538c54599b9e74b751079fd8d301",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Invariants/Variantf13943c825e23ed0cc4dec84a86bf598664e64810cbaf45210aab77a136029b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b88ce699-ee16-fb83-680c-137123348b04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Balanced.dual : ∀ {t : Ordnode α}, Balanced t → Balanced (dual t)
  | nil, _ => ⟨⟩
  | node _ l _ r, ⟨b, bl, br⟩ => ⟨by rw [size_dual, size_dual]; exact b.symm, br.dual, bl.dual⟩

/-! ### `rotate` and `balance` -/


/-- Build a tree from three nodes, left associated (ignores the invariants). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Invariants/Variantf13943c825e23ed0cc4dec84a86bf598664e64810cbaf45210aab77a136029b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Invariants/Variantf13943c825e23ed0cc4dec84a86bf598664e64810cbaf45210aab77a136029b8.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a506610883264adfd44fa210ddd629b68f9dc01f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
