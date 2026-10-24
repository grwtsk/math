# lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f632e626d2a7384b06e01f49804ea14e0a44d037b43e4b7f693bb8247f504ccf",
  "kind": "def",
  "lexical_name": "lift",
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
  "slug": "lift--baa9c60adde46ce150a56dd6",
  "source": {
    "blob": "0fab2cb8c8c6f42d0ec5b40fff11fd2a255b69bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 227,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baa9c60adde46ce150a56dd6748a2b29efe7d9b78105fd46a65a2ca48ed0405c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f632e626d2a7384b06e01f49804ea14e0a44d037b43e4b7f693bb8247f504ccf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def lift : ({i : I} → A i →ₐ[R] B) ≃ (FreeProduct R A →ₐ[R] B) where
  toFun maps :=
    RingQuot.liftAlgHom R ⟨
        TensorAlgebra.lift R <|
          DirectSum.toModule R I B <|
            (@maps · |>.toLinearMap),
        fun x y r ↦ by
          cases r with
          | id => simp
          | prod => simp⟩
  invFun π i := π ∘ₐ ι R A i
  left_inv π := by
    ext i aᵢ
    aesop (add simp [ι, ι'])
  right_inv maps := by
    ext i a
    aesop (add simp [ι, ι'])

/-- Universal property of the free product of algebras, property:
for every `R`-algebra `B`, every family of maps `maps : (i : I) → (A i →ₐ[R] B)` lifts
to a unique arrow `π` from `FreeProduct R A` such that  `π ∘ ι i = maps i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fab2cb8c8c6f42d0ec5b40fff11fd2a255b69bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
