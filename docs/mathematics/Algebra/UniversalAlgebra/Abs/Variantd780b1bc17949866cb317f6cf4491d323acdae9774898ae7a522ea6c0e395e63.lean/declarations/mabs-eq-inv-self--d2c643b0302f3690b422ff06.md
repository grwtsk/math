# mabs_eq_inv_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b09ca3b-958b-eec5-e376-054c1cc3d4f2",
  "kind": "theorem",
  "lexical_name": "mabs_eq_inv_self",
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
  "slug": "mabs-eq-inv-self--d2c643b0302f3690b422ff06",
  "source": {
    "blob": "1242d40e8274b909e8e0b618b6741e686c859257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 227,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2c643b0302f3690b422ff0610314d6f053a4c56047886bb4bf5b9f97f67a519",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b09ca3b-958b-eec5-e376-054c1cc3d4f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mabs_eq_inv_self : |a|ₘ = a⁻¹ ↔ a ≤ 1 := by
  rw [mabs_eq_max_inv, max_eq_right_iff, le_inv_self_iff]

/-- For an element `a` of a multiplicative linear ordered group,
either `|a|ₘ = a` and `1 ≤ a`, or `|a|ₘ = a⁻¹` and `a < 1`. -/
@[to_additive
  "For an element `a` of an additive linear ordered group,
  either `|a| = a` and `0 ≤ a`, or `|a| = -a` and `a < 0`.
  Use cases on this lemma to automate linarith in inequalities"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1242d40e8274b909e8e0b618b6741e686c859257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
