# mkLTZeroProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:daa0824f7e18fd147930e2542a83cc0e7522e98c7f0f82b3fdf5d45b63162201",
  "kind": "def",
  "lexical_name": "mkLTZeroProof",
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
  "slug": "mkltzeroproof--d1ff4d7749c3eaff507ecfbe",
  "source": {
    "blob": "745f918f26ba4864006255761b4d5e160569443d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1ff4d7749c3eaff507ecfbe01fe97ea01ebcf44ab54eac23d071dd24ce72835",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:daa0824f7e18fd147930e2542a83cc0e7522e98c7f0f82b3fdf5d45b63162201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkLTZeroProof : List (Expr × ℕ) → MetaM Expr
  | [] => throwError "no linear hypotheses found"
  | [(h, c)] => do
      let (_, t) ← mkSingleCompZeroOf c h
      return t
  | ((h, c)::t) => do
      let (iq, h') ← mkSingleCompZeroOf c h
      let (_, t) ← t.foldlM (fun pr ce ↦ step pr.1 pr.2 ce.1 ce.2) (iq, h')
      return t
where
  /--
  `step c pf npf coeff` assumes that `pf` is a proof of `t1 R1 0` and `npf` is a proof
  of `t2 R2 0`. It uses `mkSingleCompZeroOf` to prove `t1 + coeff*t2 R 0`, and returns `R`
  along with this proof.
  -/
  step (c : Ineq) (pf npf : Expr) (coeff : ℕ) : MetaM (Ineq × Expr) := do
    let (iq, h') ← mkSingleCompZeroOf coeff npf
    let (nm, niq) := addIneq c iq
    return (niq, ← mkAppM nm #[pf, h'])

/-- If `prf` is a proof of `t R s`, `leftOfIneqProof prf` returns `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `745f918f26ba4864006255761b4d5e160569443d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
