# one_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:793de052-914c-8dc0-5122-441b78944d42",
  "kind": "lemma",
  "lexical_name": "one_comp",
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
  "slug": "one-comp--fcc6e48b7a0b4a6a827e3329",
  "source": {
    "blob": "61cca87f06ea871d81fefce8b6d25e30a4a18c5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 55,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ProdHom/Variante6f1b85ef0e5a86cdbec5adf1276beea593140343ddf0b4d5357a2919ce1675d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcc6e48b7a0b4a6a827e3329e7af87870acf989686a1835525510b281ceeaae8",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ProdHom/Variante6f1b85ef0e5a86cdbec5adf1276beea593140343ddf0b4d5357a2919ce1675d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:793de052-914c-8dc0-5122-441b78944d42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_comp {M₀ N₀ G₀ : Type*}
    [GroupWithZero M₀]
    [MulZeroOneClass N₀] [Nontrivial N₀] [NoZeroDivisors N₀]
    [MulZeroOneClass G₀]
    [DecidablePred fun x : M₀ ↦ x = 0] [DecidablePred fun x : N₀ ↦ x = 0]
    (f : M₀ →*₀ N₀) :
    (1 : N₀ →*₀ G₀).comp f = (1 : M₀ →*₀ G₀) :=
  ext <| one_apply_apply_eq _

variable (G₀ H₀ : Type*) [GroupWithZero G₀] [GroupWithZero H₀]

/-- Given groups with zero `G₀`, `H₀`, the natural inclusion ordered homomorphism from
`G₀` to `WithZero (G₀ˣ × H₀ˣ)`, which is the group with zero that can be identified
as their product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ProdHom/Variante6f1b85ef0e5a86cdbec5adf1276beea593140343ddf0b4d5357a2919ce1675d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ProdHom/Variante6f1b85ef0e5a86cdbec5adf1276beea593140343ddf0b4d5357a2919ce1675d.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61cca87f06ea871d81fefce8b6d25e30a4a18c5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
