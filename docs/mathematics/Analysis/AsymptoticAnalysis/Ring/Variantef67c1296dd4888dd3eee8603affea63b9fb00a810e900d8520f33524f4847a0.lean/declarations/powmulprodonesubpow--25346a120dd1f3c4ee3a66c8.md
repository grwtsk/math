# powMulProdOneSubPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bcd43eb3de506045af3149a367d60ed9414a49ab20ce896e685387adffbedb6",
  "kind": "def",
  "lexical_name": "powMulProdOneSubPow",
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
  "slug": "powmulprodonesubpow--25346a120dd1f3c4ee3a66c8",
  "source": {
    "blob": "9ef76177eb9d4cc353203dfdac6449ecc80e2a3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 54,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25346a120dd1f3c4ee3a66c82230fbcb1c206fcceb0da3c86f561e21181b9d61",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bcd43eb3de506045af3149a367d60ed9414a49ab20ce896e685387adffbedb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def powMulProdOneSubPow (k n : ℕ) (x : R) : R :=
  x ^ ((k + 1) * n) * ∏ i ∈ Finset.range (n + 1), (1 - x ^ (k + i + 1))

/-- And a second auxiliary sequence

$$ b_{k, n} = x^{(k+1)n} (x^{2k + n + 3} - 1) \prod_{i=0}^{n-1} (1 - x^{k + i + 2}) $$ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef76177eb9d4cc353203dfdac6449ecc80e2a3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
