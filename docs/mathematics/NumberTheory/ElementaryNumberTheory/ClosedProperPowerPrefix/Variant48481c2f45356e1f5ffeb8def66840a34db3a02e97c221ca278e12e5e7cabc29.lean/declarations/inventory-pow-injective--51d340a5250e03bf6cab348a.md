# inventory_pow_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1dc67ee6-f267-642a-165e-d18bc83d2506",
  "kind": "theorem",
  "lexical_name": "inventory_pow_injective",
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
  "slug": "inventory-pow-injective--51d340a5250e03bf6cab348a",
  "source": {
    "blob": "85750e0d66e8bb95a6b043fc8606483f5ec9ec6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 36,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51d340a5250e03bf6cab348aa3e805d7eb4b065161ef3f04c4b724cb9d60f44f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dc67ee6-f267-642a-165e-d18bc83d2506`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inventory_pow_injective (N : ℕ) :
    Set.InjOn (fun pk : ℕ × ℕ => pk.1 ^ pk.2) (properExponentInventory N) := by
  intro x hx y hy heq
  obtain ⟨hxProd, _⟩ := mem_filter.mp hx
  obtain ⟨hyProd, _⟩ := mem_filter.mp hy
  obtain ⟨hxP, hxK⟩ := mem_product.mp hxProd
  obtain ⟨hyP, hyK⟩ := mem_product.mp hyProd
  have hp := (mem_filter.mp hxP).2
  have hq := (mem_filter.mp hyP).2
  have hk := (mem_Icc.mp hxK).1
  have hl := (mem_Icc.mp hyK).1
  obtain ⟨h1,h2⟩ := hp.pow_inj' hq (by omega) (by omega) heq
  exact Prod.ext h1 h2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85750e0d66e8bb95a6b043fc8606483f5ec9ec6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
