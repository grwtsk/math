# ofBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f0d60c51f0e7ba891f3be737f370864ffc8ac83a9fdb1601e959e6da2fde92d",
  "kind": "def",
  "lexical_name": "ofBaseChange",
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
  "slug": "ofbasechange--852ac1252b74ba8a7cb6b9ed",
  "source": {
    "blob": "e7b67734d608785a00d88534c3c239e7a79cd2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1008,
    "line": 983,
    "path": "GRWTSK/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:852ac1252b74ba8a7cb6b9ed4d64a3c5d610f47af653a018e31641dafedb2b77",
  "verification": {
    "reference": "docs/verification/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f0d60c51f0e7ba891f3be737f370864ffc8ac83a9fdb1601e959e6da2fde92d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 983–1008.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofBaseChange : W⟮F⟯ →+ W⟮K⟯ where
  toFun := ofBaseChangeFun W F K
  map_zero' := rfl
  map_add' := by
    rintro (_ | @⟨x₁, y₁, _⟩) (_ | @⟨x₂, y₂, _⟩)
    any_goals rfl
    by_cases hx : x₁ = x₂
    · by_cases hy : y₁ = (W.baseChange F).negY x₂ y₂
      · simp only [some_add_some_of_Y_eq hx hy, ofBaseChangeFun]
        rw [some_add_some_of_Y_eq <| congr_arg _ hx]
        · rw [hy, baseChange_negY_of_baseChange]
      · simp only [some_add_some_of_Y_ne hx hy, ofBaseChangeFun]
        rw [some_add_some_of_Y_ne <| congr_arg _ hx]
        · simp only [baseChange_addX_of_baseChange, baseChange_addY_of_baseChange,
            baseChange_slope_of_baseChange]
        · rw [baseChange_negY_of_baseChange]
          contrapose! hy
          exact NoZeroSMulDivisors.algebraMap_injective F K hy
    · simp only [some_add_some_of_X_ne hx, ofBaseChangeFun]
      rw [some_add_some_of_X_ne]
      · simp only [baseChange_addX_of_baseChange, baseChange_addY_of_baseChange,
          baseChange_slope_of_baseChange]
      · contrapose! hx
        exact NoZeroSMulDivisors.algebraMap_injective F K hx
#align weierstrass_curve.point.of_base_change WeierstrassCurve.Point.ofBaseChange

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean#L983).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b67734d608785a00d88534c3c239e7a79cd2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
