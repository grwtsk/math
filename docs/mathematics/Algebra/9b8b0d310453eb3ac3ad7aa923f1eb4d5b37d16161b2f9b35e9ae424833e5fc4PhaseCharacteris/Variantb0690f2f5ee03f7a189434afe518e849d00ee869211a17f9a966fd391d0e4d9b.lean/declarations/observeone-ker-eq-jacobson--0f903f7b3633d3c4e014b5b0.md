# observeOne_ker_eq_jacobson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f8543ef-8289-ffc0-4a79-88fe2bacde56",
  "kind": "theorem",
  "lexical_name": "observeOne_ker_eq_jacobson",
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
  "slug": "observeone-ker-eq-jacobson--0f903f7b3633d3c4e014b5b0",
  "source": {
    "blob": "22efd3b8cf1525b2f3ab03b280de7bf7b6aa16cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Algebra/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4PhaseCharacteris/Variantb0690f2f5ee03f7a189434afe518e849d00ee869211a17f9a966fd391d0e4d9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f903f7b3633d3c4e014b5b0f4da7d34b3448800b1b5f098d112057e977ff471",
  "verification": {
    "reference": "docs/verification/Algebra/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4PhaseCharacteris/Variantb0690f2f5ee03f7a189434afe518e849d00ee869211a17f9a966fd391d0e4d9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f8543ef-8289-ffc0-4a79-88fe2bacde56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem observeOne_ker_eq_jacobson :
    RingHom.ker observeOne = Ring.jacobson ThickOne := by
  apply le_antisymm
  · intro x hx
    rw [← Ideal.jacobson_bot]
    exact Ideal.radical_le_jacobson
      (mem_nilradical.mpr ⟨2, observeOne_kernel_elements_square_zero hx⟩)
  · let : (RingHom.ker observeOne).IsMaximal :=
      RingHom.ker_isMaximal_of_surjective observeOne observeOne_surjective
    exact Ring.jacobson_le_of_isMaximal _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4PhaseCharacteris/Variantb0690f2f5ee03f7a189434afe518e849d00ee869211a17f9a966fd391d0e4d9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4PhaseCharacteris/Variantb0690f2f5ee03f7a189434afe518e849d00ee869211a17f9a966fd391d0e4d9b.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22efd3b8cf1525b2f3ab03b280de7bf7b6aa16cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
