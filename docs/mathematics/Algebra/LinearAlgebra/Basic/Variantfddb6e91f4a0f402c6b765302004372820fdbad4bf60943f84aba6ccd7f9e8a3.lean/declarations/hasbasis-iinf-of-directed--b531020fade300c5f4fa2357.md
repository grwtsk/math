# hasBasis_iInf_of_directed'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96650587-7ee1-3317-1a6f-4bdbe60c951a",
  "kind": "theorem",
  "lexical_name": "hasBasis_iInf_of_directed'",
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
  "slug": "hasbasis-iinf-of-directed--b531020fade300c5f4fa2357",
  "source": {
    "blob": "53f78b71a14b2402ff5f2c9292ca1b2613830be4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 408,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfddb6e91f4a0f402c6b765302004372820fdbad4bf60943f84aba6ccd7f9e8a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b531020fade300c5f4fa235778ef5a02cf96af6afebadbca6e054611e939983c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfddb6e91f4a0f402c6b765302004372820fdbad4bf60943f84aba6ccd7f9e8a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96650587-7ee1-3317-1a6f-4bdbe60c951a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_iInf_of_directed' {ι : Type*} {ι' : ι → Sort _} [Nonempty ι] {l : ι → Filter α}
    (s : ∀ i, ι' i → Set α) (p : ∀ i, ι' i → Prop) (hl : ∀ i, (l i).HasBasis (p i) (s i))
    (h : Directed (· ≥ ·) l) :
    (⨅ i, l i).HasBasis (fun ii' : Σi, ι' i => p ii'.1 ii'.2) fun ii' => s ii'.1 ii'.2 := by
  refine ⟨fun t => ?_⟩
  rw [mem_iInf_of_directed h, Sigma.exists]
  exact exists_congr fun i => (hl i).mem_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfddb6e91f4a0f402c6b765302004372820fdbad4bf60943f84aba6ccd7f9e8a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfddb6e91f4a0f402c6b765302004372820fdbad4bf60943f84aba6ccd7f9e8a3.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f78b71a14b2402ff5f2c9292ca1b2613830be4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
