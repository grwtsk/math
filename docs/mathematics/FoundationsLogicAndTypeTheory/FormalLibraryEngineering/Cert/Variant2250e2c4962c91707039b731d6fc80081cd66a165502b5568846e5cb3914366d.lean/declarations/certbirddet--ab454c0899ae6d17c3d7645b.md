# certBirdDet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:071dcaadb42043303b345f26e90405712443c8a844e8c5c1d6817a90f2b4c7ec",
  "kind": "def",
  "lexical_name": "certBirdDet",
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
  "slug": "certbirddet--ab454c0899ae6d17c3d7645b",
  "source": {
    "blob": "32791bfa14c8e9c4e7d2513d80e43c248636dbb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 407,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variant2250e2c4962c91707039b731d6fc80081cd66a165502b5568846e5cb3914366d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab454c0899ae6d17c3d7645bd13311914daf5882e7563e9b70bb4db07b2311f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variant2250e2c4962c91707039b731d6fc80081cd66a165502b5568846e5cb3914366d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:071dcaadb42043303b345f26e90405712443c8a844e8c5c1d6817a90f2b4c7ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def certBirdDet : CertM rα (Cert rα) := do
  let ctx ← read
  let {dimension := dim, dimensionLit := dimLit, arrayExpr, ..} := ctx
  if dim == 0
  then
    let ce ← certEval q(1 : $α)
    have : $dimLit =Q 0 := ⟨⟩
    have A : Q(Array $α) := arrayExpr
    let h := q(BirdDet.birdDet_zero $A)
    return ce.chainProof h
  else
    -- The non-zero `BirdDet.birdDet_eq` branch matches `k + 1`
    -- so we set k := `ctx.dimension - 1`.
    let k := dim - 1
    let cs ← certBirdSign k
    let ci ← certIterStepEntry k 0 0
    let cm ← certMul cs ci
    have kLit := mkNatLitQ k
    have : $dimLit =Q $kLit + 1 := ⟨⟩
    let hn : Q($dimLit = $kLit + 1) := q(rfl)
    let h := q(BirdDet.birdDet_eq $dimLit $kLit $arrayExpr $hn)
    return cm.chainProof h

end Mathlib.Tactic.Determinant

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variant2250e2c4962c91707039b731d6fc80081cd66a165502b5568846e5cb3914366d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variant2250e2c4962c91707039b731d6fc80081cd66a165502b5568846e5cb3914366d.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32791bfa14c8e9c4e7d2513d80e43c248636dbb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
