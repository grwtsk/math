# isReduced_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5133fd4a-95df-ad9e-ca24-6e5b653194d4",
  "kind": "theorem",
  "lexical_name": "isReduced_of_injective",
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
  "slug": "isreduced-of-injective--d9fd2d34d5aa8e4adbe42cbf",
  "source": {
    "blob": "e3b810ae57e5be8669c003d2b39836719198b0c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 119,
    "path": "GRWTSK/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9fd2d34d5aa8e4adbe42cbfc167b7626c481bc396691943d1d189a685166f26",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5133fd4a-95df-ad9e-ca24-6e5b653194d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isReduced_of_injective [MonoidWithZero R] [MonoidWithZero S] {F : Type*}
    [MonoidWithZeroHomClass F R S] (f : F) (hf : Function.Injective f) [IsReduced S] :
    IsReduced R := by
  constructor
  intro x hx
  apply hf
  rw [map_zero]
  exact (hx.map f).eq_zero
#align is_reduced_of_injective isReduced_of_injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3b810ae57e5be8669c003d2b39836719198b0c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
