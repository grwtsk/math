# finiteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fffa918-a375-fa26-3c0a-0c68731a1e9a",
  "kind": "theorem",
  "lexical_name": "finiteDimensional",
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
  "slug": "finitedimensional--da82ef312389a2b9fe5c5792",
  "source": {
    "blob": "15bbfe75070e0631522db95e5665240bbed9b944",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 139,
    "path": "GRWTSK/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da82ef312389a2b9fe5c579201c5c213d4fff08dca59da724d7782ee3594f7e5",
  "verification": {
    "reference": "docs/verification/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fffa918-a375-fa26-3c0a-0c68731a1e9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteDimensional (f : K[X]) [IsSplittingField K L f] : FiniteDimensional K L :=
  ⟨@Algebra.top_toSubmodule K L _ _ _ ▸
    adjoin_rootSet L f ▸ FG_adjoin_of_finite (Finset.finite_toSet _) fun y hy =>
      if hf : f = 0 then by rw [hf, rootSet_zero] at hy; cases hy
      else
        isAlgebraic_iff_isIntegral.1 ⟨f, hf, (eval₂_eq_eval_map _).trans <|
          (mem_roots <| map_ne_zero hf).1 (Multiset.mem_toFinset.mp hy)⟩⟩
#align polynomial.is_splitting_field.finite_dimensional Polynomial.IsSplittingField.finiteDimensional

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15bbfe75070e0631522db95e5665240bbed9b944` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
