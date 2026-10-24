# IsIsotypicOfType.of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11ec92e9-ebf0-de1a-55b8-9030de00a348",
  "kind": "theorem",
  "lexical_name": "IsIsotypicOfType.of_injective",
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
  "slug": "isisotypicoftype-of-injective--3cd6438e64541f3eec2ac3e0",
  "source": {
    "blob": "bf45c238ccf34c0da62f03063df50e25acf3a9a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 56,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cd6438e64541f3eec2ac3e0d632ba2728e8011d97dd9ed4d6e77d6ba62135ea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11ec92e9-ebf0-de1a-55b8-9030de00a348`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIsotypicOfType.of_injective (h : IsIsotypicOfType R N S) (f : M →ₗ[R] N)
    (inj : Function.Injective f) : IsIsotypicOfType R M S := fun m ↦
  have em := m.equivMapOfInjective f inj
  have := IsSimpleModule.congr em.symm
  ⟨em.trans (h (m.map f)).some⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf45c238ccf34c0da62f03063df50e25acf3a9a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
