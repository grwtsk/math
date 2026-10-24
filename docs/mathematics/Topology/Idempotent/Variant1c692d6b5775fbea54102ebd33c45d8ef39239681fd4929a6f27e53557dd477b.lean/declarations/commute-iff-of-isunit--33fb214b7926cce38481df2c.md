# commute_iff_of_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c96cc279-4b76-9101-6a86-0267eeee0dfc",
  "kind": "theorem",
  "lexical_name": "commute_iff_of_isUnit",
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
  "slug": "commute-iff-of-isunit--33fb214b7926cce38481df2c",
  "source": {
    "blob": "8232207b783803c9083efe11c195865fdacdb07d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 101,
    "path": "GRWTSK/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33fb214b7926cce38481df2c2f3d3b023c3f69669edb6856ee6b658727c0a0ed",
  "verification": {
    "reference": "docs/verification/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c96cc279-4b76-9101-6a86-0267eeee0dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commute_iff_of_isUnit {f T : M →L[R] M} (hT : IsUnit T)
    (hf : IsIdempotentElem f) :
    Commute f T ↔ f.range.map (T : M →ₗ[R] M) = f.range ∧ f.ker.map (T : M →ₗ[R] M) = f.ker := by
  have := hT.map ContinuousLinearMap.toLinearMapRingHom
  lift T to (M →L[R] M)ˣ using hT
  simpa [Commute, SemiconjBy, Module.End.mul_eq_comp, ← toLinearMap_comp] using!
    LinearMap.IsIdempotentElem.commute_iff_of_isUnit this hf.toLinearMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8232207b783803c9083efe11c195865fdacdb07d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
