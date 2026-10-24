# mul_inv_le_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca9d325c1b13338f786a5cd599b95ac73620e52b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b78435e2052f4ce827357912009259b394151db7897b46f57e12b790edf3494.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cf1339f-2ac1-4c75-9830-7f46ff8c90f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4eddda2-3cfe-686e-5330-82285c7207e0",
  "kind": "theorem",
  "lexical_name": "mul_inv_le_one_iff",
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
  "slug": "mul-inv-le-one-iff--937824d097f05bf0fd39cd4c",
  "source": {
    "blob": "ca9d325c1b13338f786a5cd599b95ac73620e52b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 160,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant8b78435e2052f4ce827357912009259b394151db7897b46f57e12b790edf3494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:937824d097f05bf0fd39cd4c20f7f03e4ef3ecd9bcec635fc0d3844aa2d5347b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant8b78435e2052f4ce827357912009259b394151db7897b46f57e12b790edf3494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4eddda2-3cfe-686e-5330-82285c7207e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_inv_le_one_iff : b * a⁻¹ ≤ 1 ↔ b ≤ a :=
  _root_.trans mul_inv_le_iff_le_mul <| by rw [one_mul]

end MulRightMono

section MulRightStrictMono

variable [LT α] [MulRightStrictMono α] {a b c : α}

/-- Uses `right` co(ntra)variant. -/
@[to_additive (attr := simp) /-- Uses `right` co(ntra)variant. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant8b78435e2052f4ce827357912009259b394151db7897b46f57e12b790edf3494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant8b78435e2052f4ce827357912009259b394151db7897b46f57e12b790edf3494.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca9d325c1b13338f786a5cd599b95ac73620e52b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
