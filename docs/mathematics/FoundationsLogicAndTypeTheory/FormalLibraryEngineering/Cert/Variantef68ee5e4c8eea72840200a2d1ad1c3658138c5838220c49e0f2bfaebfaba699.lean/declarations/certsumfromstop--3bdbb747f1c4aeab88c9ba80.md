# certSumFromStop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3992aa84bb051bc546a1b24cf3ca4ee2e964192444db165abd82e59f39d07913",
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
  "slug": "certsumfromstop--3bdbb747f1c4aeab88c9ba80",
  "source": {
    "blob": "47b927a5ef232d48ca55527130f3a23550bcefe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variantef68ee5e4c8eea72840200a2d1ad1c3658138c5838220c49e0f2bfaebfaba699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bdbb747f1c4aeab88c9ba80afd1a49153c2d97c016bc5fc7f6175ae9d254b23",
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

Occurrence: `declaration:3992aa84bb051bc546a1b24cf3ca4ee2e964192444db165abd82e59f39d07913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–274.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variantef68ee5e4c8eea72840200a2d1ad1c3658138c5838220c49e0f2bfaebfaba699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Variantef68ee5e4c8eea72840200a2d1ad1c3658138c5838220c49e0f2bfaebfaba699.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47b927a5ef232d48ca55527130f3a23550bcefe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
