# Hom.equivAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f0991f1238a09c48d41e67df0d10acee2180d27a14c59f5ee9590d40d4bd4dc",
  "kind": "def",
  "lexical_name": "Hom.equivAlgHom",
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
  "slug": "hom-equivalghom--f251d040bc0fac4c1ee444a0",
  "source": {
    "blob": "a08976f024735c867be48366f52b72c3bcd4aec7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 329,
    "path": "GRWTSK/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f251d040bc0fac4c1ee444a0077d52017192e434ca1877694749ff1863a19df1",
  "verification": {
    "reference": "docs/verification/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f0991f1238a09c48d41e67df0d10acee2180d27a14c59f5ee9590d40d4bd4dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hom.equivAlgHom :
    Hom P P' ≃ { f : P.Ring →ₐ[R] P'.Ring //
      ∀ x, aeval P'.val (f x) = algebraMap S S' (aeval P.val x) } where
  toFun f := ⟨f.toAlgHom, f.algebraMap_toAlgHom⟩
  invFun f := ⟨fun i ↦ f.1 (.X i), fun i ↦ by simp [f.2]⟩
  left_inv f := by ext; simp
  right_inv f := by ext; simp

variable (P P')

/-- The hom from `P` to `P'` given by the designated section of `P'`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a08976f024735c867be48366f52b72c3bcd4aec7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
