# localizationAway

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08cf2f52b0cdf739c9e93e048825ff2f7bfdac0fc97c792e8579cb13e5a8264b",
  "kind": "def",
  "lexical_name": "localizationAway",
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
  "slug": "localizationaway--2a293f5aa83f697a372fe611",
  "source": {
    "blob": "1bc38c074ab0787fce0fc6bfe038df33d6828931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 183,
    "path": "GRWTSK/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a293f5aa83f697a372fe611814ef25fce6cfce7377f9d366e49936d60973f44",
  "verification": {
    "reference": "docs/verification/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08cf2f52b0cdf739c9e93e048825ff2f7bfdac0fc97c792e8579cb13e5a8264b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def localizationAway : Generators R S where
  vars := Unit
  val _ := IsLocalization.Away.invSelf r
  σ' s :=
    letI a : R := (IsLocalization.Away.sec r s).1
    letI n : ℕ := (IsLocalization.Away.sec r s).2
    C a * X () ^ n
  aeval_val_σ' s := by
    rw [map_mul, algHom_C, map_pow, aeval_X]
    simp only [← IsLocalization.Away.sec_spec, map_pow, IsLocalization.Away.invSelf]
    rw [← IsLocalization.mk'_pow, one_pow, ← IsLocalization.mk'_one (M := Submonoid.powers r) S r]
    rw [← IsLocalization.mk'_pow, one_pow, mul_assoc, ← IsLocalization.mk'_mul]
    rw [mul_one, one_mul, IsLocalization.mk'_pow]
    simp

end Localization

variable {T} [CommRing T] [Algebra R T] [Algebra S T] [IsScalarTower R S T]

/-- Given two families of generators `S[X] → T` and `R[Y] → S`,
we may construct the family of generators `R[X, Y] → T`. -/
@[simps val, simps -isSimp vars σ]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc38c074ab0787fce0fc6bfe038df33d6828931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
