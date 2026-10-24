# mk₂'ₛₗ_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07091f86d42a9fbbfe5d5732ffbf9a6f58daf129",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/513c563b254ed74a5c794ece2a745638f554e77010ac7eba2014ef3363cba126.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98e39e2b-e011-d5ab-9d94-ef69eab3d3f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ec3b422-8274-248a-56cb-0e0db6b9c9ea",
  "kind": "theorem",
  "lexical_name": "mk₂'ₛₗ_apply",
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
  "slug": "mk-apply--40d49a78ebec6a2dde21e038",
  "source": {
    "blob": "07091f86d42a9fbbfe5d5732ffbf9a6f58daf129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 93,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant513c563b254ed74a5c794ece2a745638f554e77010ac7eba2014ef3363cba126.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40d49a78ebec6a2dde21e038bd60694cce5d3f45d0778ae245f2f8b6f72044d1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearMap/Variant513c563b254ed74a5c794ece2a745638f554e77010ac7eba2014ef3363cba126.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ec3b422-8274-248a-56cb-0e0db6b9c9ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk₂'ₛₗ_apply (f : M → N → P) {H1 H2 H3 H4} (m : M) (n : N) :
    (mk₂'ₛₗ ρ₁₂ σ₁₂ f H1 H2 H3 H4 : M →ₛₗ[ρ₁₂] N →ₛₗ[σ₁₂] P) m n = f m n := rfl
#align linear_map.mk₂'ₛₗ_apply LinearMap.mk₂'ₛₗ_apply

variable (R S)

/-- Create a bilinear map from a function that is linear in each component.
See `mk₂` for the special case where both arguments come from modules over the same ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearMap/Variant513c563b254ed74a5c794ece2a745638f554e77010ac7eba2014ef3363cba126.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant513c563b254ed74a5c794ece2a745638f554e77010ac7eba2014ef3363cba126.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07091f86d42a9fbbfe5d5732ffbf9a6f58daf129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
