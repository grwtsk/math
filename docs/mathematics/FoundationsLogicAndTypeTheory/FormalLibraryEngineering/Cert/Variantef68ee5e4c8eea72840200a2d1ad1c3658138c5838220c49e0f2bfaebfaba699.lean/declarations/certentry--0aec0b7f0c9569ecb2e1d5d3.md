# certEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b19f08eea871df58e1704c505f5b80666df9ef3bccfa90b43400a199d395264",
  "kind": "def",
  "lexical_name": "certEntry",
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
  "slug": "certentry--0aec0b7f0c9569ecb2e1d5d3",
  "source": {
    "blob": "47b927a5ef232d48ca55527130f3a23550bcefe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 229,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variantef68ee5e4c8eea72840200a2d1ad1c3658138c5838220c49e0f2bfaebfaba699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0aec0b7f0c9569ecb2e1d5d3039a948e632e2bb0135623e2c67161c666880e97",
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

Occurrence: `declaration:4b19f08eea871df58e1704c505f5b80666df9ef3bccfa90b43400a199d395264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def certEntry (i j : ℕ) : CertM rα (Cert rα) := do
  if let some c := (← get).entryCache[(i, j)]? then
    return c
  let ctx ← read
  let {dimension := dim, dimensionLit := dimLit, arrayExpr := A, arrayEntries, ..} := ctx
  let lhs : Q($α) := q(BirdDet.get $dimLit $A $i $j)
  -- The index of the matrix entry (i, j) in arrayEntries
  let idx := dim * i + j
  let entry := arrayEntries.getD idx q(0)
  let ce ← certEval entry
  let getD : Q($α) := q(Array.getD $A ($dimLit * $i + $j) 0)
  let hGet : Q($lhs = $getD) := q(BirdDet.get_eq $dimLit $A $i $j)
  have : $getD =Q $entry := ⟨⟩
  let hGetD : Q($getD = $entry) := q(rfl)
  let cert := ce.chainProof q(Eq.trans $hGet $hGetD)
  modify fun s => {s with entryCache := s.entryCache.insert (i, j) cert}
  return cert

/-- Certify the stop branch of `BirdDet.sumFrom`.

This corresponds to the `else 0` branch of:

```
sumFrom n lo f = if lo < n then f lo + sumFrom n (lo + 1) f else 0
```

Throws a meta-level error if called with `lo` such that `lo < ctx.dimension`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variantef68ee5e4c8eea72840200a2d1ad1c3658138c5838220c49e0f2bfaebfaba699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variantef68ee5e4c8eea72840200a2d1ad1c3658138c5838220c49e0f2bfaebfaba699.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47b927a5ef232d48ca55527130f3a23550bcefe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
