# sq_eq_sq_iff_eq_or_eq_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "224e44b15b3d7d245a3421777aefc5cad96ac933",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f014978acc8de1fbb2792c5d3fb0ef801ff7fc5983ff4498e574a02a4d02b76b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b7f5595-7462-d445-9a01-857bfea11977",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:adff69d2-9dfb-3dbe-65d6-3f0a4b8ae9cf",
  "kind": "lemma",
  "lexical_name": "sq_eq_sq_iff_eq_or_eq_neg",
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
  "slug": "sq-eq-sq-iff-eq-or-eq-neg--99318c1473dd7377826cc787",
  "source": {
    "blob": "224e44b15b3d7d245a3421777aefc5cad96ac933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 126,
    "path": "GRWTSK/Algebra/Commute/Variantf014978acc8de1fbb2792c5d3fb0ef801ff7fc5983ff4498e574a02a4d02b76b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99318c1473dd7377826cc787a5698c07ddbcf68b4244b1640fd147a3cd9f0057",
  "verification": {
    "reference": "docs/verification/Algebra/Commute/Variantf014978acc8de1fbb2792c5d3fb0ef801ff7fc5983ff4498e574a02a4d02b76b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adff69d2-9dfb-3dbe-65d6-3f0a4b8ae9cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma sq_eq_sq_iff_eq_or_eq_neg (h : Commute a b) : a ^ 2 = b ^ 2 ↔ a = b ∨ a = -b := by
  rw [← sub_eq_zero, h.sq_sub_sq, mul_eq_zero, add_eq_zero_iff_eq_neg, sub_eq_zero, or_comm]

end Ring
end Commute

section HasDistribNeg
variable (R)
variable [Monoid R] [HasDistribNeg R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Commute/Variantf014978acc8de1fbb2792c5d3fb0ef801ff7fc5983ff4498e574a02a4d02b76b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Commute/Variantf014978acc8de1fbb2792c5d3fb0ef801ff7fc5983ff4498e574a02a4d02b76b.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224e44b15b3d7d245a3421777aefc5cad96ac933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
