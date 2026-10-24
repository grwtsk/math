# continuousSMul_inducedₛₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:505cf96f-5c36-b486-c456-4625e4ed027f",
  "kind": "theorem",
  "lexical_name": "continuousSMul_inducedₛₗ",
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
  "slug": "continuoussmul-induced--145f4cc66b031d0d002cf273",
  "source": {
    "blob": "4f3a00bc08844d8f3772ea2b7b901f69f97effea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 117,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantba8bf9835caebf89cf2d0079bc510171dae42a6f83d686ccd4b637fea2cafdba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:145f4cc66b031d0d002cf273ac4090333af04a7f34d06a32bc291cc22c1d0ffa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantba8bf9835caebf89cf2d0079bc510171dae42a6f83d686ccd4b637fea2cafdba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:505cf96f-5c36-b486-c456-4625e4ed027f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousSMul_inducedₛₗ (hφ : Continuous φ) : @ContinuousSMul R M₁ _ u (t'.induced f') :=
  let _ : TopologicalSpace M₁ := t'.induced f'
  IsInducing.continuousSMul ⟨rfl⟩ hφ (map_smulₛₗ f' _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantba8bf9835caebf89cf2d0079bc510171dae42a6f83d686ccd4b637fea2cafdba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantba8bf9835caebf89cf2d0079bc510171dae42a6f83d686ccd4b637fea2cafdba.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f3a00bc08844d8f3772ea2b7b901f69f97effea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
