# Cofix.dest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4e6cff3414096469cf0a93e6f934b33bdb53a3aa4a82edaababe8511b3e584f",
  "kind": "def",
  "lexical_name": "Cofix.dest",
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
  "slug": "cofix-dest--bbdef942c6baffb46eb2347d",
  "source": {
    "blob": "781048609589e8b637ca09908bfae93fa10a33e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbdef942c6baffb46eb2347d5126c657c0d4662a03895d9376325fa1f2151f75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4e6cff3414096469cf0a93e6f934b33bdb53a3aa4a82edaababe8511b3e584f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cofix.dest {α : TypeVec n} : Cofix F α → F (α.append1 (Cofix F α)) :=
  Quot.lift (fun x => appendFun id (Quot.mk Mcongr) <$$> abs (M.dest q.P x))
    (by
      rintro x y ⟨r, pr, rxy⟩
      dsimp
      have : ∀ x y, r x y → Mcongr x y := by
        intro x y h
        exact ⟨r, pr, h⟩
      rw [← Quot.factor_mk_eq _ _ this]
      conv =>
        lhs
        rw [appendFun_comp_id, comp_map, ← abs_map, pr rxy, abs_map, ← comp_map,
          ← appendFun_comp_id])
#align mvqpf.cofix.dest MvQPF.Cofix.dest

/-- Abstraction function for `cofix F α` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `781048609589e8b637ca09908bfae93fa10a33e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
