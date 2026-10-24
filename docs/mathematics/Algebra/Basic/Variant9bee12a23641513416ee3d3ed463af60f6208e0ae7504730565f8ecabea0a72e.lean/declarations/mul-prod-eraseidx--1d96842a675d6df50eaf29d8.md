# mul_prod_eraseIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4b58188-846f-40a6-1716-810767c6f3f4",
  "kind": "theorem",
  "lexical_name": "mul_prod_eraseIdx",
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
  "slug": "mul-prod-eraseidx--1d96842a675d6df50eaf29d8",
  "source": {
    "blob": "c26f2ab61946301b30b827c7976e04f1011b12ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 222,
    "path": "GRWTSK/Algebra/Basic/Variant9bee12a23641513416ee3d3ed463af60f6208e0ae7504730565f8ecabea0a72e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d96842a675d6df50eaf29d81596cef84f9e7872b6bf8f304bf3e629ed44808b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant9bee12a23641513416ee3d3ed463af60f6208e0ae7504730565f8ecabea0a72e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4b58188-846f-40a6-1716-810767c6f3f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_prod_eraseIdx {i} (hlen : i < l.length) (hcomm : ∀ a' ∈ l.take i, Commute l[i] a') :
    l[i] * (l.eraseIdx i).prod = l.prod := by
  rw [← prod_insertIdx (by grind : i ≤ (l.eraseIdx i).length) (fun a' a'_mem =>
      hcomm a' (by rwa [take_eraseIdx_eq_take_of_le l i i (Nat.le_refl i)] at a'_mem)),
    insertIdx_eraseIdx_getElem hlen]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant9bee12a23641513416ee3d3ed463af60f6208e0ae7504730565f8ecabea0a72e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant9bee12a23641513416ee3d3ed463af60f6208e0ae7504730565f8ecabea0a72e.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26f2ab61946301b30b827c7976e04f1011b12ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
