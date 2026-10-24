# transfer_center_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "376081fd0cc9b731857052a8de498c3a46141bbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d3a7102-57f5-96c2-d027-6175b5abee66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c994ac11-ed29-0e81-bb5c-e8fe6435a231",
  "kind": "theorem",
  "lexical_name": "transfer_center_eq_pow",
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
  "slug": "transfer-center-eq-pow--a39903e405de13cb7245237a",
  "source": {
    "blob": "376081fd0cc9b731857052a8de498c3a46141bbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 188,
    "path": "GRWTSK/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a39903e405de13cb7245237a7d0d815fa231e9e0b75b85104f901681e15887ec",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c994ac11-ed29-0e81-bb5c-e8fe6435a231`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transfer_center_eq_pow [FiniteIndex (center G)] (g : G) :
    transfer (MonoidHom.id (center G)) g = ⟨g ^ (center G).index, (center G).pow_index_mem g⟩ :=
  transfer_eq_pow (id (center G)) g fun k _ hk => by rw [← mul_right_inj, hk, mul_inv_cancel_right]
#align monoid_hom.transfer_center_eq_pow MonoidHom.transfer_center_eq_pow

variable (G)

/-- The transfer homomorphism `G →* center G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `376081fd0cc9b731857052a8de498c3a46141bbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
