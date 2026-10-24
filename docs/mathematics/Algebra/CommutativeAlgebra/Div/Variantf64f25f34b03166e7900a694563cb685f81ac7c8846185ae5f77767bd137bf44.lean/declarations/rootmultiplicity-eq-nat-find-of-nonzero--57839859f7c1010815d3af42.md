# rootMultiplicity_eq_nat_find_of_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e15cd3fb523371c524168aed531903cafdbbce8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 511,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e895e2f-49e8-668d-b16c-4bf7449d3c49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7750c801-f18f-cf3f-232f-65dbb5d9279c",
  "kind": "theorem",
  "lexical_name": "rootMultiplicity_eq_nat_find_of_nonzero",
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
  "slug": "rootmultiplicity-eq-nat-find-of-nonzero--57839859f7c1010815d3af42",
  "source": {
    "blob": "8e15cd3fb523371c524168aed531903cafdbbce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 511,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57839859f7c1010815d3af428d43f9927e75d1a204936204f131e6445d139c74",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7750c801-f18f-cf3f-232f-65dbb5d9279c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootMultiplicity_eq_nat_find_of_nonzero [DecidableEq R] {p : R[X]} (p0 : p ≠ 0) {a : R} :
    letI : DecidablePred fun n : ℕ => ¬(X - C a) ^ (n + 1) ∣ p := fun n =>
      have := decidableDvdMonic p ((monic_X_sub_C a).pow (n + 1))
      inferInstanceAs (Decidable ¬_)
    rootMultiplicity a p = Nat.find (finiteMultiplicity_X_sub_C a p0) := by
  dsimp [rootMultiplicity]
  cases Subsingleton.elim ‹DecidableEq R› (Classical.decEq R)
  rw [dif_neg p0]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e15cd3fb523371c524168aed531903cafdbbce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
