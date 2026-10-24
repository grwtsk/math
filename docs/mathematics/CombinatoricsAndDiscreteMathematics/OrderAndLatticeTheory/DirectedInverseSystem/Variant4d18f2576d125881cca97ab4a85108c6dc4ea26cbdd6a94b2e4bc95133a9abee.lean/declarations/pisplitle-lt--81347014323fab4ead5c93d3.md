# piSplitLE_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf03e12e394c7147f5b36c1ae6327e1e67eb896f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d18f2576d125881cca97ab4a85108c6dc4ea26cbdd6a94b2e4bc95133a9abee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5dbcf709-88fb-7c14-64ed-add8cd304b0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bab3b4f9-31e9-63b3-1d24-df77b2c01682",
  "kind": "theorem",
  "lexical_name": "piSplitLE_lt",
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
  "slug": "pisplitle-lt--81347014323fab4ead5c93d3",
  "source": {
    "blob": "cf03e12e394c7147f5b36c1ae6327e1e67eb896f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 319,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant4d18f2576d125881cca97ab4a85108c6dc4ea26cbdd6a94b2e4bc95133a9abee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81347014323fab4ead5c93d38eee43ddb659f1acc3d07111c8306ae8550bcb87",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant4d18f2576d125881cca97ab4a85108c6dc4ea26cbdd6a94b2e4bc95133a9abee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bab3b4f9-31e9-63b3-1d24-df77b2c01682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem piSplitLE_lt {f : piLT X i × X i} {j} (hj : j < i) :
    piSplitLE f ⟨j, hj.le⟩ = f.1 ⟨j, hj⟩ := dif_neg hj.ne

end

variable [LinearOrder ι] {f : ∀ ⦃i j : ι⦄, i ≤ j → F j → F i}

local postfix:max "⁺" => succ -- Note: conflicts with `PosPart` notation

section Succ

variable [SuccOrder ι]
variable (equiv : ∀ j : Iic i, F j ≃ piLT X j) (e : F i⁺ ≃ F i × X i) (hi : ¬ IsMax i)

/-- Extend a family of bijections to `piLT` by one step. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant4d18f2576d125881cca97ab4a85108c6dc4ea26cbdd6a94b2e4bc95133a9abee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant4d18f2576d125881cca97ab4a85108c6dc4ea26cbdd6a94b2e4bc95133a9abee.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf03e12e394c7147f5b36c1ae6327e1e67eb896f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
