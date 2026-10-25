# Poly.denoteN_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21960225-522e-1f9a-cac1-3cdf7c6cd0a7",
  "kind": "theorem",
  "lexical_name": "Poly.denoteN_add",
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
  "slug": "poly-denoten-add--1b4aabe2bf66f80fb1b5963b",
  "source": {
    "blob": "5b4b1d163692971bbc6b0eb454763e06a0fc7c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b4aabe2bf66f80fb1b5963b55783e730a2ebdd8c90c5ab217777e8a8e01409b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21960225-522e-1f9a-cac1-3cdf7c6cd0a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.denoteN_add {α} [NatModule α] (ctx : Context α) (k : Int) (x : Var) (p : Poly)
    : k ≥ 0 → Poly.denoteN ctx (.add k x p) = k.toNat • x.denote ctx + p.denoteN ctx := by
  intro h; simp [denoteN, cond_eq_ite]; split
  next => omega
  next =>
    have : (k.natAbs : Int) = k.toNat := by
      rw [Int.toNat_of_nonneg h, Int.natAbs_of_nonneg h]
    rw [Int.ofNat_inj.mp this]

attribute [local simp] Poly.denoteN_nil Poly.denoteN_add
open AddCommMonoid AddCommGroup NatModule IntModule

-- Helper instance for `ac_rfl`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b4b1d163692971bbc6b0eb454763e06a0fc7c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
