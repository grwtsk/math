# ringCompute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b915971d4154cbcd2e1ac280ebc649784554569508424b8eec41b9e99f70ba69",
  "kind": "def",
  "lexical_name": "ringCompute",
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
  "slug": "ringcompute--7ee6c6c50928c39c6f5a7b7e",
  "source": {
    "blob": "0dd5953d2e8bcc041f12f7ff84281f2cc2c73b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 275,
    "path": "GRWTSK/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ee6c6c50928c39c6f5a7b7e804e3c52cbc3344ec1dbee7fe3a02840422f8a2b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b915971d4154cbcd2e1ac280ebc649784554569508424b8eec41b9e99f70ba69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ringCompute (cR : Algebra.Cache sR) (cA : Algebra.Cache sA) :
    Common.RingCompute (BaseType sAlg) sA where
  add := add sAlg cR.toCache
  mul := mul sAlg cR.toCache
  cast := cast sAlg cR
  neg := neg sAlg cR
  pow := pow sAlg cR.toCache
  inv := inv sAlg cR
  derive := derive sAlg cR cA
  isOne := isOne sAlg cR.toCache
  one :=
    let ⟨r, vr⟩ := Ring.ExProd.mkNat sR 1
    have hr : $r =Q (nat_lit 1).rawCast := ⟨⟩
    ⟨_, ⟨_, vr.toSum⟩, q(by simp +zetaDelta)⟩
  toRingCompare := ringCompare sAlg

end BaseType


open Lean Parser.Tactic Elab Command Elab.Tactic Meta Qq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dd5953d2e8bcc041f12f7ff84281f2cc2c73b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
