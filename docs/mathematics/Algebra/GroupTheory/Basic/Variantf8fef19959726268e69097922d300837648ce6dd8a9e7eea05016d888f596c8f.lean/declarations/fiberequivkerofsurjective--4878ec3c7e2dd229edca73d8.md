# fiberEquivKerOfSurjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad65dfe27af5dfcae99b3fec267c210cbad18ac9b57ae808bdc62230ab3509f1",
  "kind": "def",
  "lexical_name": "fiberEquivKerOfSurjective",
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
  "slug": "fiberequivkerofsurjective--4878ec3c7e2dd229edca73d8",
  "source": {
    "blob": "17575735a218e0e4ddda4336f57576e40bbab48b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 501,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf8fef19959726268e69097922d300837648ce6dd8a9e7eea05016d888f596c8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4878ec3c7e2dd229edca73d87ff3f6161252930ecb4e035003a1ecffe83312a4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantf8fef19959726268e69097922d300837648ce6dd8a9e7eea05016d888f596c8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad65dfe27af5dfcae99b3fec267c210cbad18ac9b57ae808bdc62230ab3509f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fiberEquivKerOfSurjective {f : α →* H} (hf : Function.Surjective f) (h : H) :
    f ⁻¹' {h} ≃ f.ker :=
  (hf h).choose_spec ▸ f.fiberEquivKer (hf h).choose

/-- An equivalence between any two non-empty fibers of a `MonoidHom`. -/
@[to_additive /-- An equivalence between any two non-empty fibers of an `AddMonoidHom`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantf8fef19959726268e69097922d300837648ce6dd8a9e7eea05016d888f596c8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantf8fef19959726268e69097922d300837648ce6dd8a9e7eea05016d888f596c8f.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17575735a218e0e4ddda4336f57576e40bbab48b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
