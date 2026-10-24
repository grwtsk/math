# lift_surjective_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f71c734-955f-bba7-9ba2-b6c7893aa14c",
  "kind": "theorem",
  "lexical_name": "lift_surjective_of_surjective",
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
  "slug": "lift-surjective-of-surjective--936a3f13c9e496c08a5abcb4",
  "source": {
    "blob": "8b8383d6c41507ab2e60035f1c788e9f485adda0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 156,
    "path": "GRWTSK/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:936a3f13c9e496c08a5abcb42bd492662eb3e2b40d6875649c9ee80a552c498e",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f71c734-955f-bba7-9ba2-b6c7893aa14c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_surjective_of_surjective {f : R →+* S} (H : ∀ a : R, a ∈ I → f a = 0)
    (hf : Function.Surjective f) : Function.Surjective (Ideal.Quotient.lift I f H) := by
  intro y
  obtain ⟨x, rfl⟩ := hf y
  use Ideal.Quotient.mk I x
  simp only [Ideal.Quotient.lift_mk]

variable {S T U : Ideal R} [S.IsTwoSided] [T.IsTwoSided] [U.IsTwoSided]

/-- The ring homomorphism from the quotient by a smaller ideal to the quotient by a larger ideal.

This is the `Ideal.Quotient` version of `Quot.Factor`

When the two ideals are of the form `I^m` and `I^n` and `n ≤ m`,
please refer to the dedicated version `Ideal.Quotient.factorPow`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b8383d6c41507ab2e60035f1c788e9f485adda0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
