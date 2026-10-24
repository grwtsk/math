# isNilpotent_restrict_maxGenEigenspace_sub_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecb7e87b5ec0cddfa2cef50c4f1f5e69c7e9eff1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 589,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23e13797-cb86-7398-0f99-f7b5e0d2bf10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e00843eb-3a1a-3ff6-8acc-11c9f6d6229a",
  "kind": "lemma",
  "lexical_name": "isNilpotent_restrict_maxGenEigenspace_sub_algebraMap",
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
  "slug": "isnilpotent-restrict-maxgeneigenspace-sub-algebramap--8f80b8bfc9d1a61ae9eec637",
  "source": {
    "blob": "ecb7e87b5ec0cddfa2cef50c4f1f5e69c7e9eff1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 600,
    "line": 589,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f80b8bfc9d1a61ae9eec637a1019402062484d213eaf597272c2791df9b4cc1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e00843eb-3a1a-3ff6-8acc-11c9f6d6229a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–600.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNilpotent_restrict_maxGenEigenspace_sub_algebraMap [IsNoetherian R M] (f : End R M) (μ : R)
    (h : MapsTo (f - algebraMap R (End R M) μ)
      ↑(f.maxGenEigenspace μ) ↑(f.maxGenEigenspace μ) :=
      mapsTo_maxGenEigenspace_of_comm (Algebra.mul_sub_algebraMap_commutes f μ) μ) :
    IsNilpotent ((f - algebraMap R (End R M) μ).restrict h) := by
  apply isNilpotent_restrict_of_le (q := f.genEigenspace μ (maxUnifEigenspaceIndex f μ))
    _ (isNilpotent_restrict_genEigenspace_nat f μ (maxUnifEigenspaceIndex f μ))
  rw [maxGenEigenspace_eq]

set_option linter.deprecated false in
/-- The restriction of `f - μ • 1` to the generalized `μ`-eigenspace is nilpotent. -/
@[deprecated isNilpotent_restrict_maxGenEigenspace_sub_algebraMap (since := "2024-10-23")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb7e87b5ec0cddfa2cef50c4f1f5e69c7e9eff1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
