# LinearIndependent.notMem_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fc4fb56-e566-5ac2-fde0-048562a94379",
  "kind": "lemma",
  "lexical_name": "LinearIndependent.notMem_span",
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
  "slug": "linearindependent-notmem-span--f5f41dcf0fe54a9cb1bf4576",
  "source": {
    "blob": "7a96d26391d1eb794315da06aa7fb32c9393be2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 575,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantea54048a8d26820e6c808f2ed355dadf0620299b139c9bccaa13647a61acc1b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5f41dcf0fe54a9cb1bf457654ad6e7025b0ec0ddc31e3dc84825b45624b49d7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantea54048a8d26820e6c808f2ed355dadf0620299b139c9bccaa13647a61acc1b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fc4fb56-e566-5ac2-fde0-048562a94379`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearIndependent.notMem_span (hv : LinearIndependent R v) (i : ι) :
    v i ∉ span R (v '' {i}ᶜ) := fun hi ↦
  one_ne_zero <| hv.eq_zero_of_smul_mem_span i 1 <| by simpa [Set.compl_eq_univ_diff] using hi

@[deprecated (since := "2025-05-23")]
alias LinearIndependent.not_mem_span := LinearIndependent.notMem_span

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantea54048a8d26820e6c808f2ed355dadf0620299b139c9bccaa13647a61acc1b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantea54048a8d26820e6c808f2ed355dadf0620299b139c9bccaa13647a61acc1b1.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a96d26391d1eb794315da06aa7fb32c9393be2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
