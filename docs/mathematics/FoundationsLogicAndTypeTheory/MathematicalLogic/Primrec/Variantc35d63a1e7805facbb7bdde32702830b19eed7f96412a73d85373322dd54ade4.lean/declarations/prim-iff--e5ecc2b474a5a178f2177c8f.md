# prim_iff₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9327877-cea6-ca8f-b529-1b31e189cc0e",
  "kind": "theorem",
  "lexical_name": "prim_iff₂",
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
  "slug": "prim-iff--e5ecc2b474a5a178f2177c8f",
  "source": {
    "blob": "c7275e059c1a04bac0bb5740c99549f56fe36729",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1566,
    "line": 1560,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variantc35d63a1e7805facbb7bdde32702830b19eed7f96412a73d85373322dd54ade4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5ecc2b474a5a178f2177c8f6bcfce6e12ecb5fad6dc58d13dcc98c928a50a5f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variantc35d63a1e7805facbb7bdde32702830b19eed7f96412a73d85373322dd54ade4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9327877-cea6-ca8f-b529-1b31e189cc0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1560–1566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prim_iff₂ {f : ℕ → ℕ → ℕ} : (@Primrec' 2 fun v => f v.head v.tail.head) ↔ Primrec₂ f :=
  prim_iff.trans
    ⟨fun h => (h.comp <| Primrec.vector_cons.comp .fst <|
      Primrec.vector_cons.comp .snd (.const nil)).of_eq fun v => by simp,
    fun h => h.comp .vector_head (Primrec.vector_head.comp .vector_tail)⟩
#align nat.primrec'.prim_iff₂ Nat.Primrec'.prim_iff₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variantc35d63a1e7805facbb7bdde32702830b19eed7f96412a73d85373322dd54ade4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variantc35d63a1e7805facbb7bdde32702830b19eed7f96412a73d85373322dd54ade4.lean#L1560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7275e059c1a04bac0bb5740c99549f56fe36729` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
