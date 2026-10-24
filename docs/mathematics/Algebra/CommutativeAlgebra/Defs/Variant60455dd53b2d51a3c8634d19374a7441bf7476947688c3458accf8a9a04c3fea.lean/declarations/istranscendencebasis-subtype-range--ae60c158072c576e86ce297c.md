# isTranscendenceBasis_subtype_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b62ae2e-2545-6198-f702-cc4994ac43c0",
  "kind": "theorem",
  "lexical_name": "isTranscendenceBasis_subtype_range",
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
  "slug": "istranscendencebasis-subtype-range--ae60c158072c576e86ce297c",
  "source": {
    "blob": "b028c5fc59156c9c9b41a4e490f04a8be92bfb03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 199,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant60455dd53b2d51a3c8634d19374a7441bf7476947688c3458accf8a9a04c3fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae60c158072c576e86ce297cd7d2f75cc219af0ecfe692b93213cd8207643777",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Defs/Variant60455dd53b2d51a3c8634d19374a7441bf7476947688c3458accf8a9a04c3fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b62ae2e-2545-6198-f702-cc4994ac43c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTranscendenceBasis_subtype_range {ι} {f : ι → A} (hf : Injective f) :
    IsTranscendenceBasis R ((↑) : range f → A) ↔ IsTranscendenceBasis R f :=
  .symm <| isTranscendenceBasis_equiv' (Equiv.ofInjective f hf) rfl

alias ⟨IsTranscendenceBasis.of_subtype_range, _⟩ := isTranscendenceBasis_subtype_range

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Defs/Variant60455dd53b2d51a3c8634d19374a7441bf7476947688c3458accf8a9a04c3fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant60455dd53b2d51a3c8634d19374a7441bf7476947688c3458accf8a9a04c3fea.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b028c5fc59156c9c9b41a4e490f04a8be92bfb03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
