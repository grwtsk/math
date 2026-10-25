# mkTransOffsetProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f045dbd067b18f0ef5a204c703d68313b70b95ba988e1d26a26053bb9e67134d",
  "kind": "def",
  "lexical_name": "mkTransOffsetProof",
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
  "slug": "mktransoffsetproof--33e37c8ef25a3cb7b0f43cde",
  "source": {
    "blob": "ac07915ce268e22268366fb3a895f376aa2244eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33e37c8ef25a3cb7b0f43cde589ecd1b81ee8c4888a1e59297a12a02e7693f9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f045dbd067b18f0ef5a204c703d68313b70b95ba988e1d26a26053bb9e67134d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkTransOffsetProof (u v w : Expr) (k₁ k₂ : Weight) (h₁ h₂ : Expr) : OrderM Expr := do
  let h ← match k₁.strict, k₂.strict with
    | false, false => mkOrdRingPrefix ``Grind.Order.le_trans_k
    | false, true  => mkOrdRingPrefix ``Grind.Order.le_lt_trans_k
    | true,  false => mkOrdRingPrefix ``Grind.Order.lt_le_trans_k
    | true,  true  => mkOrdRingPrefix ``Grind.Order.lt_trans_k
  let k  := k₁.k + k₂.k
  let h := mkApp6 h u v w (toExpr k₁.k) (toExpr k₂.k) (toExpr k)
  return mkApp3 h h₁ h₂ eagerReflBoolTrue

/--
Assume `p₁` is `{ w := u, k := k₁, proof := p₁ }` and `p₂` is `{ w := w, k := k₂, proof := p₂ }`
`p₁` is the proof for edge `u -(k₁)→ w` and `p₂` the proof for edge `w -(k₂)-> v`.
Then, this function returns a proof for edge `u -(k₁+k₂) -> v`.

Remark: for orders that support offsets.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac07915ce268e22268366fb3a895f376aa2244eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
