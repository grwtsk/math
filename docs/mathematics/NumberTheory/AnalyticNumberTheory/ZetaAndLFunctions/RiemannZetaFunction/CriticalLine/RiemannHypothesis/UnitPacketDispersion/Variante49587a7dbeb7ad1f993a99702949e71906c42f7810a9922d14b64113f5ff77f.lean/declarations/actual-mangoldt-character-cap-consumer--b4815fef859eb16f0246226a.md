# actual_mangoldt_character_cap_consumer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c42c0a5b-3472-0000-caab-941de7dce2da",
  "kind": "theorem",
  "lexical_name": "actual_mangoldt_character_cap_consumer",
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
  "slug": "actual-mangoldt-character-cap-consumer--b4815fef859eb16f0246226a",
  "source": {
    "blob": "506e74dc6274c5a9402fffea8c305448e00a42fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UnitPacketDispersion/Variante49587a7dbeb7ad1f993a99702949e71906c42f7810a9922d14b64113f5ff77f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4815fef859eb16f0246226a600527f2f6389cbac66ad3cd66c61e8e36f09fd9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UnitPacketDispersion/Variante49587a7dbeb7ad1f993a99702949e71906c42f7810a9922d14b64113f5ff77f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c42c0a5b-3472-0000-caab-941de7dce2da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mangoldt_character_cap_consumer (q N : ℕ) [NeZero q] (w : ℕ → ℂ)
    {B : ℝ}
    (hcap : ∀ psi : AddChar (Additive (ZMod q)ˣ) ℂ, psi ≠ 0 →
      ‖coefficient (actualUnitPacket q N w) psi‖ ≤ B) (u : Additive (ZMod q)ˣ) :
    ‖actualUnitPacket q N w u - packetMean (actualUnitPacket q N w)‖ ≤
      ((Fintype.card (Additive (ZMod q)ˣ) - 1 : ℕ) : ℝ) * B :=
  supplied_character_cap_pays_cardinality _ hcap _

end
end GRWTSK.RiemannHypothesis.Conversation.UnitPacketDispersion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UnitPacketDispersion/Variante49587a7dbeb7ad1f993a99702949e71906c42f7810a9922d14b64113f5ff77f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UnitPacketDispersion/Variante49587a7dbeb7ad1f993a99702949e71906c42f7810a9922d14b64113f5ff77f.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `506e74dc6274c5a9402fffea8c305448e00a42fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
