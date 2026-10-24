# coeffsIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b1d519c668cde5b45266dafcdad6241607269149b1f8663256b50a94ab0e24b",
  "kind": "def",
  "lexical_name": "coeffsIn",
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
  "slug": "coeffsin--33067de3407fefc05ca9738d",
  "source": {
    "blob": "b7178d84d5d72120af9e5fa24a7ec65eb19c6c00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 951,
    "line": 946,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33067de3407fefc05ca9738d018517b8ea226438577ffe7ab5e8aea453308e51",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b1d519c668cde5b45266dafcdad6241607269149b1f8663256b50a94ab0e24b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 946–951.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coeffsIn : Submodule R (MvPolynomial σ S) where
  carrier := {p | ∀ i, p.coeff i ∈ M}
  add_mem' := by simp+contextual [add_mem]
  zero_mem' := by simp
  smul_mem' := by simp+contextual [Submodule.smul_mem]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean#L946).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7178d84d5d72120af9e5fa24a7ec65eb19c6c00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
