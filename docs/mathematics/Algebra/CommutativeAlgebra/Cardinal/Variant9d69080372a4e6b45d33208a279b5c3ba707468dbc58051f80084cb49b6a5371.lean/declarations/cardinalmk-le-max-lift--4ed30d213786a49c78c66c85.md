# cardinalMk_le_max_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9fcae75-b982-96a7-92de-82c1a96761ad",
  "kind": "theorem",
  "lexical_name": "cardinalMk_le_max_lift",
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
  "slug": "cardinalmk-le-max-lift--4ed30d213786a49c78c66c85",
  "source": {
    "blob": "340822f9aecbad0ca2f26677ea5f717726fa27cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 61,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Cardinal/Variant9d69080372a4e6b45d33208a279b5c3ba707468dbc58051f80084cb49b6a5371.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ed30d213786a49c78c66c8528efee552dcf27e9253e0e69208d12600eb58287",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Cardinal/Variant9d69080372a4e6b45d33208a279b5c3ba707468dbc58051f80084cb49b6a5371.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9fcae75-b982-96a7-92de-82c1a96761ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinalMk_le_max_lift {σ : Type u} {R : Type v} [CommSemiring R] :
    #(MvPolynomial σ R) ≤ lift.{u} #R ⊔ lift.{v} #σ ⊔ ℵ₀ := by
  nontriviality R; cases isEmpty_or_nonempty σ <;> simp

end TwoUniverses

variable {σ R : Type u} [CommSemiring R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Cardinal/Variant9d69080372a4e6b45d33208a279b5c3ba707468dbc58051f80084cb49b6a5371.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Cardinal/Variant9d69080372a4e6b45d33208a279b5c3ba707468dbc58051f80084cb49b6a5371.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `340822f9aecbad0ca2f26677ea5f717726fa27cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
