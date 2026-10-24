# Subring.mem_closure_image_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28d19a38-661b-ec78-7609-b79d7fa92981",
  "kind": "lemma",
  "lexical_name": "Subring.mem_closure_image_of",
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
  "slug": "subring-mem-closure-image-of--0376f2a2f8271e486940e8b3",
  "source": {
    "blob": "e8468b041b4419287f77937e8b89c347f23bf87f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 285,
    "path": "GRWTSK/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0376f2a2f8271e486940e8b357b3b05e55eea827dd40eac6e16b3af685eb974b",
  "verification": {
    "reference": "docs/verification/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28d19a38-661b-ec78-7609-b79d7fa92981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Subring.mem_closure_image_of {S T : Type*} [CommRing S] [CommRing T] (g : S →+* T)
    (u : Set S) (x : S) (hx : x ∈ Subring.closure u) : g x ∈ Subring.closure (g '' u) := by
  rw [Subring.mem_closure] at hx ⊢
  intro T₁ h₁
  rw [← Subring.mem_comap]
  apply hx
  simp only [Subring.coe_comap, ← Set.image_subset_iff, SetLike.mem_coe]
  exact h₁

-- Porting note: move to better place
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8468b041b4419287f77937e8b89c347f23bf87f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
