# adjoin_intermediateField_toSubalgebra_of_isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a611b558f40f765128ef34d5bbc129e39ec91580",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17710fbf-9279-9497-1ce2-0e5e7d668b92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff5b6c53-c2f6-c93b-c1fb-2f0c534f98b0",
  "kind": "theorem",
  "lexical_name": "adjoin_intermediateField_toSubalgebra_of_isAlgebraic",
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
  "slug": "adjoin-intermediatefield-tosubalgebra-of-isalgebraic--c0177670ef9b511e7491b809",
  "source": {
    "blob": "a611b558f40f765128ef34d5bbc129e39ec91580",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 259,
    "path": "GRWTSK/Algebra/Algebra/Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0177670ef9b511e7491b809e01883ee741b241ae5d43a4cab2af187de877be3",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff5b6c53-c2f6-c93b-c1fb-2f0c534f98b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_intermediateField_toSubalgebra_of_isAlgebraic (L : IntermediateField F K)
    (halg : Algebra.IsAlgebraic F E ∨ Algebra.IsAlgebraic F L) :
    (adjoin E (L : Set K)).toSubalgebra = Algebra.adjoin E (L : Set K) := by
  let i := IsScalarTower.toAlgHom F E K
  let E' := i.fieldRange
  let i' : E ≃ₐ[F] E' := AlgEquiv.ofInjectiveField i
  have hi : algebraMap E K = (algebraMap E' K) ∘ i' := by ext x; rfl
  apply_fun _ using Subalgebra.restrictScalars_injective F
  rw [← restrictScalars_toSubalgebra, restrictScalars_adjoin_of_algEquiv i' hi,
    Algebra.restrictScalars_adjoin_of_algEquiv i' hi, restrictScalars_adjoin]
  dsimp only [← E'.coe_type_toSubalgebra]
  rw [Algebra.restrictScalars_adjoin F E'.toSubalgebra]
  exact E'.sup_toSubalgebra_of_isAlgebraic L (halg.imp
    (fun (_ : Algebra.IsAlgebraic F E) ↦ i'.isAlgebraic) id)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a611b558f40f765128ef34d5bbc129e39ec91580` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
