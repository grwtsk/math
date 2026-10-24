# topologyOfClosureOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:060454acb3dd9cbe2c64ab600c18d1d9b093d9d0bef01f67597b1ab7db6e3a8c",
  "kind": "def",
  "lexical_name": "topologyOfClosureOperator",
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
  "slug": "topologyofclosureoperator--3c1d78d873f4ffe6aad6629d",
  "source": {
    "blob": "3e747bc9800c1664f63d0a2d294931606f5e88bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 260,
    "path": "GRWTSK/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c1d78d873f4ffe6aad6629dd23c875c796015e8ff8e116a61ee77a96e12ca28",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:060454acb3dd9cbe2c64ab600c18d1d9b093d9d0bef01f67597b1ab7db6e3a8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topologyOfClosureOperator (c : ∀ X : C, ClosureOperator (Sieve X))
    (hc : ∀ ⦃X Y : C⦄ (f : Y ⟶ X) (S : Sieve X), c _ (S.pullback f) = (c _ S).pullback f) :
    GrothendieckTopology C where
  sieves X := { S | c X S = ⊤ }
  top_mem' X := top_unique ((c X).le_closure _)
  pullback_stable' X Y S f hS := by
    rw [Set.mem_setOf_eq] at hS
    rw [Set.mem_setOf_eq, hc, hS, Sieve.pullback_top]
  transitive' X S hS R hR := by
    rw [Set.mem_setOf_eq] at hS
    rw [Set.mem_setOf_eq, ← (c X).idempotent, eq_top_iff, ← hS]
    apply (c X).monotone fun Y f hf => _
    intros Y f hf
    rw [Sieve.mem_iff_pullback_eq_top, ← hc]
    apply hR hf

/--
The topology given by the closure operator `J.close` on a Grothendieck topology is the same as `J`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e747bc9800c1664f63d0a2d294931606f5e88bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
