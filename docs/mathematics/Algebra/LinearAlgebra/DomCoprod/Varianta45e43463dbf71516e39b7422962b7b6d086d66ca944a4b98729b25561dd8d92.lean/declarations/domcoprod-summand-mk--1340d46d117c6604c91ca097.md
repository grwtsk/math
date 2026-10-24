# domCoprod.summand_mk''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51e99615c0ab649f0cfe6745d4daf1327efceef6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c53217f9-dcc6-9f19-2d66-cf0b23c27945",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd175daf-1035-5f19-eb69-1a3d405ded90",
  "kind": "theorem",
  "lexical_name": "domCoprod.summand_mk''",
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
  "slug": "domcoprod-summand-mk--1340d46d117c6604c91ca097",
  "source": {
    "blob": "51e99615c0ab649f0cfe6745d4daf1327efceef6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1340d46d117c6604c91ca097a6f7d0de1e8a8a9b457ff14da4c68124eeb56416",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd175daf-1035-5f19-eb69-1a3d405ded90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domCoprod.summand_mk'' (a : Mᵢ [⋀^ιa]→ₗ[R'] N₁) (b : Mᵢ [⋀^ιb]→ₗ[R'] N₂)
    (σ : Equiv.Perm (ιa ⊕ ιb)) :
    domCoprod.summand a b (Quotient.mk'' σ) =
      Equiv.Perm.sign σ •
        (MultilinearMap.domCoprod ↑a ↑b : MultilinearMap R' (fun _ => Mᵢ) (N₁ ⊗ N₂)).domDomCongr
          σ :=
  rfl

/-- Swapping elements in `σ` with equal values in `v` results in an addition that cancels -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51e99615c0ab649f0cfe6745d4daf1327efceef6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
