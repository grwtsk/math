# Antivary.pow_left₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80b8f51dc84189d9d9cfdbe78c2b3921b6c553d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42a971d9-3383-95b2-4098-3fe97ff4e9ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82cd2f15-28f6-9e1b-5b3c-5d1d78829301",
  "kind": "lemma",
  "lexical_name": "Antivary.pow_left₀",
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
  "slug": "antivary-pow-left--5515d8c12efca670c5703f27",
  "source": {
    "blob": "80b8f51dc84189d9d9cfdbe78c2b3921b6c553d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 219,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5515d8c12efca670c5703f2701b5721440e2d9f8a1bc8101048dda701a20b232",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82cd2f15-28f6-9e1b-5b3c-5d1d78829301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Antivary.pow_left₀ (hf : 0 ≤ f) (hfg : Antivary f g) (n : ℕ) : Antivary (f ^ n) g :=
  fun _i _j hij ↦ pow_le_pow_left₀ (hf _) (hfg hij) _

end OrderedSemiring

section LinearOrderedSemiring
variable [LinearOrder α] [Semiring β] [LinearOrder β] [IsStrictOrderedRing β]
  {s : Set ι} {f : ι → α} {g g₁ g₂ : ι → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80b8f51dc84189d9d9cfdbe78c2b3921b6c553d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
