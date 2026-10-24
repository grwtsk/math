# two_nsmul_lie_lmul_lmul_add_add_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdce4746be8cd112a355d0317052e8ab9e952180",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f115456-e07d-83b2-75a7-d37bbac8aaae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1d3ac9a-b5a1-9197-6273-7f817b4d1f17",
  "kind": "theorem",
  "lexical_name": "two_nsmul_lie_lmul_lmul_add_add_eq_zero",
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
  "slug": "two-nsmul-lie-lmul-lmul-add-add-eq-zero--b475acca61d95a4b91fc3fa1",
  "source": {
    "blob": "bdce4746be8cd112a355d0317052e8ab9e952180",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 228,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b475acca61d95a4b91fc3fa136b6237cb99c0f482dacc36cd29e67b0516d521c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1d3ac9a-b5a1-9197-6273-7f817b4d1f17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_nsmul_lie_lmul_lmul_add_add_eq_zero (a b c : A) :
    2 • (⁅L a, L (b * c)⁆ + ⁅L b, L (c * a)⁆ + ⁅L c, L (a * b)⁆) = 0 := by
  symm
  calc
    0 = ⁅L (a + b + c), L ((a + b + c) * (a + b + c))⁆ := by
      rw [(commute_lmul_lmul_sq (a + b + c)).lie_eq]
    _ = _ := by rw [aux0, aux1, aux2, aux3, nsmul_add, nsmul_add]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdce4746be8cd112a355d0317052e8ab9e952180` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
