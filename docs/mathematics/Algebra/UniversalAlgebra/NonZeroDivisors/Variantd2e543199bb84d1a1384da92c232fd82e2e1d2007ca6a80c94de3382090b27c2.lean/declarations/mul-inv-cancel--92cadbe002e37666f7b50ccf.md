# mul_inv_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d0f7de5004b39e90bc8a20f737690ade9be7546",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2e543199bb84d1a1384da92c232fd82e2e1d2007ca6a80c94de3382090b27c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8b47f9f-2eed-ee02-a126-7c644dbc3da5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:269f8e68-7c33-c245-077a-8a01789a50f2",
  "kind": "theorem",
  "lexical_name": "mul_inv_cancel",
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
  "slug": "mul-inv-cancel--92cadbe002e37666f7b50ccf",
  "source": {
    "blob": "8d0f7de5004b39e90bc8a20f737690ade9be7546",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 74,
    "path": "GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Variantd2e543199bb84d1a1384da92c232fd82e2e1d2007ca6a80c94de3382090b27c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92cadbe002e37666f7b50ccfb9d70cd9f321657e51c43fbfea2f208811b72ad2",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/NonZeroDivisors/Variantd2e543199bb84d1a1384da92c232fd82e2e1d2007ca6a80c94de3382090b27c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:269f8e68-7c33-c245-077a-8a01789a50f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_inv_cancel (x : R[R⁰⁻¹]) (h : x ≠ 0) : x * x⁻¹ = 1 := by
  induction x with | _ r s
  rw [OreLocalization.inv_def, OreLocalization.one_def]
  have hr : r ≠ 0 := by
    rintro rfl
    simp at h
  simp only [hr]
  with_unfolding_all apply OreLocalization.mul_inv ⟨r, _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/NonZeroDivisors/Variantd2e543199bb84d1a1384da92c232fd82e2e1d2007ca6a80c94de3382090b27c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Variantd2e543199bb84d1a1384da92c232fd82e2e1d2007ca6a80c94de3382090b27c2.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d0f7de5004b39e90bc8a20f737690ade9be7546` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
