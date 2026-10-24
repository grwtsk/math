# _root_.GRWTSK.Algebra.CommutativeAlgebra.Expand.Variant9bfe313fc0e2cfd741c954a4cbbb6a3266755d7f9e237268e543a8afae635b02.FiniteField.MvPowerSeries.expand_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a58750ae-6be1-5a2b-965c-1b98bdcf3925",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.Expand.Variant9bfe313fc0e2cfd741c954a4cbbb6a3266755d7f9e237268e543a8afae635b02.FiniteField.MvPowerSeries.expand_card",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-expand-variant9bfe313fc0e2cfd741c--ff23d71459073412b72a0863",
  "source": {
    "blob": "3dfc06750b931be6ff53a9377c26ec353d22c334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 266,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant618c110cca03bebd6642066fe64de26f80721129085f27e886a17d906a90b978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff23d71459073412b72a08639018c90f40eb5261b828993a545cf8a58954ad54",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Variant618c110cca03bebd6642066fe64de26f80721129085f27e886a17d906a90b978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a58750ae-6be1-5a2b-965c-1b98bdcf3925`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.Expand.Variant9bfe313fc0e2cfd741c954a4cbbb6a3266755d7f9e237268e543a8afae635b02.FiniteField.MvPowerSeries.expand_card {K : Type*} [Field K] [Fintype K]
    (f : MvPowerSeries σ K) :
    f.expand (Fintype.card K) Fintype.card_ne_zero = f ^ (Fintype.card K) := by
  obtain ⟨p, hp⟩ := CharP.exists K
  rcases FiniteField.card K p with ⟨⟨n, npos⟩, ⟨hp, hn⟩⟩
  have : Fact p.Prime := ⟨hp⟩
  simp_rw [hn]
  rw [← MvPowerSeries.map_iterateFrobenius_expand _ (NeZero.ne' p).symm, iterateFrobenius_eq_pow,
    FiniteField.frobenius_pow hn, RingHom.one_def, MvPowerSeries.map_id, RingHom.id_apply]

end ExpChar

end MvPowerSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variant618c110cca03bebd6642066fe64de26f80721129085f27e886a17d906a90b978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant618c110cca03bebd6642066fe64de26f80721129085f27e886a17d906a90b978.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dfc06750b931be6ff53a9377c26ec353d22c334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
