# certSumFromStop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6365b430ed8aaef4686a1900656125a42d30be07e321a6fabf91708945896e00",
  "kind": "def",
  "lexical_name": "certSumFromStop",
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
  "slug": "certsumfromstop--20007a3992fe42e555dca044",
  "source": {
    "blob": "32791bfa14c8e9c4e7d2513d80e43c248636dbb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 265,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variant2250e2c4962c91707039b731d6fc80081cd66a165502b5568846e5cb3914366d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20007a3992fe42e555dca0447badb42def32765adcf0aab12f09b0ff03783427",
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

Occurrence: `declaration:6365b430ed8aaef4686a1900656125a42d30be07e321a6fabf91708945896e00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def certSumFromStop (lo : ℕ) (f : Q(ℕ → $α)) : CertM rα (Cert rα) := do
  let ctx ← read
  if lo < ctx.dimension then
    throwError "certSumFromStop called with {lo} such that {lo} < {ctx.dimension}"
  have dimLit : Q(ℕ) := ctx.dimensionLit
  let hNot : Q(¬ $lo < $dimLit) ← mkDecideProofQ q(¬ $lo < $dimLit)
  return zeroCertOfProof q(BirdDet.sumFrom_stop $dimLit $lo $f $hNot)

/-- Certify the step branch of `BirdDet.sumFrom`.

This corresponds to the `lo < n` branch of:

```
sumFrom n lo f = if lo < n then f lo + sumFrom n (lo + 1) f else 0
```

Throws a meta-level error if called with `lo` such that `¬ lo < ctx.dimension`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variant2250e2c4962c91707039b731d6fc80081cd66a165502b5568846e5cb3914366d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variant2250e2c4962c91707039b731d6fc80081cd66a165502b5568846e5cb3914366d.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32791bfa14c8e9c4e7d2513d80e43c248636dbb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
