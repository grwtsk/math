# mkGateCached

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a5d63ddcb97d2a7a39b307ea2c6a39a43697e8b7fcbb8604bf02429c47affe3",
  "kind": "def",
  "lexical_name": "mkGateCached",
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
  "slug": "mkgatecached--ebc2491cd8a9b55367f6c81b",
  "source": {
    "blob": "e958238d58b421a27452b39b2c51ff74edfd2b2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cached/Variant5c0da5c2c8a950a277af1d0959cdf9caf082e3c3f3c74e20844c9b32c2546303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebc2491cd8a9b55367f6c81b28f68d22c71cff838e269034f6742c2774708755",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cached/Variant5c0da5c2c8a950a277af1d0959cdf9caf082e3c3f3c74e20844c9b32c2546303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a5d63ddcb97d2a7a39b307ea2c6a39a43697e8b7fcbb8604bf02429c47affe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkGateCached (aig : AIG α) (input : BinaryInput aig) : Entrypoint α :=
  let lhs := input.lhs.gate
  let rhs := input.rhs.gate
  if lhs < rhs then
    go aig ⟨input.lhs, input.rhs⟩
  else
    go aig ⟨input.rhs, input.lhs⟩
where
  go (aig : AIG α) (input : BinaryInput aig) : Entrypoint α :=
    let ⟨decls, cache, hdag, hzero, hconst⟩ := aig
    let lhs := input.lhs.gate
    let rhs := input.rhs.gate
    let linv := input.lhs.invert
    let rinv := input.rhs.invert
    have := input.lhs.hgate
    have := input.rhs.hgate
    let decl := .gate (.mk lhs linv) (.mk rhs rinv)
    match cache.get? decl with
    | some hit =>
      ⟨⟨decls, cache, hdag, hzero, hconst⟩, ⟨hit.idx, false, hit.hbound⟩⟩
    | none =>
      /-
      Here we implement the one-level subset of:
      https://fmv.jku.at/papers/BrummayerBiere-MEMICS06.pdf
      TODO: rest of the table
      -/
      let lhsVal := AIG.getConstant ⟨decls, cache, hdag, hzero, hconst⟩ input.lhs
      let rhsVal := AIG.getConstant ⟨decls, cache, hdag, hzero, hconst⟩ input.rhs
      match lhsVal, rhsVal with
      -- Boundedness
      | .some false, _ | _, .some false =>
        let ref := mkConstCached ⟨decls, cache, hdag, hzero, hconst⟩ false
        ⟨⟨decls, cache, hdag, hzero, hconst⟩, ref⟩
      -- Left Neutrality
      | .some true, _ => ⟨⟨decls, cache, hdag, hzero, hconst⟩, ⟨rhs, rinv, by assumption⟩⟩
      -- Right Neutrality
      | _, .some true => ⟨⟨decls, cache, hdag, hzero, hconst⟩, ⟨lhs, linv, by assumption⟩⟩
      -- No constant inputs
      | _, _ =>
        if lhs == rhs then
           -- Idempotency
          if linv == rinv then
            ⟨⟨decls, cache, hdag, hzero, hconst⟩, ⟨lhs, linv, by assumption⟩⟩
          -- Contradiction
          else
            let ref := mkConstCached ⟨decls, cache, hdag, hzero, hconst⟩ false
            ⟨⟨decls, cache, hdag, hzero, hconst⟩, ref⟩
        else
          -- Gate couldn't be simplified
          let g := decls.size
          let cache := cache.insert decls decl
          let decls := decls.push decl
          have hdag := by
            intro i lhs rhs h1 h2
            simp only [decls, Array.getElem_push] at h2
            simp_all
            split at h2
            · apply hdag <;> assumption
            · injection h2 with hl hr
              simp [← hl, ← hr]
              omega
          have hzero' := by simp [decls]
          have hconst := by simp [decls, Array.getElem_push, hzero, hconst]
          ⟨⟨decls, cache, hdag, hzero', hconst⟩, ⟨g, false, by simp [g, decls]⟩⟩

end AIG

end Sat
end Std
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cached/Variant5c0da5c2c8a950a277af1d0959cdf9caf082e3c3f3c74e20844c9b32c2546303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cached/Variant5c0da5c2c8a950a277af1d0959cdf9caf082e3c3f3c74e20844c9b32c2546303.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e958238d58b421a27452b39b2c51ff74edfd2b2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
