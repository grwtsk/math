# Seq.denote_unionFuel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5927188343125e254bc49b051aa2c9885c70d0e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 424,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/750178f49de7c835b0cb95ad869985f37d32e8aa353428d3f6737edf15dff0f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b540f81-a108-004f-adbb-331ef382d862",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b84e2b4-830e-e5d8-878d-b4027f59ef58",
  "kind": "theorem",
  "lexical_name": "Seq.denote_unionFuel",
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
  "slug": "seq-denote-unionfuel--cf6b627e0476a0bbbd3b1ab5",
  "source": {
    "blob": "5927188343125e254bc49b051aa2c9885c70d0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 424,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant750178f49de7c835b0cb95ad869985f37d32e8aa353428d3f6737edf15dff0f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf6b627e0476a0bbbd3b1ab5d0ff8cfb1808a0ee412bdcc4d6d24706d536cbc4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant750178f49de7c835b0cb95ad869985f37d32e8aa353428d3f6737edf15dff0f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b84e2b4-830e-e5d8-878d-b4027f59ef58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Seq.denote_unionFuel {α} (ctx : Context α) {inst₁ : Std.Associative ctx.op} {inst₂ : Std.Commutative ctx.op} (fuel : Nat) (s₁ s₂ : Seq)
    : (s₁.unionFuel fuel s₂).denote ctx = ctx.op (s₁.denote ctx) (s₂.denote ctx) := by
  fun_induction unionFuel <;> simp
  next => simp [Std.Commutative.comm (self := inst₂)]
  next => simp [Std.Commutative.comm (self := inst₂)]
  next ih => simp [ih, Std.Associative.assoc (self := inst₁)]
  next x₁ s₁ x₂ s₂ h ih =>
    simp [ih]
    rw [← Std.Associative.assoc (self := inst₁), ← Std.Associative.assoc (self := inst₁), Std.Commutative.comm (self := inst₂) (x₂.denote ctx)]
    rw [Std.Associative.assoc (self := inst₁), Std.Associative.assoc (self := inst₁), Std.Associative.assoc (self := inst₁) (x₁.denote ctx)]
    apply congrArg (ctx.op (x₁.denote ctx))
    rw [← Std.Associative.assoc (self := inst₁), ← Std.Associative.assoc (self := inst₁) (s₁.denote ctx)]
    rw [Std.Commutative.comm (self := inst₂) (x₂.denote ctx)]

attribute [local simp] Seq.denote_unionFuel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant750178f49de7c835b0cb95ad869985f37d32e8aa353428d3f6737edf15dff0f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant750178f49de7c835b0cb95ad869985f37d32e8aa353428d3f6737edf15dff0f7.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5927188343125e254bc49b051aa2c9885c70d0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
