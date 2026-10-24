# discrim_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cab61a4cfb16a1f506cec10330013c28e8fb26e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:907e3e50-a9b6-3d6d-5391-90c307ebfcc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5fc969c-92d6-dbcb-402a-a44cd78547d0",
  "kind": "theorem",
  "lexical_name": "discrim_eq_zero_iff",
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
  "slug": "discrim-eq-zero-iff--9a6d586ab163735983a11706",
  "source": {
    "blob": "8cab61a4cfb16a1f506cec10330013c28e8fb26e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a6d586ab163735983a11706691f5975596d3a04ccae4aa53886ba5359107bfa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5fc969c-92d6-dbcb-402a-a44cd78547d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrim_eq_zero_iff (ha : a ≠ 0) :
    discrim a b c = 0 ↔ (∃! x, a * (x * x) + b * x + c = 0) := by
  refine ⟨fun hd => ?_, discrim_eq_zero_of_existsUnique ha⟩
  simp_rw [quadratic_eq_zero_iff_of_discrim_eq_zero ha hd, existsUnique_eq]

end Field

section LinearOrderedField

variable {K : Type*} [Field K] [LinearOrder K] [IsStrictOrderedRing K] {a b c : K}

/-- If a polynomial of degree 2 is always nonnegative, then its discriminant is nonpositive -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cab61a4cfb16a1f506cec10330013c28e8fb26e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
