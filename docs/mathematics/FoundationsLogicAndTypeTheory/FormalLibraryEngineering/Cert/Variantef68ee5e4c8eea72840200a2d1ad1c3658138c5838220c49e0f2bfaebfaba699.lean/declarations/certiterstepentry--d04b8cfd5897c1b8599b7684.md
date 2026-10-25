# certIterStepEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:305e62cd225db31bcfea0819a1a6e98d71dfa330fd5bd40c9e193814387144d1",
  "kind": "def",
  "lexical_name": "certIterStepEntry",
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
  "slug": "certiterstepentry--d04b8cfd5897c1b8599b7684",
  "source": {
    "blob": "47b927a5ef232d48ca55527130f3a23550bcefe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 289,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variantef68ee5e4c8eea72840200a2d1ad1c3658138c5838220c49e0f2bfaebfaba699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d04b8cfd5897c1b8599b76842d745688823d4d067f52e9af172f64c5b0ee4f21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variantef68ee5e4c8eea72840200a2d1ad1c3658138c5838220c49e0f2bfaebfaba699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:305e62cd225db31bcfea0819a1a6e98d71dfa330fd5bd40c9e193814387144d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def certIterStepEntry (t i j : ℕ) : CertM rα (Cert rα) := do
  if let some c := (← get).iterStepEntryCache[(t, i, j)]? then
    return c
  let ctx ← read
  let {dimensionLit := dimLit, arrayExpr := A, ..} := ctx
  let cert ← match t with
    -- The `t = 0` branch of `Function.iterate`.
    | 0 => do
      let ce ← certEntry i j
      let hIter := q(Function.iterate_zero_apply
        (BirdDet.stepEntry $dimLit $A) (BirdDet.get $dimLit $A))
      let h := q(congrArg (fun F : ℕ → ℕ → $α => F $i $j) $hIter)
      pure (ce.chainProof h)
    -- The `t = t' + 1` branch of `Function.iterate`.
    | t' + 1 => do
      -- First summand in one `BirdDet.stepEntry` application:
      --   -(sumFrom n (i + 1) fun k => F_t k k) * get n A i j
      let diagSummand := q(fun k => $(ctx.iterStepEntry t') k k)
      let negDiagSum := q(-$(ctx.sumFrom (i + 1) diagSummand))
      let entryCert ← certEntry i j
      let diagProdCert ←
        -- If `get n A i j = 0` then we can skip computation of
        --  `-(sumFrom n (i + 1) fun k => F_t k k)`
        if entryCert.isZero then
          zeroProdCert negDiagSum entryCert
        else do
          let diagSumCert ← certDiag t' (i + 1)
          let negDiagSumCert ← certNeg diagSumCert
          certMul negDiagSumCert entryCert
      -- Second summand in one `BirdDet.stepEntry` application:
      --   sumFrom n (i + 1) fun k => F_t i k * get n A k j
      let tailSumCert ← certTail t' i j (i + 1)
      let rhsCert ← certAdd diagProdCert tailSumCert
      let hStep := q(BirdDet.stepEntry_eq $dimLit $A $(ctx.iterStepEntry t') $i $j)
      let stepCert := rhsCert.chainProof hStep
      let hIter := q(Function.iterate_succ_apply'
        (BirdDet.stepEntry $dimLit $A) $t' (BirdDet.get $dimLit $A))
      let h := q(congrArg (fun F : ℕ → ℕ → $α ↦ F $i $j) $hIter)
      pure (stepCert.chainProof h)
  modify fun s =>
    {s with iterStepEntryCache := s.iterStepEntryCache.insert (t, i, j) cert}
  return cert


/-- Certify the diagonal tail sum in one `BirdDet.stepEntry` application:

```
sumFrom n (i + 1) fun k => (stepEntry n A)^[t] F k k)
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variantef68ee5e4c8eea72840200a2d1ad1c3658138c5838220c49e0f2bfaebfaba699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variantef68ee5e4c8eea72840200a2d1ad1c3658138c5838220c49e0f2bfaebfaba699.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47b927a5ef232d48ca55527130f3a23550bcefe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
